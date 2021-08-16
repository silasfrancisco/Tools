#!/bin/bash
find . -name \*.b64 -exec sh -c 'base64 -d {} | gzip -d > $(basename {} .b64); chmod +x $(basename {} .b64); rm -rf {}' \;
