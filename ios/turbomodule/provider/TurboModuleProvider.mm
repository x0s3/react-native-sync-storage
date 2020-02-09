/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "TurboModuleProvider.h"

#import <React/CoreModulesPlugins.h>
#import "SyncStorage.h"

// NOTE: This entire file should be codegen'ed.

namespace facebook {
namespace react {

Class TurboModuleClassProvider(const char *name) {
  return RCTCoreModulesClassProvider(name);
}

std::shared_ptr<TurboModule> TurboModuleProvider(const std::string &name,
                                                         id<RCTTurboModule> instance,
                                                        std::shared_ptr<JSCallInvoker> jsInvoker) {
  if (name == "SyncStorage") {
    return std::make_shared<NativeSyncStorageSpecJSI>(instance, jsInvoker);
  }
  return nullptr;
}

} // namespace react
} // namespace facebook
