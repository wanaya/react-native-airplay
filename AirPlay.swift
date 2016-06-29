//
//  AirPlay.swift
//  hybridlockerapp
//
//  Created by Guillermo Anaya on 6/14/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

import Foundation
import MediaPlayer



@objc(AirPlay)
class AirPlay: NSObject {
  
  var bridge: RCTBridge!
  
  @objc func startScan() -> Void {
    print("init airplay");
    //self.bridge.eventDispatcher().sendDeviceEventWithName("AirPlayChanged", body: ["value": true])
    NSNotificationCenter.defaultCenter().addObserver(
      self,
      selector: #selector(AirPlay.airplayChanged(_:)),
      name: AVAudioSessionRouteChangeNotification,
      object: AVAudioSession.sharedInstance())
  }
  
  func airplayChanged(sender: NSNotification) {
    let currentRoute = AVAudioSession.sharedInstance().currentRoute
    var isAirPlayPlaying = false
    for output in currentRoute.outputs {
      if output.portType == AVAudioSessionPortAirPlay {
        print("Airplay Device connected with name: \(output.portName)")
        isAirPlayPlaying = true
        break;
      }
    }
    
    self.bridge.eventDispatcher().sendDeviceEventWithName("airplayConnected", body: ["connected": isAirPlayPlaying])
  }
  
  @objc func isAlredyConnected(callback: RCTResponseSenderBlock) -> Void {
    let currentRoute = AVAudioSession.sharedInstance().currentRoute
    for output in currentRoute.outputs {
      if output.portType == AVAudioSessionPortAirPlay {
        print("Airplay Device connected with name: \(output.portName)")
        callback([true])
        //return true
      }
    }
    callback([false])
    //return false
  }
}

@objc(AirPlayButton)
class AirPlayButton: RCTViewManager {
  override func view() -> UIView! {
    let wrapperView = UIView(frame: CGRectMake(0, 0, 40, 40))
    wrapperView.backgroundColor = UIColor.redColor()
    wrapperView.translatesAutoresizingMaskIntoConstraints = false
    
    let volumneView = MPVolumeView(frame: wrapperView.bounds)
    volumneView.showsVolumeSlider = false
    wrapperView.addSubview(volumneView)
    
    volumneView.sizeToFit()
    
    return wrapperView
  }
}
