# login_app

A new Flutter project.

## **Setup Guide**

### **1. Install Firebase CLI**
Follow the official Firebase CLI installation guide:  
[Firebase CLI Installation](https://firebase.google.com/docs/cli#windows-npm)

Run the following command to install Firebase CLI using npm:
```sh
npm install -g firebase-tools
```

Verify installation:
```sh
firebase --version
```

### **2. Connect the apps**
Follow the official Firebase CLI installation guide:  
[Firebase CLI Installation](https://firebase.google.com/docs/flutter/setup?platform=android)

Authenticate with Firebase using:
```sh
firebase login
```
This will open a browser for authentication. Log in using your Google account.

Activate the **FlutterFire CLI** globally:
```sh
flutter pub global activate flutterfire_cli
```
Navigate to your Flutter project directory and run:
```sh
flutterfire configure
```
This command:
- Detects Firebase projects associated with your Google account.
- Allows you to select an existing project or create a new one.
- Generates necessary Firebase configuration files.

```yaml
  flutter pub add firebase_core
```
From your Flutter project directory, run the following command to ensure that your Flutter app's Firebase configuration is up-to-date:

```yaml
flutterfire configure
```
From your Flutter project directory, run the following command to install the core plugin:

Also in your lib/main.dart file, initialize Firebase using the DefaultFirebaseOptions object exported by the configuration file:
```yaml
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
runApp(const MyApp());
```

### **3. Run Your Flutter App**
Start the app:
```sh
flutter run
```


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
