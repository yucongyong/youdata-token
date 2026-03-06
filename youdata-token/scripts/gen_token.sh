#!/bin/bash
# 有数平台Token生成脚本
# 用法: ./gen_token.sh <tokenKey> <domain>

TOKEN_KEY=$1
DOMAIN=$2

if [ -z "$TOKEN_KEY" ] || [ -z "$DOMAIN" ]; then
    echo "用法: ./gen_token.sh <tokenKey> <domain>"
    echo "示例: ./gen_token.sh aaasd7621338145dba6514670cb81872b457111151 https://d.youdata.netease.com"
    exit 1
fi

curl -s -X POST "${DOMAIN}/api/dash/util/genToken" \
  -H "Content-Type: application/json" \
  -d "{
    \"tokenType\": \"tokenKey\",
    \"key\": \"${TOKEN_KEY}\",
    \"expiryTime\": 600,
    \"once\": true
  }"
