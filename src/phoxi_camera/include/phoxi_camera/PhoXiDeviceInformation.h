//
// Created by controller on 2/12/19.
//

#ifndef PROJECT_PHOXIDEVICEINFORMATION_H
#define PROJECT_PHOXIDEVICEINFORMATION_H

#include <string>
#include <PhoXi.h>

namespace phoxi_camera {
    class PhoXiInterface;

    class PhoXiDeviceInformation {
    public:
        friend PhoXiInterface;
        enum PhoXiConnectionStatus {
            Unknown = 0,
            Ready = 1,
            Occupied = 2,
            Starting = 3
        };
        enum PhoXiDeviceType {
#if PHOXI_SCANNER_ON
            PhoXiScanner,
#endif
#if PHOXI_CAMERA_ON
            PhoXiCamera,
#endif
            NoValue
        };

        operator std::string() const {
            return hwIdentification;
        }

        bool operator==(const PhoXiDeviceInformation& other) {
            return hwIdentification == other.hwIdentification;
        }

        bool operator==(const std::string& hwIdentification) {
            return this->hwIdentification == hwIdentification;
        }

        std::string name;
        PhoXiDeviceType type;
        std::string hwIdentification;
        std::string IPaddress;
        PhoXiConnectionStatus status;
        std::string firmwareVersion;
    };
}

#endif //PROJECT_PHOXIDEVICEINFORMATION_H
