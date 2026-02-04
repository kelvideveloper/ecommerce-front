#!/usr/bin/env bash

# Exit on error
set -o errexit

# 1. Download Flutter
if [ ! -d "flutter" ]; then
  git clone https://github.com/flutter/flutter.git -b stable
fi

# 2. Add Flutter to the PATH
export PATH="$PATH:`pwd`/flutter/bin"

# 3. Pre-cache artifacts and enable web
flutter precache
flutter config --enable-web

# 4. Run the build
flutter build web --release