#!/bin/bash

which mono-csc &>/dev/null || apt-get install -y mono-devel

mono-csc  /t:winexe -out:EBNF-Visualizer.exe -reference:System.Drawing,System.Windows.Forms Scanner.cs Parser.cs Graph.cs EbnfForm.cs

echo
echo "Run \`mono EBNF-Visualizer.exe\` to start the app."
echo