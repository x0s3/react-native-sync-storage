
/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

// NOTE: This entire file should be codegen'ed.

#import <vector>

#import <Foundation/Foundation.h>

#import <React/RCTBridgeModule.h>

#import <ReactCommon/RCTTurboModule.h>
#import <RCTRequired/RCTRequired.h>
#import <RCTTypeSafety/RCTTypedModuleConstants.h>
#import <React/RCTCxxConvert.h>
#import <React/RCTManagedPointer.h>
#import <RCTTypeSafety/RCTConvertHelpers.h>






@protocol NativeSyncStorageSpec <RCTTurboModule>
- (NSDictionary *) setItem:(NSString *)key
   value:(NSString *)value;
- (NSDictionary *) getItem:(NSString *)item;
- (NSNumber *) deleteItem:(NSString *)key;
@end


namespace facebook {
namespace react {

class JSI_EXPORT NativeSyncStorageSpecJSI : public ObjCTurboModule {
public:
  NativeSyncStorageSpecJSI(id<RCTTurboModule> instance, std::shared_ptr<JSCallInvoker> jsInvoker);
};

} // namespace react
} // namespace facebook
