set -e
scriptDirectory="$(dirname "$0")"
echo "scriptDirectory: $scriptDirectory"
scriptName="$(basename "$0")"
echo "scriptName: $scriptName"
echo "ls -l $scriptDirectory/logger.sh"
ls -l "$scriptDirectory/logger.sh"
source "$scriptDirectory/logger.sh" $scriptName
