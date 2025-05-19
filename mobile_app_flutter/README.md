# Box Game - Mobile App

A Flutter mobile version of the Box Game, ported from the original Unity version.

## Features

- Fast-paced arcade gameplay
- Simple touch controls
- Customizable settings
- High score tracking
- Modern UI design

## Screenshots

![Game Screenshot](assets/images/game-screenshot.png)

## Getting Started

### Prerequisites

To build and run this Flutter application, you need to have the following installed:

1. **Flutter SDK**: Follow the [official installation guide](https://flutter.dev/docs/get-started/install)
2. **Android Studio** or **Xcode** (for iOS development)
3. **Git** for version control

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Rishirajbal/unity.git
   cd unity
   git checkout mobile-app-new
   cd mobile_app_flutter
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app in debug mode:
   ```bash
   flutter run
   ```

## Building for Release

### Android

1. Generate a keystore file (if you don't have one):
   ```bash
   keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
   ```

2. Create a file `android/key.properties` with your keystore information:
   ```
   storePassword=<password>
   keyPassword=<password>
   keyAlias=key
   storeFile=<path to keystore file>
   ```

3. Build the APK:
   ```bash
   flutter build apk --release
   ```
   
   The APK will be located at `build/app/outputs/flutter-apk/app-release.apk`

4. Install on your device:
   ```bash
   adb install build/app/outputs/flutter-apk/app-release.apk
   ```

### iOS

1. Open the iOS project in Xcode:
   ```bash
   open ios/Runner.xcworkspace
   ```

2. Configure signing in Xcode with your Apple Developer account

3. Build the app:
   ```bash
   flutter build ios --release
   ```

4. Archive and upload to App Store using Xcode

## Game Controls

- **Swipe Left**: Move the player box left
- **Swipe Right**: Move the player box right
- **Tap**: Stop the player box's movement

## Development

This project uses the Flame game engine for Flutter. The main components are:

- `lib/main.dart`: Entry point of the application
- `lib/screens/`: UI screens (home, game, settings)
- `lib/game/`: Game engine and logic
- `lib/models/`: Game entities (player, obstacles)

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgements

- Original Box Game created in Unity
- [Flutter](https://flutter.dev/) for the app framework
- [Flame](https://flame-engine.org/) for the game engine