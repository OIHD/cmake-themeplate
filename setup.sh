#!/bin/bash
GITHEMEF="$HOME/cmake-themeplate/"
GITHEMEFT="$HOME/cmake-themeplate/themeplate"
GITHEMEFN="themeplate"
GITHEMEFBN="buildthemeplate"
GITHEMEFBND="build"
cd $GITHEMEF/ && rm -rf .git

echo "Lutfen dosya ismi girin: "
read DOSYAISMI
GITHEMEFBNN="${GITHEMEFBND}${DOSYAISMI}"
echo "cmake-themeplate klasorunun ismi bu sekilde degistirilecek : $DOSYAISMI"

if [ -d "$GITHEMEF/themeplate/vscode" ]; then
    cd $GITHEMEF/themeplate && mv vscode/ .vscode
fi
if [ -d "$GITHEMEFT/build" ]; then
    rm -rf "$GITHEMEFT/build"   
fi
if [ -d "$GITHEMEF/buildthemeplate" ]; then
    rm -rf "$GITHEMEF/buildthemeplate"   
fi
if [ -d "$GITHEMEFT/extra" ]; then
    rm -rf "$GITHEMEF/extra"   
fi

cd $GITHEMEF && mkdir buildthemeplate
cd $GITHEMEF/themeplate && mkdir build

find $GITHEMEFT/vscode -type f -exec sed -i 's/$GITHEMEFN/$DOSYAISMI/g' {} +

cd $GITHEMEF
mv $GITHEMEFN $DOSYAISMI


mv "$GITHEMEFBN" "$GITHEMEFBNN"

cd $HOME
mv cmake-themeplate $DOSYAISMI
