# 部署指南

## GitHub Pages 部署

### 1. 创建GitHub仓库

1. 访问 [GitHub](https://github.com) 并登录
2. 点击右上角的 "+" 按钮，选择 "New repository"
3. 填写仓库信息：
   - Repository name: `HouseProj`
   - Description: `房贷分阶段利率与提前还款可视化工具`
   - 选择 Public
   - 不要勾选 "Add a README file"（我们已经有了）
4. 点击 "Create repository"

### 2. 推送代码到GitHub

```bash
# 添加远程仓库（替换 your-username 为你的GitHub用户名）
git remote add origin https://github.com/your-username/HouseProj.git

# 推送代码到GitHub
git push -u origin main
```

### 3. 启用GitHub Pages

#### 方式一：使用GitHub Actions（推荐）
1. 在GitHub仓库页面，点击 "Settings" 标签
2. 在左侧菜单中找到 "Pages"
3. 在 "Source" 部分，选择 "Deploy from a branch"
4. 在 "Branch" 下拉菜单中选择 "gh-pages"，点击 "Save"
5. 等待几分钟，GitHub Actions会自动构建和部署

#### 方式二：直接使用main分支
1. 在GitHub仓库页面，点击 "Settings" 标签
2. 在左侧菜单中找到 "Pages"
3. 在 "Source" 部分，选择 "Deploy from a branch"
4. 在 "Branch" 下拉菜单中选择 "main"，选择 "/ (root)" 文件夹
5. 点击 "Save"

### 4. 访问你的网站

部署完成后，你的网站将在以下地址可用：
```
https://your-username.github.io/HouseProj/
```

## 手动部署（推荐）

最简单的方式是直接使用main分支部署：

1. 在GitHub仓库页面，点击 "Settings" 标签
2. 在左侧菜单中找到 "Pages"
3. 在 "Source" 部分，选择 "Deploy from a branch"
4. 在 "Branch" 下拉菜单中选择 "main"
5. 在 "Folder" 中选择 "/ (root)"
6. 点击 "Save"

这样设置后，你的网站会直接从main分支的根目录部署，无需额外的构建步骤。

## 自定义域名（可选）

如果你想使用自定义域名：

1. 在GitHub Pages设置中，在 "Custom domain" 字段输入你的域名
2. 在你的域名提供商处添加CNAME记录：
   ```
   your-domain.com CNAME your-username.github.io
   ```
3. 勾选 "Enforce HTTPS"
4. 点击 "Save"

## 故障排除

### 常见问题

1. **页面显示404错误**
   - 确保仓库是公开的
   - 检查GitHub Pages设置是否正确
   - 等待几分钟让部署完成

2. **样式或功能不正常**
   - 检查浏览器控制台是否有错误
   - 确保所有文件都已正确上传
   - 清除浏览器缓存

3. **GitHub Actions失败**
   - 检查 `.github/workflows/deploy.yml` 文件是否正确
   - 查看Actions日志获取详细错误信息

### 调试步骤

1. 检查仓库设置中的Pages配置
2. 查看Actions标签页中的部署日志
3. 使用浏览器开发者工具检查网络请求
4. 确认所有依赖的CDN资源可以正常加载

## 更新部署

每次推送代码到main分支时，GitHub Actions会自动重新部署：

```bash
# 修改代码后
git add .
git commit -m "更新说明"
git push origin main
```

## 性能优化建议

1. **启用Gzip压缩**：GitHub Pages自动支持
2. **使用CDN**：ECharts等库已使用CDN
3. **缓存策略**：设置适当的缓存头
4. **代码压缩**：考虑使用构建工具压缩代码

## 安全考虑

1. **HTTPS强制**：GitHub Pages默认使用HTTPS
2. **内容安全策略**：考虑添加CSP头
3. **依赖安全**：定期更新依赖库版本

---

部署完成后，记得更新README.md中的GitHub Pages链接！
