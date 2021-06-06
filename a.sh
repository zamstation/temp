#!/bin/bash

remoteUrl="https://raw.githubusercontent.com/zamstation/cicd_test/main"
remoteDir="$remoteUrl/scripts"
localDir="temp"
mkdir -p "$localDir"

echo -e "\nDownload URL: $remoteUrl"
echo -e "\nReading script_list.txt ..."
declare -a scripts
while read -r script; do
	echo "$script"
	scripts[((i++))]="$script"
done < <(curl -s "$remoteUrl/script_list.txt")

echo -e "\nDownloading Scripts ..."
for script in "${scripts[@]}"; do
	echo "$script"
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
