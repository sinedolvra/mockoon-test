#!/bin/bash

mockoon-cli start --data /usr/src/data.json --port 3000 --index 0
sleep infinity & wait $!
tail -f /root/.mockoon-cli/logs/*