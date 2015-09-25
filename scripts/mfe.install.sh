#!/bin/bash

MFE="MFE"
EXTLS="$MFE/ext-tools"
APROVE="$EXTLS/aprove"

mkdir $1;
cd $1;
echo "1. Created folder $1"

if [ "$2" == "osx" ]; then
	echo "2. Downloading Maude++ for OS X."
	wget "https://github.com/maude-team/maude/releases/download/v2.7-ext-hooks/maude-2.7-hooks-darwin.zip"
	echo "3. Expanding Maude files."
	unzip -qq "maude-2.7-hooks-darwin.zip"
	rm "maude-2.7-hooks-darwin.zip"
	MAUDE="$1/maude-2.7-hooks-darwin"
else
	echo "2. Downloading Maude++ for Linux."
	wget "https://github.com/maude-team/maude/releases/download/v2.7-ext-hooks/maude-2.7-hooks-linux.zip"
	echo "3. Expanding Maude files."
	unzip -qq "maude-2.7-hooks-linux.zip"
	rm "maude-2.7-hooks-linux.zip"
	MAUDE="$1/maude-2.7-hooks-linux"
fi

echo "4. Downloading MFE."
wget "https://github.com/maude-team/MFE/archive/mfe-2.7.zip"
echo "5. Expanding MFE."
unzip -qq "mfe-2.7.zip"
rm mfe-2.7.zip
mv "MFE-mfe-2.7" "MFE" 

echo "6. Downloading AProVE."
mkdir "$EXTLS"
mkdir "$APROVE"
wget -O "$APROVE/AProVE.jar" "http://aprove.informatik.rwth-aachen.de/downloads/1.2/AProVE.jar"

echo "7. Setting up AProVE ..."
echo "java -jar $APROVE/AProVE.jar -u cli -t \$2 -p plain -m wst \$1" > "$APROVE/runme"
chmod +x "$APROVE/runme"

echo "8. Setting up mfe.config"
echo "aprove $APROVE/runme .trs" > "$MAUDE/mfe.config"

echo "===> Done :)"
