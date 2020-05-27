#!/bin/bash
domain=$1
if [ -n "$domain" ]; then
  openssl s_client -connect ${domain}:443 -servername ${domain} < /dev/null 2> /dev/null | openssl x509 -text | grep Not
else
  echo "Please enter the domain name (FQDN)."
fi
exit 0
