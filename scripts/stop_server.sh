#!/bin/bash

# Stop NGINX service if it exist and running
isExistNginx = `pgrep nginx`
if [[ -n $isExistNginx ]]; then
    service nginx stop
fi