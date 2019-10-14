import Flutter
import UIKit
import FBSDKCoreKit
import FBSDKMarketingKit

enum Action: String {
	case resetUserId = "reset_user_id"
	case setUserId = "set_user_id"
	case logEvent = "log_event"
}

public class SwiftFlutterFacebookAppeventsPlugin: NSObject, FlutterPlugin {

	public static func register(with registrar: FlutterPluginRegistrar) {
		let channel = FlutterMethodChannel(name: "flutter_facebook_appevents", binaryMessenger: registrar.messenger())
		let instance = SwiftFlutterFacebookAppeventsPlugin()
		registrar.addMethodCallDelegate(instance, channel: channel)
		registrar.addApplicationDelegate(instance)
	}

	public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
		guard let action = Action(rawValue: call.method) else {
			return
		}
		switch action {
		case .resetUserId:
			AppEvents.userID = nil
			result(nil)
		case .setUserId:
			guard let userID = call.arguments as? String else {
				return
			}
			AppEvents.userID = userID
			result(nil)
		case .logEvent:
			guard let jsonString = call.arguments as? String else {
				return
			}
			do {
				guard let dict = try JSONSerialization.jsonObject(with: jsonString.data(using: .utf8)!, options: []) as? [AnyHashable: Any] else {
					return
				}
				guard let eventName = dict["event_name"] as? String else {
					return
				}
				if let parameters = dict["parameters"] as? [String: Any] {
					AppEvents.logEvent(AppEvents.Name(rawValue: eventName), parameters: parameters)
				} else {
					AppEvents.logEvent(AppEvents.Name(rawValue: eventName))
				}
				result(nil)
			} catch {
				result(error)
			}
		}
	}
}


extension SwiftFlutterFacebookAppeventsPlugin {

	public func applicationDidBecomeActive(_ application: UIApplication) {
		AppEvents.activateApp()
	}

	public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [AnyHashable : Any] = [:]) -> Bool {
		ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions as? [UIApplicationLaunchOptionsKey : Any])
		return false
	}

	public func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
		ApplicationDelegate.shared.application(application, open: url, options: options)
		return false
	}

}
