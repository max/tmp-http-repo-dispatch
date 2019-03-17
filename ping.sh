#!/usr/bin/env sh

curl -XPOST \
  -H "Accept: application/vnd.github.everest-preview+json"  \
  -H "Content-Type: application/json" \
  https://api.github.com/repos/max/tmp-http-repo-dispatch/dispatches \
  --data '{"event_type": "ping.pong"}'
