# Toutly

A trustworthy and honest community driven platform to connect people who wants to exchange and auction/bid stuff.

A mobile app focused on trading things trough barter and auction.

# Run using Dev Flavor

flutter run --target lib/main-dev.dart -d all --flavor dev

# Run using Prod Flavor

Important!!! - Change buildTypes.release of android/app/build.gradle to "signingConfigs.prod" if want you to use production database in Android
flutter run --target lib/main-prod.dart -d all --flavor prod

# Build using Development Flavor Android

### Important!!! - Change buildTypes.release of android/app/build.gradle to "signingConfigs.dev" to use development database in Android

flutter build apk --target lib/main-dev.dart --flavor dev

# Build using Production Flavor Android

### Important!!! - Change buildTypes.release of android/app/build.gradle to "signingConfigs.dev" to use production database in Android

flutter build apk --target lib/main-prod.dart --flavor prod

flutter build appbundle --target lib/main-prod.dart --flavor prod

# Build using Development Flavor iOS

### Important!!! - XCode Scheme should be "dev"

flutter build ios --target lib/main-dev.dart --flavor dev

# Build using Production Flavor iOS

### Important!!! - XCode Scheme should be "prod"

flutter build ios --target lib/main-prod.dart --flavor prod

# Run Code Generator

flutter pub run build_runner build --delete-conflicting-outputs

flutter pub run build_runner watch --delete-conflicting-outputs
