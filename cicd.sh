#!/bin/bash
set -e

remoteDir="https://raw.githubusercontent.com/zamstation/dart_package_template/main/scripts"
localDir=".temp"

mkdir -p "$localDir"

echo "Downloading Scripts from $remoteDir to $localDir ..."
curl -o "$localDir/logger.sh" "$remoteDir/logger.sh"
curl -o "$localDir/error_thrower.sh" "$remoteDir/error_thrower.sh"
curl -o "$localDir/validate.sh" "$remoteDir/validate.sh"

chmod -R 740 "$localDir"
ls -l "$localDir"

echo "Running Scripts ..."
sh "$localDir/validate.sh"

echo "Removing Scripts ..."
rm -rf "$localDir"
