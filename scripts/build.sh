remoteDir="https://raw.githubusercontent.com/zamstation/dart_package_template/main/scripts"
localDir="./.temp"
mkdir -p "$localDir"
ls -l
ls -l $localDir
echo "Downloading Scripts ..."
curl -o "$localDir/logger.sh" "$remoteDir/logger.sh"
curl -o "$localDir/error_thrower.sh" "$remoteDir/error_thrower.sh"
curl -o "$localDir/test.sh" "$remoteDir/test.sh"
echo "Running Scripts ..."
sh "$localDir/test.sh"
echo "Removing Scripts ..."
rm -rf "$localDir"
