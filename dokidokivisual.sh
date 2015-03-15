#!/bin/bash
# -*- coding: utf-8 -*-

source ./slack-config.sh

CHANNEL=dokidokivisual
declare -A MAGAZINES=([9]='まんがタイムきらら' [16]='まんがタイムきららミラク' [19]='まんがタイムきららMAX' [24]='まんがタイムきららフォワード' [28]='まんがタイムキャラット')

magazine=${MAGAZINES[$(date +%d)]}
if [ -n "$magazine" ]; then
    curl --data "今日は$magazineの発売日です。忘れずに買いにいきましょう。" "https://$SLACK_TEAM.slack.com/services/hooks/slackbot?token=$SLACK_TOKEN&channel=%23$CHANNEL"
fi
