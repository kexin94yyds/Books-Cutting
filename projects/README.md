# 📦 完整项目

这里存放有完整代码结构的项目，如网站、桌面应用、API等。

## 🗂️ 项目列表

*暂无项目，等待您的第一个项目！*

## ➕ 添加新项目

```bash
# 1. 创建分支
git checkout -b add/project-name

# 2. 创建项目目录
mkdir -p projects/your-project

# 3. 复制项目文件
cp -r /path/to/your/project/* projects/your-project/

# 4. 创建项目文档
# 每个项目都应该有自己的README.md

# 5. 提交和合并
git add .
git commit -m "Add project: 项目描述"
git checkout main
git merge --no-ff add/project-name
```

## 📋 项目结构建议

每个项目应该包含：
- `README.md` - 项目说明文档
- 源代码文件
- `requirements.txt` 或 `package.json` - 依赖列表（如适用）
- `docs/` - 项目专属文档（如需要） 