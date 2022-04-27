#!/bin/bash
banner MADE BY SHIRSHAK
#starting sublist3r
echo "Your enumerated domains is saving in domains.txt ..."
sublist3r -d $1 -v -o domains.txt
#running assetfinder
~/go/bin/assetfinder --subs-only $1 | tee -a domains.txt
#removing duplicate entries
sort -u domains.txt -o domains.txt
#checking for alive domains
echo "[+] Checking for alive domains.. saving in alive.txt"
cat domains.txt | ~/go/bin/httprobe | tee -a alive.txt
#formatting the data to json
cat alive.txt | python -c "import sys; import json; print (json.dumps({'domains':list(sys.stdin)}))" > alive.json
cat domains.txt | python -c "import sys; import json; print (json.dumps({'domains':list(sys.stdin)}))" > domains.json