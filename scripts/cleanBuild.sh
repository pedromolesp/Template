#!/bin/bash
flutter clean
find . -name "*.g.dart" -delete
find . -name "*.freezed.dart" -delete
flutter pub get
cd ios
pod install 
cd ..
flutter pub run build_runner build --delete-conflicting-outputs

