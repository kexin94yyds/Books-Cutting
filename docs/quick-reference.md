# 🚀 快速参考指南

## 📚 EPUB切书工具快速使用

```bash
# 基本使用
chmod +x scripts/切书神技.zsh
./scripts/切书神技.zsh 'book.epub'

# 批量处理
for book in *.epub; do ./scripts/切书神技.zsh "$book"; done
```

## 🔧 常见问题快速修复

### 网络问题
```bash
# 检查连接
ping -c 2 8.8.8.8

# 修复DNS
sudo networksetup -setdnsservers Wi-Fi 8.8.8.8 1.1.1.1
```

### Git推送问题
```bash
# 使用SSH
git remote set-url origin git@github.com:username/repo.git

# 手动上传
tar -czf backup.tar.gz --exclude='.git' .
```

## 📋 分支工作流程

```bash
# 1. 创建新分支
git checkout -b feat/new-feature

# 2. 提交更改
git add . && git commit -m "Add new feature"

# 3. 推送分支  
git push -u origin HEAD

# 4. 通过GitHub创建PR合并到main
```

## 🎯 项目结构

```
Spiral-Up/
├── scripts/           # 核心工具脚本
├── docs/              # 项目文档
├── examples/          # 使用示例  
└── README.md          # 项目概览
``` 