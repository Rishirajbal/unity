# Box Game Mobile App

A professional, sleek, and modern mobile application version of the Box Game built with Flutter. This repository contains the complete source code for the mobile game.

## Repository Structure

- `mobile_app_flutter/` - Contains the complete Flutter mobile application
  - `lib/` - Source code for the game
  - `assets/` - Game assets and resources
  - `android/` - Android-specific configuration
  - `ios/` - iOS-specific configuration
  - `pubspec.yaml` - Flutter dependencies and configuration

## Game Features

- Smooth gameplay experience on mobile devices
- Intuitive touch controls
- Multiple difficulty levels
- Score tracking and high score system
- Responsive design that works on all mobile screen sizes
- Clean, modern UI with animations

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

To contribute to the development of the Box Game Mobile App:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## Game Preview

<img width="300" alt="mobile game" src="https://github.com/user-attachments/assets/1f6d6b22-cef1-4ae2-9307-d8bd0718908a" />
