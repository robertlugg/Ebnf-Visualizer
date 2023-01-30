#!/bin/bash

which mono-csc &>/dev/null || apt-get install -y mono-devel

mono-csc  /t:exe -out:EBNF-Visualizer.exe -reference:/usr/lib/mono/4.5/System.Drawing.dll,/usr/lib/mono/4.5/System.Windows.Forms.dll Scanner.cs Parser.cs Graph.cs EbnfForm.cs

echo
echo "Run \`mono EBNF-Visualizer.exe\` to start the app."
echo