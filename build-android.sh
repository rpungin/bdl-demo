#!/bin/bash
#flutter build apk --obfuscate --split-debug-info=symbols/$1/ \
#&& open build/app/outputs/apk/debug

flutter build appbundle --obfuscate --split-debug-info=symbols/$1/ \
&& open build/app/outputs/bundle/release

