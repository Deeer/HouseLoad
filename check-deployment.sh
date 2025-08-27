#!/bin/bash

echo "🔍 检查GitHub Pages部署状态..."
echo ""

# 检查远程仓库
echo "📋 远程仓库信息："
git remote -v
echo ""

# 检查当前分支
echo "🌿 当前分支："
git branch
echo ""

# 检查最近提交
echo "📝 最近提交："
git log --oneline -5
echo ""

# 检查文件状态
echo "📁 文件状态："
git status
echo ""

echo "🔧 建议的解决步骤："
echo "1. 确认GitHub仓库名称是否正确"
echo "2. 检查GitHub Pages设置："
echo "   - 进入仓库 → Settings → Pages"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main"
echo "   - Folder: / (root)"
echo "3. 等待几分钟让部署生效"
echo "4. 访问正确的URL："
echo "   https://www.deeer.cn/[仓库名]/"
echo ""
echo "💡 如果问题持续，请检查："
echo "   - 仓库是否为公开仓库"
echo "   - GitHub Pages是否已启用"
echo "   - 是否有构建错误"
