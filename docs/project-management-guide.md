# 📁 项目管理指南

本指南说明如何向Spiral-Up学习工具库添加新项目，保持整洁的组织结构。

---

## 🗂️ **目录结构规划**

```
Spiral-Up/
├── scripts/           # 实用脚本工具 (如：切书神技.zsh)
├── projects/          # 完整项目代码 (如：网站、应用)
├── notes/             # 学习笔记和总结
├── tools/             # 小工具和实用程序
├── templates/         # 项目模板和样板代码
├── docs/              # 项目文档
├── examples/          # 使用示例
└── README.md          # 项目概览
```

---

## 🚀 **添加新项目的标准流程**

### **第1步：确定项目类型**

| 类型 | 目录 | 说明 | 示例 |
|------|------|------|------|
| **脚本工具** | `scripts/` | 单个可执行脚本 | 切书工具、批量处理脚本 |
| **完整项目** | `projects/` | 有完整代码结构的项目 | 网站、桌面应用、API |
| **学习笔记** | `notes/` | 学习总结、读书笔记 | 技术文档、课程笔记 |
| **小工具** | `tools/` | 辅助工具和实用程序 | 配置文件、快捷脚本 |
| **模板** | `templates/` | 可复用的项目模板 | 项目脚手架、代码模板 |

### **第2步：使用分支工作流程**

```bash
# 1. 确保在最新的main分支
git checkout main
git pull origin main  # 如果网络允许

# 2. 创建功能分支（按类型命名）
git checkout -b add/project-name
# 或
git checkout -b add/script-name
# 或  
git checkout -b add/notes-topic

# 3. 添加项目文件
# [按照下面的具体步骤操作]

# 4. 提交更改
git add .
git commit -m "Add [项目类型]: [项目描述]"

# 5. 合并到main
git checkout main
git merge --no-ff add/project-name
```

### **第3步：按类型添加项目**

#### **🔧 添加脚本工具**
```bash
# 示例：添加新的处理工具
cp your-script.sh scripts/
chmod +x scripts/your-script.sh

# 更新文档
echo "## 新工具名称" >> docs/README.md
echo "工具描述和使用方法" >> docs/README.md
```

#### **📦 添加完整项目**
```bash
# 创建项目目录
mkdir -p projects/project-name
cp -r /path/to/your/project/* projects/project-name/

# 创建项目README
cat > projects/project-name/README.md << 'EOF'
# 项目名称

## 简介
项目描述

## 安装和使用
...

## 特性
...
EOF
```

#### **📚 添加学习笔记**
```bash
# 按主题组织
mkdir -p notes/topic-name
cp your-notes.md notes/topic-name/

# 或单个文件
cp your-learning-summary.md notes/
```

#### **🛠️ 添加小工具**
```bash
cp your-tool tools/
# 添加使用说明到 tools/README.md
```

---

## 📝 **项目文档更新**

每次添加新项目后，需要更新以下文档：

### **1. 更新主README**
```bash
# 编辑根目录的README.md
# 在相应章节添加新项目的简介
```

### **2. 更新快速参考**
```bash
# 如果是常用工具，添加到 docs/quick-reference.md
```

### **3. 创建项目专属文档**
每个重要项目都应该有自己的README.md文件

---

## 🎯 **具体示例：添加一个网站项目**

```bash
# 1. 创建分支
git checkout -b add/my-website

# 2. 创建项目目录
mkdir -p projects/my-website

# 3. 复制项目文件
cp -r ~/Desktop/my-website/* projects/my-website/

# 4. 创建项目文档
cat > projects/my-website/README.md << 'EOF'
# 我的个人网站

## 技术栈
- HTML/CSS/JavaScript
- [其他技术]

## 本地运行
```bash
cd projects/my-website
python -m http.server 8000
```

## 部署
...
EOF

# 5. 更新主README
# 在"项目列表"章节添加：
# - **我的个人网站** (`projects/my-website/`) - 个人展示网站

# 6. 提交和合并
git add .
git commit -m "Add project: 个人网站项目"
git checkout main
git merge --no-ff add/my-website
```

---

## 📋 **项目命名规范**

### **目录命名**
- 使用小写字母和连字符：`my-awesome-tool`
- 简洁明了，见名知意
- 避免空格和特殊字符

### **分支命名**
- `add/项目名` - 添加新项目
- `fix/项目名` - 修复项目问题  
- `docs/项目名` - 更新项目文档
- `feat/功能名` - 添加新功能

### **提交信息**
```bash
# 好的示例
git commit -m "Add script: PDF合并工具"
git commit -m "Add project: 学习管理系统"
git commit -m "Add notes: Python高级特性学习笔记"

# 不推荐
git commit -m "新增文件"
git commit -m "update"
```

---

## 🔄 **定期维护**

### **每月检查**
- [ ] 清理不需要的分支：`git branch -d branch-name`
- [ ] 更新文档索引
- [ ] 检查项目README是否需要更新

### **季度整理**
- [ ] 重新组织目录结构（如有必要）
- [ ] 归档过时的项目
- [ ] 更新技术栈文档

---

## 🚨 **注意事项**

1. **敏感信息**：永远不要提交包含密码、API密钥的文件
2. **大文件**：避免提交大型二进制文件，使用Git LFS或外部存储
3. **依赖管理**：为每个项目维护依赖列表（requirements.txt、package.json等）
4. **文档同步**：添加项目时一定要同步更新相关文档

---

**现在您就有了完整的项目管理体系！** 🎉 