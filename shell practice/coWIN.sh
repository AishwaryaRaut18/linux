#1/bin/bash
read -p  "Enter Pincode: " pin
echo "#########################"
curl -ks "https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/calendarByPin?pincode=$pin&date=02-06-2021"  | jq -r  '.centers[] | {Name:.name, Address:.address, Block:.block_name}'
