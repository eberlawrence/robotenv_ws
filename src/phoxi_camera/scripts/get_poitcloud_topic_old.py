#! /usr/bin/env python
import rospy
import numpy as np
import sensor_msgs.msg
import sensor_msgs.point_cloud2 as pc2
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from sklearn.cluster import DBSCAN
import cv2 as cv


def getOrientation(point_cloud):
    part_orientation = []
    for pc in point_cloud:
        points = np.float32(pc)
        mean, eivec, eival = cv.PCACompute2(points, mean=None)

        points = pc.reshape(len(pc), 3).astype('float64')
        mean, eivec, eival = cv.PCACompute2(points, np.array([]))

        cntr = (mean[0, 0], mean[0, 1], mean[0, 2])
        p1 = np.array([cntr[0] + 0.1 * eivec[0, 0] * eival[0],
                    cntr[1] + 0.1 * eivec[0, 1] * eival[0],
                    cntr[2] + 0.1 * eivec[0, 2] * eival[0]])
        p2 = np.array([cntr[0] - 0.1 * eivec[1, 0] * eival[1],
                    cntr[1] - 0.1 * eivec[1, 1] * eival[1],
                    cntr[2] - 0.1 * eivec[1, 2] * eival[1]])

        # print("Mean: ", mean, "\nCntr: ", cntr,"\nEivec: ", eivec, "\nEival: ", eival)
        # print("Mean: ", mean, "\nP1: ", p1,"\nP2: ", p2)

        t1 = 600
        t2 = 6000
        cp1 = [cntr[0] + t1 * (p1[0][0] - cntr[0]), cntr[1] + t1 * (p1[1][0] - cntr[1]), cntr[2] + t1 * (p1[2][0] - cntr[2])]
        cp2 = [cntr[0] + t2 * (p2[0][0] - cntr[0]), cntr[1] + t2 * (p2[1][0] - cntr[1]), cntr[2] + t2 * (p2[2][0] - cntr[2])]
        part_orientation.append([cntr, cp1, cp2])
    part_orientation_array = np.array(part_orientation)
    return part_orientation_array

def callback(data):
    # Accessing the point cloud data
    points = pc2.read_points(data, field_names=("x", "y", "z"), skip_nans=True)
    points_array = np.array(list(points))
    if len(points_array) > 0:



        angle = np.radians(-15.45)
        rotation_matrix = np.array([[np.cos(angle), 0, np.sin(angle)],
                                    [0, 1, 0],
                                    [-np.sin(angle), 0, np.cos(angle)]])
        points_array = np.dot(points_array, rotation_matrix.T)

        # x = points_array[:, 0]
        # y = points_array[:, 1]
        # z = points_array[:, 2]
        # fig = plt.figure()
        # ax = fig.add_subplot(111, projection='3d')
        # ax.scatter(x, y, z, s=0.1)
        # ax.set_xlabel('X')
        # ax.set_ylabel('Y')
        # ax.set_zlabel('Z')
        # ax.set_title('Point Cloud Visualization')
        # plt.show()

        x_threshold_min = -0.25
        x_threshold_max = 0.05

        z_threshold_min = 0
        z_threshold_max = 0.507

        x_values = points_array[:,0]
        z_values = points_array[:,2]

        x_mask = np.logical_and(x_values > x_threshold_min, x_values < x_threshold_max)
        z_mask = np.logical_and(z_values > z_threshold_min, z_values < z_threshold_max)

        mask = np.logical_and(z_mask, x_mask)
        new_points = points_array[mask]
        if len(new_points) > 0:
            eps = 0.01  # Distance threshold for neighboring points
            min_samples = 100  # Minimum number of points in a cluster

            # Perform DBSCAN clustering
            dbscan = DBSCAN(eps=eps, min_samples=min_samples)
            labels = dbscan.fit_predict(new_points)

            # Get unique labels assigned to each point
            unique_labels = np.unique(labels)

            # Segment the point cloud based on the unique labels
            segmented_point_cloud = []
            for label in unique_labels:
                segment = new_points[labels == label]
                segmented_point_cloud.append(segment)

            # Convert the segmented point clouds to NumPy arrays
            segmented_point_cloud = np.array([np.asarray(segment) for segment in segmented_point_cloud])
            # print(segmented_point_cloud)
            print(segmented_point_cloud[0].shape)
            np.savetxt("/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/extra_files/pc2.csv", new_points, delimiter=",")

            pc_array = getOrientation(segmented_point_cloud)
            print(pc_array.shape)
            print(pc_array)

            x = new_points[:, 0]
            y = new_points[:, 1]
            z = new_points[:, 2]
            fig = plt.figure()
            ax = fig.add_subplot(111, projection='3d')
            # ax.scatter(x, y, z, s=0.1)
            ax.scatter(0,0,0,s=5,c="green")
            ax.scatter(0,0,z.mean(),s=5,c="red")
            for i, pc in enumerate(segmented_point_cloud):
                ax.scatter(pc[:, 0],pc[:, 1],pc[:, 2],s=0.01,c="red",alpha=0.5)
                ax.scatter(pc_array[i][0][0], pc_array[i][0][1], pc_array[i][0][2],s=20,c="red")
                ax.scatter(pc_array[i][1][0], pc_array[i][1][1], pc_array[i][1][2],s=20,c="blue")
                ax.scatter(pc_array[i][2][0], pc_array[i][2][1], pc_array[i][2][2],s=20,c="green")
                ax.plot([pc_array[i][0][0], pc_array[i][1][0]], [pc_array[i][0][1], pc_array[i][1][1]], [pc_array[i][0][2], pc_array[i][1][2]], color='blue')
                ax.plot([pc_array[i][0][0], pc_array[i][2][0]], [pc_array[i][0][1], pc_array[i][2][1]], [pc_array[i][0][2], pc_array[i][2][2]], color='green')

            ax.set_xlabel('X')
            ax.set_ylabel('Y')
            ax.set_zlabel('Z')
            ax.set_title('Point Cloud Visualization')
            plt.show()



rospy.init_node('pointcloud_topic_subscriber')  # Initialize the ROS node

# Create a subscriber object
rospy.Subscriber("/phoxi_camera/pointcloud", sensor_msgs.msg.PointCloud2, callback)

rospy.spin() 