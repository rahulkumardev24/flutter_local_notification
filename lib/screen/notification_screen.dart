import 'package:flutter/material.dart';

import '../service/notification_service.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        centerTitle: true,
        leading: Icon(Icons.notifications, size: 27, color: Colors.orange),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /// here call functions
            NotificationService.showNotification(
              title: "50 % Discount",
              body: 'For all items in your cart',
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(width: 1, color: Colors.orange),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_active,
              size: 100,
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
