#!/usr/bin/env sh
adb install -r bin/DrcSimulator-debug.apk
adb shell am start -n org.oxygine.DrcSimulator/org.oxygine.DrcSimulator.MainActivity
