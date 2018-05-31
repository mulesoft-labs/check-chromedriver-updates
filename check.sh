#!/bin/bash

set -e

CHECK_URL="https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
LATEST_VERSION=$(curl --silent $CHECK_URL)
PAYLOAD="{\"channel\": \"$SLACK_CHANNEL\", \"text\": \"New Chromedriver version released: $LATEST_VERSION!\"}"

if [ "$LATEST_VERSION" != "$CURRENT_CHROMEDRIVER_VERSION" ]; then
    echo "There's a new chromedriver version: $LATEST_VERSION"
    echo "Sending Slack Notification to channel #$SLACK_CHANNEL"
    curl -s -d "payload=$PAYLOAD" $SLACK_WEBHOOK
fi
