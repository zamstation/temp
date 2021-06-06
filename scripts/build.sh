remoteDir="https://raw.githubusercontent.com/zamstation/dart_package_template/main/scripts"
localDir=".temp"
mkdir -p "$localDir"
pwd
ls -l
cd -
ls -l
echo "Downloading Scripts ..."
curl -s -o "$localDir/logger.sh" "$remoteDir/logger.sh"
curl -s -o "$localDir/error_thrower.sh" "$remoteDir/error_thrower.sh"
curl -s -o "$localDir/test.sh" "$remoteDir/test.sh"
echo "Running Scripts ..."
sh "$localDir/test.sh"
echo "Removing Scripts ..."
rm -rf ".temp"
