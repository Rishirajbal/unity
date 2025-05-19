# Box Game Mobile App - Installation Guide

This guide provides detailed instructions for installing and running the Box Game Mobile App on different platforms.

## Prerequisites

Before you begin, make sure you have the following installed:

### For Development

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version 2.0 or higher)
- [Android Studio](https://developer.android.com/studio) (for Android development)
- [Xcode](https://developer.apple.com/xcode/) (for iOS development, macOS only)
- [Git](https://git-scm.com/downloads)
- A physical device or emulator for testing

### For End Users

- Android 5.0 (Lollipop) or higher
- iOS 11.0 or higher

## Development Setup

### 1. Clone the Repository

```bash
git clone https://github.com/Rishirajbal/unity.git
cd unity
```

### 2. Install Flutter Dependencies

```bash
cd mobile_app_flutter
flutter pub get
```

### 3. Check Flutter Setup

Verify that your Flutter setup is correct:

```bash
flutter doctor
```

Fix any issues reported by the Flutter doctor before proceeding.

### 4. Run the App in Debug Mode

#### Using Command Line

```bash
flutter run
```

This will launch the app on a connected device or emulator.

#### Using an IDE

**Android Studio / IntelliJ IDEA:**
1. Open the `mobile_app_flutter` folder in Android Studio
2. Click on the device selector in the toolbar
3. Select your target device
4. Click the Run button

**Visual Studio Code:**
1. Open the `mobile_app_flutter` folder in VS Code
2. Go to the Run tab
3. Select "Flutter: Launch Development" from the dropdown
4. Click the Run button

## Building for Release

### Android

#### Generate a Keystore

If you don't have a keystore file, create one:

```bash
keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```

#### Configure Signing

Create a file at `android/key.properties` with the following content:

```
storePassword=<password from previous step>
keyPassword=<password from previous step>
keyAlias=key
storeFile=<location of the key store file, e.g., /Users/username/key.jks>
```

#### Build the APK

```bash
flutter build apk --release
```

The APK file will be available at `build/app/outputs/flutter-apk/app-release.apk`

#### Build App Bundle (for Google Play)

```bash
flutter build appbundle --release
```

The bundle will be available at `build/app/outputs/bundle/release/app-release.aab`

### iOS (macOS only)

#### Configure Signing in Xcode

1. Open `ios/Runner.xcworkspace` in Xcode
2. Select the "Runner" project in the left sidebar
3. Select the "Runner" target
4. Go to the "Signing & Capabilities" tab
5. Select your team and configure signing

#### Build the App

```bash
flutter build ios --release
```

#### Archive and Distribute

1. Open `ios/Runner.xcworkspace` in Xcode
2. Select "Generic iOS Device" as the build target
3. Select Product > Archive
4. In the Archives window, click "Distribute App"
5. Follow the prompts to distribute your app

## Installation for End Users

### Android

#### From APK File

1. Download the APK file to your Android device
2. Enable "Install from Unknown Sources" in your device settings
   - Settings > Security > Unknown Sources (or)
   - Settings > Apps & notifications > Special app access > Install unknown apps
3. Open the APK file and follow the installation prompts

#### From Google Play Store (if published)

1. Open Google Play Store on your device
2. Search for "Box Game"
3. Tap "Install"

### iOS

#### From TestFlight (for beta testing)

1. Install TestFlight from the App Store
2. Accept the invitation sent to your email
3. Open TestFlight and install the app

#### From App Store (if published)

1. Open App Store on your device
2. Search for "Box Game"
3. Tap "Get" to install

## Troubleshooting

### Common Issues

#### Flutter Build Fails

- Make sure you have the latest Flutter SDK:
  ```bash
  flutter upgrade
  ```
- Clear the build cache:
  ```bash
  flutter clean
  flutter pub get
  ```

#### App Crashes on Launch

- Check the logs:
  ```bash
  flutter logs
  ```
- Make sure all dependencies are correctly installed:
  ```bash
  flutter pub get
  ```

#### Performance Issues

- Build in release mode for better performance:
  ```bash
  flutter run --release
  ```

### Getting Help

If you encounter any issues not covered in this guide:

1. Check the [Flutter documentation](https://flutter.dev/docs)
2. Open an issue on the [GitHub repository](https://github.com/Rishirajbal/unity/issues)
3. Search for similar issues on [Stack Overflow](https://stackoverflow.com/questions/tagged/flutter)

## Updating the App

To update to the latest version:

1. Pull the latest changes:
   ```bash
   git pull origin mobile-app-new
   ```
2. Update dependencies:
   ```bash
   flutter pub get
   ```
3. Rebuild the app:
   ```bash
   flutter run
   ```
   
For end users, updates will be available through the app store or by downloading the latest APK.