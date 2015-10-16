#!/bin/bash
# -*- coding: utf-8 -*-

cd `dirname $0`
source ./slack-config.sh

declare -A MAGAZINES=([9]='まんがタイムきらら' [16]='まんがタイムきららミラク' [19]='まんがタイムきららMAX' [24]='まんがタイムきららフォワード' [28]='まんがタイムキャラット')
MAGAZINE=${MAGAZINES[$(date +%d)]}

if [ -n "$MAGAZINE" ]; then
  MESSAGE="今日は$MAGAZINEの発売日です。忘れずに買いにいきましょう。"
  curl -s -S -X POST --data-urlencode "payload={ \"text\": \"${MESSAGE}\" }" ${WEBHOOKURL}
fi
