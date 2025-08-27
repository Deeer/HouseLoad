#!/bin/bash

# 房贷分阶段利率与提前还款可视化工具 - 快速部署脚本

echo "🚀 开始部署到GitHub Pages..."

# 检查Git状态
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 检测到未提交的更改，正在提交..."
    git add .
    git commit -m "自动更新: $(date '+%Y-%m-%d %H:%M:%S')"
fi

# 推送到GitHub
echo "📤 推送到GitHub..."
git push origin main

echo "✅ 部署完成！"
echo ""
echo "🌐 你的网站将在几分钟后可用："
echo "   https://your-username.github.io/HouseProj/"
echo ""
echo "📋 部署状态请查看："
echo "   https://github.com/your-username/HouseProj/actions"
echo ""
echo "💡 提示："
echo "   1. 记得将 'your-username' 替换为你的GitHub用户名"
echo "   2. 在GitHub仓库设置中启用Pages，选择main分支部署"
echo "   3. 如果使用Actions部署，选择gh-pages分支"
