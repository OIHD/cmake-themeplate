#!/bin/bash
GITHEMEF="$HOME/cmake-themeplate/"
GITHEMEFT="$HOME/cmake-themeplate/themeplate"
GITHEMEFN="cmake-themeplate"
cd $GITHEMEF/ && rm -rf .git

echo "Lutfen dosya ismi girin: "
read DOSYAISMI
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

for  in $3
do
    sed -i "s/$GITHEMEFN/$DOSYAISMI/g" $GITHEMEF
done

cd $HOME
mv cmake-themeplate $DOSYAISMI
