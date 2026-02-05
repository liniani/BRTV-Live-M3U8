#!/bin/bash
# 手动触发GitHub Actions

# 设置变量
REPO="你的用户名/你的仓库名"  # 修改为你的仓库
TOKEN="你的GitHub Token"      # 需要创建有repo权限的token

# 触发repository_dispatch事件
curl -X POST \
  -H "Authorization: token $TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/$REPO/dispatches \
  -d '{"event_type": "run-merge"}'

echo "手动触发已发送"
