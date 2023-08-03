//
// Created by Jakub Hazik on 4/18/18.
//

#include <gtest/gtest.h>
#include "phoxi_camera/PhoXiInterface.h"
#include "phoxi_camera/PhoXiException.h"
#include "PhoXi.h"

#include <iostream>
#include <unistd.h>
#include <string>
#include <vector>

using namespace std;
phoxi_camera::PhoXiInterface phoxi_interface;
long sleepPhoXiFactory = 1500000;
const string camera_ID = "InstalledExamples-basic-example";

class PhoXiInterfaceTest : public testing::Test {
public:
    static void SetUpTestCase(){
        //test constructor only once
        //ASSERT_NO_THROW(PhoXiInterface());
    }

    virtual void SetUp() {
        usleep(sleepPhoXiFactory);
        phoxi_interface.connectCamera(camera_ID);
        usleep(sleepPhoXiFactory);
    }

    virtual void TearDown() {
    }
};

class PhoXiInterfaceTestConnection : public testing::Test {
public:
    //PhoXiInterface phoxi_interface;

    static void SetUpTestCase(){
        //test constructor
        //ASSERT_NO_THROW(PhoXiInterface());
    }

    virtual void TearDown() {
        usleep(sleepPhoXiFactory);
        phoxi_interface.disconnectCamera();
        usleep(sleepPhoXiFactory);
    }
};

TEST_F (PhoXiInterfaceTestConnection, connect) {
    //PhoXiInterface phoxi_interface = PhoXiInterface();

    string incorrect_camera_ID = "000000";

    // try to connect to unreachable scanner
    ASSERT_THROW(phoxi_interface.connectCamera(incorrect_camera_ID), phoxi_camera::PhoXiScannerNotFound);
    ASSERT_FALSE(phoxi_interface.isConnected());
    EXPECT_THROW(phoxi_interface.isOk(), phoxi_camera::PhoXiScannerNotConnected);

    //  try to connect to reachable scanner
    ASSERT_NO_THROW(phoxi_interface.connectCamera(camera_ID));
    ASSERT_TRUE(phoxi_interface.isConnected());
    ASSERT_NO_THROW(phoxi_interface.isOk());

    // try connect to camera when I am already connected
    ASSERT_NO_THROW(phoxi_interface.connectCamera(camera_ID));
    ASSERT_TRUE(phoxi_interface.isConnected());
    ASSERT_NO_THROW(phoxi_interface.isOk());

    // I am connected to scanner, now try to connect to unreachable scanner
    ASSERT_THROW(phoxi_interface.connectCamera(incorrect_camera_ID), phoxi_camera::PhoXiScannerNotFound);
    ASSERT_TRUE(phoxi_interface.isConnected());     // I am still connected to previous scanner
    ASSERT_NO_THROW(phoxi_interface.isOk());

    //TODO exception PhoXiControNotRunning
}

TEST_F (PhoXiInterfaceTestConnection, connectWithAcquisition) {
    //PhoXiInterface phoxi_interface = PhoXiInterface();

    //  connect to scanner and start acquisition
    ASSERT_NO_THROW(phoxi_interface.connectCamera(camera_ID, pho::api::PhoXiTriggerMode::Software, true));
    ASSERT_TRUE(phoxi_interface.isAcquiring());
    ASSERT_TRUE(phoxi_interface.isConnected());
    ASSERT_NO_THROW(phoxi_interface.isOk());
    phoxi_interface.disconnectCamera();

    //phoxi_interface = PhoXiInterface();
    // connect to scanner without acquisition
    ASSERT_NO_THROW(phoxi_interface.connectCamera(camera_ID, pho::api::PhoXiTriggerMode::Software, false));
    ASSERT_FALSE(phoxi_interface.isAcquiring());
    ASSERT_TRUE(phoxi_interface.isConnected());
    ASSERT_NO_THROW(phoxi_interface.isOk());
    phoxi_interface.disconnectCamera();
}

TEST_F (PhoXiInterfaceTestConnection, disconnect) {
    //PhoXiInterface phoxi_interface = PhoXiInterface();

    // connect and disconnect camera
    phoxi_interface.connectCamera(camera_ID);
    ASSERT_NO_THROW(phoxi_interface.isOk());
    ASSERT_NO_THROW(phoxi_interface.disconnectCamera());
    ASSERT_THROW(phoxi_interface.isOk(), phoxi_camera::PhoXiScannerNotConnected);

    // try disconnect camera when I am disconnected
    ASSERT_NO_THROW(phoxi_interface.disconnectCamera());
    ASSERT_THROW(phoxi_interface.isOk(), phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, isOK) {

    // I am connected
    ASSERT_NO_THROW(phoxi_interface.isOk());

    phoxi_interface.disconnectCamera();

    ASSERT_THROW(phoxi_interface.isOk(), phoxi_camera::PhoXiScannerNotConnected);

    // TODO call isOK when PhoXi is off
}

TEST_F (PhoXiInterfaceTest, isAcquiring) {
    // is acquiring
    phoxi_interface.startAcquisition();
    ASSERT_TRUE(phoxi_interface.isAcquiring());

    // is not acquiring
    phoxi_interface.stopAcquisition();
    ASSERT_FALSE(phoxi_interface.isAcquiring());

    // after disconnect
    phoxi_interface.startAcquisition();
    phoxi_interface.disconnectCamera();
    ASSERT_FALSE(phoxi_interface.isAcquiring());
}

TEST_F (PhoXiInterfaceTest, start_stopAcquisition) {
    ASSERT_NO_THROW(phoxi_interface.startAcquisition());
    ASSERT_TRUE(phoxi_interface.isAcquiring());

    ASSERT_NO_THROW(phoxi_interface.stopAcquisition());
    ASSERT_FALSE(phoxi_interface.isAcquiring());

    ASSERT_NO_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Software,false));
    ASSERT_FALSE(phoxi_interface.isAcquiring());

    ASSERT_NO_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Software,true));
    ASSERT_TRUE(phoxi_interface.isAcquiring());

    // triggerImage set Software trigger and start acquisition
    EXPECT_GE(phoxi_interface.triggerImage(),0);
    ASSERT_TRUE(phoxi_interface.isAcquiring());

    // after disconnect
    phoxi_interface.disconnectCamera();
    ASSERT_THROW(phoxi_interface.startAcquisition(), phoxi_camera::PhoXiScannerNotConnected);
    ASSERT_THROW(phoxi_interface.stopAcquisition(), phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, setTriggerMode) {

    // freerun
    phoxi_interface.startAcquisition();
    ASSERT_NO_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Freerun,false));
    EXPECT_FALSE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::Freerun);

    // software
    phoxi_interface.startAcquisition();
    ASSERT_NO_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Software,false));
    EXPECT_FALSE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::Software);

    // hardware
    phoxi_interface.startAcquisition();
    ASSERT_NO_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Hardware,false));
    EXPECT_FALSE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::Hardware);


    // no value
    phoxi_interface.startAcquisition();
    ASSERT_NO_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::NoValue,false));
    EXPECT_FALSE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::NoValue);

    // freerun
    phoxi_interface.stopAcquisition();
    ASSERT_NO_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Freerun,true));
    EXPECT_TRUE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::Freerun);

    // software
    phoxi_interface.stopAcquisition();
    ASSERT_NO_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Software,true));
    EXPECT_TRUE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::Software);


    // hardware
    phoxi_interface.stopAcquisition();
    ASSERT_NO_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Hardware,true));
    EXPECT_TRUE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::Hardware);

    // no value
    phoxi_interface.stopAcquisition();
    ASSERT_NO_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::NoValue,true));
    EXPECT_TRUE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::NoValue);

    // incorrect parameters
    phoxi_interface.stopAcquisition();
    ASSERT_THROW(phoxi_interface.setTriggerMode(-1,true),phoxi_camera::InvalidTriggerMode);
    EXPECT_FALSE(phoxi_interface.isAcquiring());

    // try it without connection to camera
    phoxi_interface.disconnectCamera();
    ASSERT_THROW(phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Software), phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, setResolution) {

    ASSERT_NO_THROW(phoxi_interface.setHighResolution());
    pho::api::PFrame f = phoxi_interface.getPFrame(-1);
    ASSERT_EQ(f->GetResolution().Width,2064);
    ASSERT_EQ(f->GetResolution().Height,1544);

    ASSERT_NO_THROW(phoxi_interface.setLowResolution());
    f = phoxi_interface.getPFrame(-1);
    ASSERT_EQ(f->GetResolution().Width,1032);
    ASSERT_EQ(f->GetResolution().Height,772);

    // try it without connection to camera
    phoxi_interface.disconnectCamera();
    ASSERT_THROW(phoxi_interface.setLowResolution(), phoxi_camera::PhoXiScannerNotConnected);
    ASSERT_THROW(phoxi_interface.setHighResolution(), phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, triggerImage) {
    int imageCount;
    usleep(1000*1000*1);    // wait while phoxi trig first scan after connection

    // freerun
    phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Freerun,false);
    imageCount = phoxi_interface.triggerImage();
    EXPECT_TRUE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::Software);
    ASSERT_GE(imageCount, 0);

    // software
    phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Software,false);
    imageCount = phoxi_interface.triggerImage();
    EXPECT_TRUE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::Software);
    ASSERT_GE(imageCount, 0);

    // hardware
    phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::Hardware,false);
    imageCount = phoxi_interface.triggerImage();
    EXPECT_TRUE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::Software);
    ASSERT_GE(imageCount, 0);

    // no value
    phoxi_interface.setTriggerMode(pho::api::PhoXiTriggerMode::NoValue,false);
    imageCount = phoxi_interface.triggerImage();
    EXPECT_TRUE(phoxi_interface.isAcquiring());
    ASSERT_EQ(phoxi_interface.getTriggerMode(),pho::api::PhoXiTriggerMode::Software);
    ASSERT_GE(imageCount, 0);

    // try it without connection to camera
    phoxi_interface.disconnectCamera();
    ASSERT_THROW(phoxi_interface.triggerImage(), phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, getHardwareIdentification) {
    // function returns camera ID
    ASSERT_EQ(camera_ID, phoxi_interface.getHardwareIdentification());

    // try it without connection to camera
    phoxi_interface.disconnectCamera();
    ASSERT_THROW(phoxi_interface.getHardwareIdentification(), phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, setTransformation) {
    // set transformation
    pho::api::PhoXiCoordinateTransformation transformation;
    transformation.Translation.x = 1;
    transformation.Translation.y = -5;
    transformation.Translation.z = 7;

    transformation.Rotation[0][0] = 1;
    transformation.Rotation[0][1] = 2;
    transformation.Rotation[0][2] = 4;

    transformation.Rotation[1][0] = -5;
    transformation.Rotation[1][1] = -1;
    transformation.Rotation[1][2] = 0;
    transformation.Rotation[1][2] = 0;

    transformation.Rotation[2][0] = 1;
    transformation.Rotation[2][1] = 1;
    transformation.Rotation[2][2] = 0;

    // CustomSpace
    ASSERT_NO_THROW(phoxi_interface.setTransformation(transformation,
                                                      pho::api::PhoXiCoordinateSpace::CustomSpace,
                                                      true, false));
    ASSERT_NO_THROW(phoxi_interface.triggerImage());

    // RobotSpace
    ASSERT_NO_THROW(phoxi_interface.setTransformation(transformation,
                                                      pho::api::PhoXiCoordinateSpace::RobotSpace,
                                                      true, false));
    ASSERT_NO_THROW(phoxi_interface.triggerImage());


    // MarkerSpace
    EXPECT_THROW(phoxi_interface.setTransformation(transformation,
                                                   pho::api::PhoXiCoordinateSpace::MarkerSpace,
                                                   true, false), phoxi_camera::CoordinateSpaceNotSupported);
    ASSERT_NO_THROW(phoxi_interface.triggerImage());

    // try it without connected camera
    phoxi_interface.disconnectCamera();
    ASSERT_THROW(phoxi_interface.setTransformation(transformation,
                                                   pho::api::PhoXiCoordinateSpace::CustomSpace,
                                                   true, false), phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, setCoordinateSpace) {
    // try to set some space and next trig
    EXPECT_NO_THROW(phoxi_interface.setCoordinateSpace(pho::api::PhoXiCoordinateSpace::CameraSpace));
    ASSERT_EQ(phoxi_interface.getCoordinateSpace(),pho::api::PhoXiCoordinateSpace::CameraSpace);
    ASSERT_GE(phoxi_interface.triggerImage(), 0);

    EXPECT_NO_THROW(phoxi_interface.setCoordinateSpace(pho::api::PhoXiCoordinateSpace::CustomSpace));
    ASSERT_EQ(phoxi_interface.getCoordinateSpace(),pho::api::PhoXiCoordinateSpace::CustomSpace);
    ASSERT_GE(phoxi_interface.triggerImage(), 0);

    EXPECT_NO_THROW(phoxi_interface.setCoordinateSpace(pho::api::PhoXiCoordinateSpace::MarkerSpace));
    ASSERT_EQ(phoxi_interface.getCoordinateSpace(),pho::api::PhoXiCoordinateSpace::MarkerSpace);
    ASSERT_GE(phoxi_interface.triggerImage(), 0);

    EXPECT_NO_THROW(phoxi_interface.setCoordinateSpace(pho::api::PhoXiCoordinateSpace::NoValue));
    ASSERT_EQ(phoxi_interface.getCoordinateSpace(),pho::api::PhoXiCoordinateSpace::NoValue);
    ASSERT_GE(phoxi_interface.triggerImage(),  0);

    EXPECT_NO_THROW(phoxi_interface.setCoordinateSpace(pho::api::PhoXiCoordinateSpace::RobotSpace));
    ASSERT_EQ(phoxi_interface.getCoordinateSpace(),pho::api::PhoXiCoordinateSpace::RobotSpace);
    ASSERT_GE(phoxi_interface.triggerImage(), 0);

    // try it without connection to camera
    phoxi_interface.disconnectCamera();
    ASSERT_THROW(phoxi_interface.setCoordinateSpace(pho::api::PhoXiCoordinateSpace::RobotSpace),
                 phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, getPFrame) {
    int bad_frameID = 1123;
    pho::api::PFrame frame;

    // trigger image and get PFrame
    int frameID = phoxi_interface.triggerImage();
    ASSERT_NE(nullptr, phoxi_interface.getPFrame(frameID));

    // get PFrame with triggerImage, triggerImage is called inside getPFrame when parameter is -1
    ASSERT_NE(nullptr, phoxi_interface.getPFrame(-1));

    // try getPFrame with bad ID, it have to return nullptr
    ASSERT_EQ(nullptr, phoxi_interface.getPFrame(bad_frameID));

    // try it without connection to camera
    phoxi_interface.disconnectCamera();
    ASSERT_THROW(phoxi_interface.getPFrame(-1), phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, getPointCloudFromFrame) {
    ASSERT_THROW(phoxi_interface.getPointCloudFromFrame(nullptr), phoxi_camera::CorruptedFrame);

    pho::api::PFrame frame;
    frame = phoxi_interface.getPFrame(-1);
    ASSERT_NE(nullptr, phoxi_interface.getPointCloudFromFrame(frame));

    // try it without connection to camera
    frame = phoxi_interface.getPFrame(-1);
    phoxi_interface.disconnectCamera();
    // getPointCloudFromFrame only translate variable, it not need connection
    ASSERT_NE(nullptr, phoxi_interface.getPointCloudFromFrame(frame));
}

TEST_F (PhoXiInterfaceTest, getPointCloud) {
    ASSERT_NO_THROW(phoxi_interface.getPointCloud());

    // try it without connection to camera
    phoxi_interface.disconnectCamera();
    ASSERT_THROW(phoxi_interface.getPointCloud(), phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, getSupportedCapturingModes) {
    vector<pho::api::PhoXiCapturingMode> modes;
    modes = phoxi_interface.getSupportedCapturingModes();

    for(auto mode: modes){
        ASSERT_NE(0, mode.Resolution.Width);
        ASSERT_NE(0, mode.Resolution.Height);
    }

    // try it without connection to camera
    phoxi_interface.disconnectCamera();
    ASSERT_THROW(phoxi_interface.getSupportedCapturingModes(), phoxi_camera::PhoXiScannerNotConnected);
}

TEST_F (PhoXiInterfaceTest, cameraList) {
    // try it when I am connected to a camera
    ASSERT_NO_THROW(phoxi_interface.cameraList());

    cout << "Achievable cameras, you can check them, it must be equal to reality:"<<endl;
    for (auto camera : phoxi_interface.cameraList()) {
        cout << camera << ", ";
    }
    cout<<endl;


    // try it without connection to camera
    phoxi_interface.disconnectCamera();
    ASSERT_NO_THROW(phoxi_interface.cameraList());

    cout << "Achievable cameras, you can check them, it must be equal to reality:"<<endl;
    for (auto camera : phoxi_interface.cameraList()) {
        cout << camera << ", ";
    }
}

//// Run all the tests that were declared with TEST()
int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
