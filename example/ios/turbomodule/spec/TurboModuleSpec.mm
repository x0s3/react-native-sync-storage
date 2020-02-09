
/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#include "TurboModuleSpec.h"


namespace facebook {
namespace react {

static facebook::jsi::Value __hostFunction_NativeSyncStorageSpecJSI_setItem(facebook::jsi::Runtime& rt, TurboModule &turboModule, const facebook::jsi::Value* args, size_t count) {
  return static_cast<ObjCTurboModule &>(turboModule)
         .invokeObjCMethod(rt, ObjectKind, "setItem", @selector(setItem:value:), args, count);
}
static facebook::jsi::Value __hostFunction_NativeSyncStorageSpecJSI_getItem(facebook::jsi::Runtime& rt, TurboModule &turboModule, const facebook::jsi::Value* args, size_t count) {
  return static_cast<ObjCTurboModule &>(turboModule)
         .invokeObjCMethod(rt, ObjectKind, "getItem", @selector(getItem:), args, count);
}
static facebook::jsi::Value __hostFunction_NativeSyncStorageSpecJSI_deleteItem(facebook::jsi::Runtime& rt, TurboModule &turboModule, const facebook::jsi::Value* args, size_t count) {
  return static_cast<ObjCTurboModule &>(turboModule)
         .invokeObjCMethod(rt, BooleanKind, "deleteItem", @selector(deleteItem:), args, count);
}

NativeSyncStorageSpecJSI::NativeSyncStorageSpecJSI(id<RCTTurboModule> instance, std::shared_ptr<JSCallInvoker> jsInvoker)
  : ObjCTurboModule("SyncStorage", instance, jsInvoker) {
  methodMap_["setItem"] = MethodMetadata {2, __hostFunction_NativeSyncStorageSpecJSI_setItem};
  methodMap_["getItem"] = MethodMetadata {1, __hostFunction_NativeSyncStorageSpecJSI_getItem};
  methodMap_["deleteItem"] = MethodMetadata {1, __hostFunction_NativeSyncStorageSpecJSI_deleteItem};
}


} // namespace react
} // namespace facebook
