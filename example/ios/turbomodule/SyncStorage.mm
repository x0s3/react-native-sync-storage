//
//  SyncStorage.cpp
//  TurboModulePlayground
//
//  Created by Watcharachai Kanjaikaew on 22/12/2562 BE.
//  Copyright © 2562 Facebook. All rights reserved.
//

#import "SyncStorage.h"

#import <UIKit/UIKit.h>

using namespace facebook::react;

@implementation SyncStorage

- (std::shared_ptr<TurboModule>)getTurboModuleWithJsInvoker:
(std::shared_ptr<JSCallInvoker>)jsInvoker
{
  return std::make_shared<NativeSyncStorageSpecJSI>(self, jsInvoker);
}

RCT_EXPORT_SYNCHRONOUS_TYPED_METHOD(NSDictionary *,
                                    setItem:(NSString *)key
                                    value:(NSString *)value)
{
  return @{
      @"key": key,
      @"value":value
  };
}

RCT_EXPORT_SYNCHRONOUS_TYPED_METHOD(NSNumber *, deleteItem:(NSString *) key) {
  return [NSNumber numberWithInt:1];
}

RCT_EXPORT_SYNCHRONOUS_TYPED_METHOD(NSDictionary *, getItem: (NSString *) item) {
  UIDevice *device = [UIDevice currentDevice];
  NSUUID *uuid = [device identifierForVendor];
  NSString *name = device.name;
  NSString *systemName = device.systemName;
  NSString *model = device.model;
  NSString *uuidString = uuid.UUIDString;
  
  return @{
    @"name": name,
    @"systemName": systemName,
    @"model": model,
    @"uuid": uuidString ?: [NSNull null],
  };  
}

@end
