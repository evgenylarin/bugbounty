#!/bin/bash
# Scan with amass
# Put your scan results as a file
# Grep for a valid results and save into hosts.clean
# Scan with masscan from the file hosts.clean...
for domain in $(cat example.txt);
    do dig -4 +short $domain | tee -a  hosts.txt;
    grep -v -E -q '[a-zA-Z]+' hosts.txt;
    sort -u hosts.txt -o hosts.clean;
done
