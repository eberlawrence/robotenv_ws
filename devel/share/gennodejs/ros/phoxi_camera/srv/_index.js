
"use strict";

let GetDeviceList = require('./GetDeviceList.js')
let GetString = require('./GetString.js')
let GetBool = require('./GetBool.js')
let GetSupportedCapturingModes = require('./GetSupportedCapturingModes.js')
let GetFrame = require('./GetFrame.js')
let TriggerImage = require('./TriggerImage.js')
let ConnectCamera = require('./ConnectCamera.js')
let SaveLastFrame = require('./SaveLastFrame.js')
let SetCoordinatesSpace = require('./SetCoordinatesSpace.js')
let SaveFrame = require('./SaveFrame.js')
let GetHardwareIdentification = require('./GetHardwareIdentification.js')
let SetTransformationMatrix = require('./SetTransformationMatrix.js')

module.exports = {
  GetDeviceList: GetDeviceList,
  GetString: GetString,
  GetBool: GetBool,
  GetSupportedCapturingModes: GetSupportedCapturingModes,
  GetFrame: GetFrame,
  TriggerImage: TriggerImage,
  ConnectCamera: ConnectCamera,
  SaveLastFrame: SaveLastFrame,
  SetCoordinatesSpace: SetCoordinatesSpace,
  SaveFrame: SaveFrame,
  GetHardwareIdentification: GetHardwareIdentification,
  SetTransformationMatrix: SetTransformationMatrix,
};
