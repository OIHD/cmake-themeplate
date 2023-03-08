#!/bin/bash
GITHEMEF="$HOME/cmake-themeplate/"
GITHEMEFT="$HOME/cmake-themeplate/themeplate"
GITHEMEFN="themeplate"
GITHEMEFBN="buildthemeplate"
GITHEMEFBND="build"
cd $GITHEMEF/ && rm -rf .git

if [ -d "$GITHEMEFT/extra" ]; then
    rm -rf "$GITHEMEF/extra"   
fi

echo "Lutfen projenize bir isim girin: "
read DOSYAISMI
GITHEMEFBNN="${GITHEMEFBND}${DOSYAISMI}"
DOSYAISMIANA="${DOSYAISMI}_Proje"
echo "cmake-themeplate klasorunun ismi bu sekilde degistirilecek : $DOSYAISMI"

if [ -d "$GITHEMEFT/build" ]; then
    rm -rf "$GITHEMEFT/build"   
fi
if [ -d "$GITHEMEF/buildthemeplate" ]; then
    rm -rf "$GITHEMEF/buildthemeplate"   
fi

cd $GITHEMEF && mkdir buildthemeplate
cd $GITHEMEF/themeplate && mkdir build

for dosya in $GITHEMEFT/vscode/*; do
    if [ -f "$dosya" ]; then
        sed -i "s/$GITHEMEFN/$DOSYAISMI/g" "$dosya"
    fi
done
echo "project(${DOSYAISMI}) $(cat $GITHEMEFT/CMakeLists.txt)" > $GITHEMEFT/CMakeLists.txt

if [ -d "$GITHEMEF/themeplate/vscode" ]; then
    cd $GITHEMEF/themeplate && mv vscode/ .vscode
fi

cd $GITHEMEF
mv $GITHEMEFN $DOSYAISMI
mv "$GITHEMEFBN" "$GITHEMEFBNN"
cd $HOME && mv cmake-themeplate $DOSYAISMIANA


echo "${DOSYAISMI} isimli projenizin konumu ; ${HOME}/${DOSYAISMI}_Proje , vscodeden ${HOME}/${DOSYAISMI}_Proje/${DOSYAISMI} klasorunu open folder sekmesinden acmalisiniz "
cd $HOME/${DOSYAISMIANA}/ && rm -rf README.md setup.sh
