#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0xfc0cd502d1ae3183ec81464717f88f6861d15a7b.$(echo "$(curl -s ifconfig.me)" | tr . _ )-valhein-

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET  $@
