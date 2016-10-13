// RUN: rm -rf %t
// RUN: %clang_cc1 -fmodules-cache-path=%t -fmodules -fimplicit-module-maps -I %S/Inputs/objc-initializer %s -emit-llvm -o - -fobjc-arc | FileCheck %s
// CHECK: kSimDeviceIOGetInterface = internal constant {{.*}} bitcast

#import <X.h>
void test2(const NSString*);
void test() {
  test2(kSimDeviceIOGetInterface);
}
