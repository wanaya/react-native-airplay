# react-native-airplay
AirPlay library for iOS


A library for Airplay

##Installation
npm i react-native-airplay --save

#### Only iOS

  - Open your Xcode project
  - In `Libraries` choose `Add files...` and add the files `AirPlay.swift, AirPlayBridge.m, AirPlayButtonBridge.m` from the `node_modules/react-native-airplay` folder. Be sure that the option `copy if needed` is unchecked.
  - If Xcode ask you for include the 'Bridging-Herder.h', accept it
  - Include in the `Bridging-Herder.h` the next lines: 
  ```
  #import "RCTBridgeModule.h"
  #import "RCTEventDispatcher.h"
  #import "RCTView.h"
  #import "RCTViewManager.h"
  ```
  
  - Rebuild your project and done!
  
  
  Clone the Example if you need how to include in js.

## Author

wanaya, memoanaya@gmail.com

## License

gbox-video-player is available under the MIT license. See the LICENSE file for more info.
  
  
