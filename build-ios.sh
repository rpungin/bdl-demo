#!/bin/bash
flutter build ipa --obfuscate --split-debug-info=symbols/$1/ \
&& open build/ios/archive/Runner.xcarchive
