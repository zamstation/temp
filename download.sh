#!/bin/bash
set -e

echo ""
remoteDir="https://raw.githubusercontent.com/zamstation/dart_package_template/main/scripts"
localDir="temp"
mkdir -p "$localDir"

declare -a scripts
while read -r scriptName; do
	scripts[((i++))]="$scriptName"
done <"script_list.txt"

for script in "${scripts[@]}"; do
	echo "Downloading $remoteDir/$script ..."
	curl -s -o "$localDir/$script" "$remoteDir/$script"
	chmod 700 "$localDir/$script"
done

echo -e "\nContents of $localDir:"
ls -ltr "$localDir"

# echo -e "\nRunning Scripts ..."
# ./"$localDir/validate.sh"

# echo -e "\nCleaning Up ..."
# rm -rf "$localDir"

exit 0
