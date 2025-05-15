import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// Creating a service class to manage local notifications
class NotificationService {
  /// Creating a static instance of FlutterLocalNotificationsPlugin
  /// This is the main plugin to handle notification actions

  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  /// Static method to show a notification
  /// Takes a required title and body as parameters

  static Future<void> showNotification({
    required String title,
    required String body,
  }) async {
    // Defining Android-specific notification details
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          /// Unique channel ID
          'channel_id_1',

          /// Channel name visible to users
          'Default Channel',

          /// Description of the channel
          channelDescription: 'Used for basic notifications',

          /// Set to max to show the notification with high importance
          importance: Importance.max,

          /// High priority for heads-up notification
          priority: Priority.high,

          largeIcon: DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
        );

    /// Wrapping Android details in NotificationDetails
    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
    );

    /// Showing the notification using the show() method
    await _notificationsPlugin.show(0, title, body, notificationDetails);
  }

  /// initialize method to initialize the plugin
  static Future<void> initialize() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await _notificationsPlugin.initialize(initializationSettings);
  }
}
