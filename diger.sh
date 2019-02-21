#!/bin/bash
# Scan with amass
# Put your scan results as a file
for domain in $(cat example.txt);
        do dig -4 +short $domain | tee -a  hosts.txt;
done
# Grep for a valid results and save into hosts.clean
grep -v -E '[0-9.]+' hosts.txt && sort -u hosts.txt -o hosts.clean;
# Scan with masscan from the file hosts.clean...
