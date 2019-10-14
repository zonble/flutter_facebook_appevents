#import "FlutterFacebookAppeventsPlugin.h"
#import <flutter_facebook_appevents/flutter_facebook_appevents-Swift.h>

@implementation FlutterFacebookAppeventsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
	[SwiftFlutterFacebookAppeventsPlugin registerWithRegistrar:registrar];
}
@end
