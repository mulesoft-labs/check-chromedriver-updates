#!/bin/bash

set -e

CHECK_URL="https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
LATEST_VERSION=$(curl --silent $CHECK_URL)
SLACK_PAYLOAD="{\"channel\": \"#$SLACK_CHANNEL\", \"text\": \"New Chromedriver version: $LATEST_VERSION\"}"

if [ "$LATEST_VERSION" != "$CURRENT_CHROMEDRIVER_VERSION" ]; then
    echo "Theres a new chromedriver version: $LATEST_VERSION"
    curl -s -m 30 -X POST --data-urlencode payload=$SLACK_PAYLOAD $SLACK_WEBHOOK
fi
