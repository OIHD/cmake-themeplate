#!/bin/bash
GITHEMEF="$HOME/cmake-themeplate/"
GITHEMEFT="$HOME/cmake-themeplate/themeplate"
cd $GITHEMEF/ && rm -rf .git
if [ -d "$GITHEMEF/themeplate/vscode" ]; then
    cd $GITHEMEF/themeplate && mv vscode/ .vscode
fi
if [ -d "$GITHEMEFT/build" ]; then
    rm -rf "$GITHEMEFT/build"   
fi
if [ -d "$GITHEMEF/buildthemeplate" ]; then
    rm -rf "$GITHEMEF/buildthemeplate"   
fi
cd $GITHEMEF && mkdir buildthemeplate
cd $GITHEMEF/themeplate && mkdir build
