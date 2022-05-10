#!/bin/bash
Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'
#echo R3c0nt00l | lolcat -a -d 500
toilet -f big -F gay R3c0nt00l
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
cat alive.txt | ~/go/bin/httpx -sc | tee -a domainswithstatuscode.txt
#formatting the data to json
cat alive.txt | python -c "import sys; import json; print (json.dumps({'domains':list(sys.stdin)}))" > alive.json
cat domains.txt | python -c "import sys; import json; print (json.dumps({'domains':list(sys.stdin)}))" > domains.json

