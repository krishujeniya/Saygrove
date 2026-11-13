[![Flutter CI](https://github.com/krishujeniya/Saygrove/actions/workflows/flutter-ci.yml/badge.svg)](https://github.com/krishujeniya/Saygrove/actions/workflows/flutter-ci.yml)

<a id="readme-top"></a>



![GitHub repo size](https://img.shields.io/github/repo-size/krishujeniya/Saygrove)
![GitHub contributors](https://img.shields.io/github/contributors/krishujeniya/Saygrove)
![GitHub stars](https://img.shields.io/github/stars/krishujeniya/Saygrove?style=social)
![GitHub forks](https://img.shields.io/github/forks/krishujeniya/Saygrove?style=social)


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/krishujeniya/Saygrove">
    <img src="assets/saygrove-profile.png" alt="Saygrove logo" width="200px">
  </a>

  <h3 align="center">Saygrove — a social app for sharing moments</h3>

  <p align="center">
    Share posts and media, chat with people, and keep up with your community.
    <br />
    <a href="https://github.com/krishujeniya/Saygrove"><strong>Explore the project »</strong></a>
    <br />
    <br />
    <a href="https://github.com/krishujeniya/Saygrove">View project</a>
    ·
    <a href="https://github.com/krishujeniya/Saygrove/issues">Report Bug</a>
    ·
    <a href="https://github.com/krishujeniya/Saygrove/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#validation-builds">Validation Builds</a></li>
      </ul>
    </li>
    <li><a href="#firebase-cli">Firebase CLI</a></li>
    <li><a href="#continuous-integration">Continuous Integration</a></li>
    <li><a href="#production-and-releases">Production and Releases</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

Saygrove is a Flutter social app for sharing posts and media, chatting, and staying connected with a community.

### Key Features

- **User Authentication and Profile Management**
- **Posting Updates with Text and Media**
- **Liking and Commenting on Posts**
- **Following and Unfollowing Users**
- **Real-time Notifications**
- **Search Functionality**



## Built With

- [![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
- [![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)

## Continuous integration

`main` is the repository's sole maintained branch. GitHub Actions runs for pull requests targeting `main`, pushes to `main`, and manual runs. It enforces `pubspec.lock`, runs `flutter analyze` and `flutter test`, then builds an Android validation APK and an unsigned iOS app bundle. Successful artifacts are available from the run for 14 days. The APK uses the debug signing key; neither artifact is store-ready.

Automated dependency pull requests are disabled so the repository keeps only `main`. Dependency updates must land on `main` and pass this GitHub Actions workflow.

## Firebase CLI

The app uses the existing Firebase project `echonest-f282b`. `.firebaserc`, `lib/firebase_options.dart`, the Android config, and the iOS config point to this project. The Firebase app registrations and `com.example.echonest` application IDs are retained so the app continues to use its registered Firebase apps.

Authenticate the Firebase CLI and confirm the project before running project commands:

```sh
firebase login
firebase projects:list
firebase use
firebase apps:list --project echonest-f282b
```

To refresh the iOS native config, use the existing iOS app ID shown by `firebase apps:list`:

```sh
firebase apps:sdkconfig IOS "$IOS_FIREBASE_APP_ID" \
  --project echonest-f282b \
  --out ios/Runner/GoogleService-Info.plist
```

Do not create a new Firebase project or app just to change the Saygrove display name. The existing registered apps are connected to the current data project.

## Production and releases

Production publishing is not configured in this repository. The current workflow only creates validation artifacts: the Android APK uses the debug key and the iOS app bundle is unsigned. Do not use these artifacts to replace a Play Store or App Store release.

The existing GitHub `v1.0.0` release is the older EchoNest APK, not a refreshed Saygrove build. A new production release requires Android release signing and store credentials, Apple distribution signing and App Store Connect credentials, and a release workflow that uses those credentials. Those credentials are not committed to the repository.

The Firebase workflow does not deploy Firestore rules or data. The checked-in `firestore.rules` still contains an expired bootstrap rule, so it must be replaced with app-specific access rules and tested with the Firestore emulator before any production rules deployment. The app also uploads to Firebase Storage, but this repository does not configure Storage rules. These backend policies are production blockers; no production Firebase deployment was made during this rebrand.




<!-- GETTING STARTED -->
## Getting Started

Use GitHub Actions artifacts to review validation builds. The `v1.0.0` GitHub release predates the Saygrove rebrand and is not the current app build.

### Prerequisites

- **Android**: An Android device or emulator for validation APKs.
- **Firebase**: Access to the existing `echonest-f282b` project for app configuration.

### Validation Builds

1. Open a successful [Flutter CI run](https://github.com/krishujeniya/Saygrove/actions/workflows/flutter-ci.yml) and download its Android or iOS validation artifact.
2. To inspect the source, clone the repo:
   ```sh
   git clone https://github.com/krishujeniya/Saygrove.git
   cd Saygrove
   ```

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Dart](https://dart.dev/)
* [Flutter](https://flutter.dev/)
* [Open Source Community](https://opensource.org/)
* [Contributors](https://github.com/krishujeniya/Saygrove/graphs/contributors)
