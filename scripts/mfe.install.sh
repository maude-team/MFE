PATH=/usr/bin:/bin
PWD=$(dirname $0)
ABS_PATH=$(readlink -f "$PWD")
PDIR=${0%`basename $0`}
MAUDE=$ABS_PATH/maude26++
MFE=$ABS_PATH/mfe
EXAMPLES=$ABS_PATH/examples
TOOLS=$ABS_PATH/ext-tools
APROVE=$TOOLS/AProVE

# 1. Download all files
echo "Dowloading maude26++.zip ..."
if [ -e Maude26++.zip ]
then echo "... this file already exists!"
else wget "http://maude.lcc.uma.es/MFE/files/Maude26++.zip"
fi

echo "Downloading mfe.zip ..."
if [ -e mfe.zip ]
then echo "... this file already exists!"
else wget  "http://maude.lcc.uma.es/MFE/files/mfe.zip"
fi

echo "Downloading mfe-examples.zip ..."
if [ -e mfe-examples.zip ]
then echo "... this file already exists!"
else wget "http://maude.lcc.uma.es/MFE/files/mfe-examples.zip"
fi

echo "Downloading AProVE.jar ..."
mkdir -p $TOOLS
mkdir -p $APROVE
if [ -e $APROVE/AProVE.jar ]
then echo "... this file already exists!"
else wget -O "$APROVE/AProVE.jar" "http://aprove.informatik.rwth-aachen.de/downloads/1.2/AProVE.jar"
fi

# 2. Unpack zip files
echo "Unpacking maude26++.zip ..."
unzip -d ${MAUDE} Maude26++.zip
echo "Unpacking mfe.zip ..."
unzip -d ${MFE} mfe.zip
echo "Unpacking mfe-examples.zip ..."
unzip -d ${EXAMPLES} mfe-examples.zip

# 3. Removing temporary files
echo "Deleting maude26++.zip ..."
rm Maude26++.zip
echo "Deleting mfe.zip ..."
rm mfe.zip
echo "Deleting mfe-examples.zip ..."
rm mfe-examples.zip

# 3. Configure external tools
# Do this for each termination tool
echo "Setting up AProVE ..."
echo "java -jar $APROVE/AProVE.jar -u cli -t \$2 -p plain -m wst \$1" > "$APROVE/runme"
chmod +x "$APROVE/runme"
# TODO : the following line must be replaced with a sed command
echo "aprove $APROVE/runme .trs" > "$MAUDE/tools_batch_files.txt"
exit 0