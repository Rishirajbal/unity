# Box Game Mobile App

A professional, sleek, and modern mobile application version of the Box Game built with Flutter. This repository contains the complete source code for the mobile game.

## Features

- Smooth gameplay experience on mobile devices
- Intuitive touch controls
- Multiple difficulty levels
- Score tracking and high score system
- Responsive design that works on all mobile screen sizes
- Clean, modern UI with animations

## Project Structure

- `lib/` - Source code for the game
  - `main.dart` - Entry point of the application
  - `screens/` - UI screens (home, game, settings)
  - `models/` - Game entities and data structures
- `assets/` - Game assets and resources
- `android/` - Android-specific configuration
- `ios/` - iOS-specific configuration
- `pubspec.yaml` - Flutter dependencies and configuration

## Game Controls

- Tap left side of screen for left movement
- Tap right side of screen for right movement
- Tap center of screen for stopping

## Installation Instructions

### Prerequisites

- Flutter SDK (version 2.0 or higher)
- Android Studio or Xcode (depending on target platform)
- Git

### Setup and Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/Rishirajbal/unity.git
   cd unity
   ```

2. Install Flutter dependencies:
   ```bash
   cd mobile_app_flutter
   flutter pub get
   ```

3. Run the app in debug mode:
   ```bash
   flutter run
   ```

### Building for Release

#### Android

```bash
flutter build apk --release
```

The APK file will be available at `build/app/outputs/flutter-apk/app-release.apk`

#### iOS

```bash
flutter build ios --release
```

Then use Xcode to archive and distribute the app.

## Development

The app is structured as follows:

- `main.dart`: Application entry point and theme configuration
- `screens/home_screen.dart`: Main menu and game options
- `screens/game_screen.dart`: Main gameplay screen
- `screens/settings_screen.dart`: Game settings and preferences

To contribute to the development:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## Troubleshooting

If you encounter any issues:

- Make sure Flutter is up to date: `flutter upgrade`
- Clean the build: `flutter clean`
- Reinstall dependencies: `flutter pub get`
- Check the Flutter doctor: `flutter doctor`

For more detailed installation instructions, see the [INSTALLATION_GUIDE.md](../INSTALLATION_GUIDE.md) in the root directory.

## License

This project is licensed under the MIT License.

## Acknowledgements

- Original Box Game created in Unity
- [Flutter](https://flutter.dev/) for the app framework