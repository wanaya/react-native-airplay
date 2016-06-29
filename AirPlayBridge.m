//
//  AirPlayBridge.m
//  hybridlockerapp
//
//  Created by Guillermo Anaya on 6/14/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "RCTBridgeModule.h"
#import "RCTEventDispatcher.h"
#import "RCTViewManager.h"



@interface RCT_EXTERN_MODULE(AirPlay, NSObject)

RCT_EXTERN_METHOD(startScan)
RCT_EXTERN_METHOD(isAlredyConnected:(RCTResponseSenderBlock)callback)

@end