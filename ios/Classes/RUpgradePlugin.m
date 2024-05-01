#import "RUpgradePlugin.h"
#if __has_include(<r_upgrade/r_upgrade-Swift.h>)
#import <r_upgrade/r_upgrade-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "r_upgrade-Swift.h"
#endif

@implementation RUpgradePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRUpgradePlugin registerWithRegistrar:registrar];
}
@end
