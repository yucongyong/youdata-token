---
name: youdata-token
description: 生成网易有数平台(YouData)的访问token。当用户需要生成有数平台token时使用，用户需要提供tokenKey和域名(domain)两个参数。
---

# 有数平台Token生成

## 功能

根据用户提供的tokenKey和域名，调用有数平台API生成访问token。

## 使用方法

1. 询问用户两个必需参数：
   - `tokenKey`: 用户的tokenKey
   - `domain`: 有数平台域名（如 `https://d.youdata.netease.com`）

2. 调用API生成token：

```bash
curl -s -X POST "{domain}/api/dash/util/genToken" \
  -H "Content-Type: application/json" \
  -d '{
    "tokenType": "tokenKey",
    "key": "{tokenKey}",
    "expiryTime": 600,
    "once": true
  }'
```

## 默认参数

- `expiryTime`: 600秒（10分钟）
- `once`: true（只能使用一次）

## 输出

返回生成的token字符串，格式如：`1772776808123ead95553a76a9e408b4a16b7`

## 示例

用户输入：
- tokenKey: `<用户的tokenKey>`
- domain: `https://d.youdata.netease.com`

调用后返回token供用户使用。
