#!/bin/bash

# Script configuration

devicesArray=(
	"iPhone 8"
	"iPhone 8 Plus"
	"iPhone 5s"
	"iPhone X")

workspace="FBSnapshotTestCaseExample"

scheme="FBSnapshotTestCaseExample"

# List devices to snapshot

echo "Devices to snapshot:"
for index in ${!devicesArray[*]}
do
    printf "   %s\n" "${devicesArray[$index]}"
done

# Create final command

finalCommand="xcodebuild test -workspace $workspace.xcworkspace -scheme $scheme" 

for index in ${!devicesArray[*]}
do
    finalCommand="$baseCommand -destination 'platform=iOS Simulator,name=${devicesArray[$index]}'"
done
 

# Execute command

eval $finalCommand