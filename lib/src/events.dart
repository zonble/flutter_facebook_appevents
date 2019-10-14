// These types are ported from Facebook's SDK.

/// Public event names.
class EventName {
  // General purpose

  /// Log this event when a user has completed registration with the app.
  static const String completedRegistration = "fb_mobile_complete_registration";

  /// Log this event when a user has viewed a form of content in the app.
  static const String viewedContent = "fb_mobile_content_view";

  /// Log this event when a user has performed a search within the app.
  static const String searched = "fb_mobile_search";

  /// Log this event when the user has rated an item in the app.  The valueToSum
  /// passed to logEvent should be the numeric rating.
  static const String rated = "fb_mobile_rate";

  /// Log this event when the user has completed a tutorial in the app.
  static const String completedTutorial = "fb_mobile_tutorial_completion";

  /// A telephone/SMS, email, chat or other type of contact between a customer
  /// and your business.
  static const String contact = "Contact";

  /// The customization of products through a configuration tool or other
  /// application your business owns.
  static const String customizeProduct = "CustomizeProduct";

  /// The donation of funds to your organization or cause.
  static const String donate = "Donate";

  /// When a person finds one of your locations via web or application, with an
  /// intention to visit (example: find product at a local store).
  static const String findLocation = "FindLocation";

  /// The booking of an appointment to visit one of your locations.
  static const String schedule = "Schedule";

  /// The start of a free trial of a product or service you offer (example: trial
  /// subscription).
  static const String startTrial = "StartTrial";

  /// The submission of an application for a product, service or program you offer
  /// (example: credit card, educational program or job).
  static const String submitApplication = "SubmitApplication";

  /// The start of a paid subscription for a product or service you offer.
  static const String subscribe = "Subscribe";

  /// The subsequent subscriptions after the start of a paid subscription for a
  /// product or service you offer.
  static const String subscriptionHeartbeat = "SubscriptionHeartbeat";

  /// Log this event when the user views an ad.
  static const String adImpression = "AdImpression";

  /// Log this event when the user clicks an ad.
  static const String adClick = "AdClick";

  // E-commerce related

  /// Log this event when the user has added an item to their cart.  The
  /// valueToSum passed to logEvent should be the item's price.
  static const String addedToCart = "fb_mobile_add_to_cart";

  /// Log this event when the user has added an item to their wishlist.  The
  /// valueToSum passed to logEvent should be the item's price.
  static const String addedToWishlist = "fb_mobile_add_to_wishlist";

  /// Log this event when the user has entered the checkout process.  The
  /// valueToSum passed to logEvent should be the total price in the cart.
  static const String initiatedCheckout = "fb_mobile_initiated_checkout";

  /// Log this event when the user has entered their payment info.
  static const String addedPaymentInfo = "fb_mobile_add_payment_info";

  /// Log this event when the user has completed a transaction.  The valueToSum
  /// passed to logEvent should be the total price of the transaction. */
  static const String purchased = "fb_mobile_purchase";

  // Gaming related

  /// Log this event when the user has achieved a level in the app.
  static const String achievedLevel = "fb_mobile_level_achieved";

  /// Log this event when the user has unlocked an achievement in the app.
  static const String unlockedAchievement = "fb_mobile_achievement_unlocked";

  /// Log this event when the user has spent app credits.  The valueToSum passed
  /// to logEvent should be the number of credits spent. */
  static const String spentCredits = "fb_mobile_spent_credits";
}

/// Public parameter name.
class ParameterName {
  static const String currency = "fb_currency";
  static const String registrationMethod = "fb_registration_method";
  static const String contentType = "fb_content_type";
  static const String content = "fb_content";
  static const String contentID = "fb_content_id";
  static const String searchString = "fb_search_string";
  static const String success = "fb_success";
  static const String maxRatingValue = "fb_max_rating_value";
  static const String paymentInfoAvailable = "fb_payment_info_available";
  static const String numItems = "fb_num_items";
  static const String level = "fb_level";
  static const String description = "fb_description";
  static const String launchSource = "fb_mobile_launch_source";
  static const String adType = "ad_type";
  static const String orderID = "fb_order_id";
}

/// Public event parameter names for DPA Catalog
class ParameterProduct {
  static const String customLabel0 = "fb_product_custom_label_0";
  static const String customLabel1 = "fb_product_custom_label_1";
  static const String customLabel2 = "fb_product_custom_label_2";
  static const String customLabel3 = "fb_product_custom_label_3";
  static const String customLabel4 = "fb_product_custom_label_4";
  static const String category = "fb_product_category";
  static const String appLinkIOSUrl = "fb_product_applink_ios_url";
  static const String appLinkIOSAppStoreID =
      "fb_product_applink_ios_app_store_id";
  static const String appLinkIOSAppName = "fb_product_applink_ios_app_name";
  static const String appLinkIPhoneUrl = "fb_product_applink_iphone_url";
  static const String appLinkIPhoneAppStoreID =
      "fb_product_applink_iphone_app_store_id";
  static const String appLinkIPhoneAppName =
      "fb_product_applink_iphone_app_name";
  static const String appLinkIPadUrl = "fb_product_applink_ipad_url";
  static const String appLinkIPadAppStoreID =
      "fb_product_applink_ipad_app_store_id";
  static const String appLinkIPadAppName = "fb_product_applink_ipad_app_name";
  static const String appLinkAndroidUrl = "fb_product_applink_android_url";
  static const String appLinkAndroidPackage =
      "fb_product_applink_android_package";
  static const String appLinkAndroidAppName =
      "fb_product_applink_android_app_name";
  static const String appLinkWindowsPhoneUrl =
      "fb_product_applink_windows_phone_url";
  static const String appLinkWindowsPhoneAppID =
      "fb_product_applink_windows_phone_app_id";
  static const String appLinkWindowsPhoneAppName =
      "fb_product_applink_windows_phone_app_name";
}

/// Public event parameter values.
class ParameterValue {
  /// Represents YES.
  static const String yes = "1";

  /// Represents NO.
  static const String no = "0";
}

/// Public event user data types
class UserDataType {
  static const String email = "em";
  static const String firstName = "fn";
  static const String lastName = "ln";
  static const String phone = "ph";
  static const String dateOfBirth = "dob";
  static const String gender = "ge";
  static const String city = "ct";
  static const String state = "st";
  static const String zip = "zp";
  static const String country = "country";
}
