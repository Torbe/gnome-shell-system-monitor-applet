#!/bin/bash

xgettext -k_ -kN_ -o ../po/system-monitor.pot --package-name "System Monitor" extension.js prefs.js

for p in */ 
do
   echo $p
   `msgmerge -U ./$p/system-monitor.po system-monitor.pot`
done
