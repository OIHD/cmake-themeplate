#!/bin/bash
GITHEMEF="$HOME/cmake-themeplate/"
cd $GITHEMEF/ && rm -rf .git
cd $GITHEMEF/themeplate && rm -rf build
cd $GITHEMEF && rm -rf buildthemeplate
cd $GITHEMEF && mkdir buildthemeplate
cd $GITHEMEF/themeplate && mkdir build
cd $GITHEMEF/themeplate && mv vscode/ .vscode
