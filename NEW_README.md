# Flutter Local Notification

A Flutter application demonstrating local notifications with support for various Android devices, including Xiaomi/Redmi optimizations.

## Features

- Local notifications with custom icons and styling
- Permission handling for notifications
- Special handling for Xiaomi/Redmi devices
- Clean and simple user interface

## Screenshots

<!-- Add your screenshots here -->
<!-- ![App Screenshot](screenshots/screenshot1.png) -->

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Android Studio / VS Code with Flutter extensions
- Android Emulator or physical device with USB debugging enabled

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/flutter_local_notification.git
   cd flutter_local_notification
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Usage

1. Launch the app
2. Tap the notification icon to send a test notification
3. For Xiaomi/Redmi devices, follow the optimization prompts for better notification delivery

## Dependencies

- `flutter_local_notifications`: ^19.2.0 - For handling local notifications
- `permission_handler`: ^12.0.0+1 - For managing notification permissions

## Project Structure

```
lib/
├── main.dart              # Application entry point
├── screen/
│   └── notification_screen.dart  # Main UI screen
└── service/
    └── notification_service.dart  # Notification service implementation
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Flutter team for the amazing framework
- Plugin authors for their contributions to the Flutter ecosystem

---

Created with ❤️ by [Your Name]
