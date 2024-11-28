#!/bin/bash
set -e

# Function to check if the 'full_coverage' command exists in the specified directory
command_exists() {
  command -v "$1/$2" &> /dev/null
}

# Check if the 'full_coverage' command exists and install it if not
if ! command_exists "$PATH" full_coverage && ! command_exists "$HOME/.pub-cache/bin" full_coverage; then
  echo "full_coverage command not found, installing..."
  dart pub global activate full_coverage
  export PATH="$PATH:$HOME/.pub-cache/bin"
elif ! command_exists "$PATH" full_coverage; then
  echo "full_coverage command found in $HOME/.pub-cache/bin, updating PATH..."
  export PATH="$PATH:$HOME/.pub-cache/bin"
fi

full_coverage

# Runs Flutter tests with code coverage
flutter test --machine --coverage > test.output

# Filters the coverage data by removing unnecessary files or generated files
lcov --remove coverage/lcov.info \
'lib/main.dart' \
'lib/*/*.g.dart' \
-o coverage/lcov.info

# Generates an HTML report from the coverage data
genhtml coverage/lcov.info --output=coverage

# Opens the HTML report in the default web browser
open coverage/index.html

# Runs the SonarQube scanner to analyze the code and send the results to the SonarQube server
# Remove this comment if you want to use SonarQube
# sonar-scanner

# Removes the full_coverage_test.dart file and the test.output file
rm test/full_coverage_test.dart
rm test.output