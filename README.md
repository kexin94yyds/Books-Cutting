# 🌟 Spiral-Up Learning Tools

我的学习螺旋工具集 - 提升学习效率的实用工具库

## 📁 项目结构

```
Spiral-Up/
├── scripts/           # 实用脚本工具
│   └── 切书神技.zsh   # 智能EPUB切书工具
├── projects/          # 完整项目代码
├── notes/             # 学习笔记和总结  
├── tools/             # 小工具和实用程序
├── templates/         # 项目模板和样板代码
├── docs/              # 项目文档
│   ├── README.md                    # 详细使用说明
│   ├── troubleshooting-guide.md     # 故障排除指南
│   ├── quick-reference.md           # 快速参考
│   └── project-management-guide.md  # 项目管理指南
├── examples/          # 使用示例
└── README.md          # 项目概览
```

## 🚀 快速开始

### 📚 EPUB切书工具

智能识别章节标题，自动命名文件的电子书切分工具：

```bash
chmod +x scripts/切书神技.zsh
./scripts/切书神技.zsh 'your-book.epub'
```

详细文档：[切书工具使用说明](docs/README.md)

## 🎯 项目特色

- **智能识别**：自动提取中英文章节标题
- **多格式输出**：支持Markdown和纯文本
- **完整文档**：详细的使用说明和故障排除指南
- **标准化管理**：规范的Git工作流程和项目组织
- **可扩展架构**：支持多种类型项目的添加

## 📖 现有工具

### 🔧 脚本工具
- **切书神技** (`scripts/切书神技.zsh`) - 智能EPUB电子书切分工具

### 📚 文档系统
- **故障排除指南** (`docs/troubleshooting-guide.md`) - 技术问题诊断和解决
- **快速参考** (`docs/quick-reference.md`) - 常用命令和操作速查
- **项目管理指南** (`docs/project-management-guide.md`) - 新项目添加流程

## ➕ 如何添加新项目

查看详细指南：[项目管理指南](docs/project-management-guide.md)

### 快速添加流程：
```bash
# 1. 创建功能分支
git checkout -b add/your-project

# 2. 按类型添加到相应目录
# scripts/    - 脚本工具
# projects/   - 完整项目  
# notes/      - 学习笔记
# tools/      - 小工具
# templates/  - 项目模板

# 3. 提交和合并
git add .
git commit -m "Add [类型]: [描述]"
git checkout main
git merge --no-ff add/your-project
```

## 🔧 故障排除

遇到问题？查看：[故障排除指南](docs/troubleshooting-guide.md)

常见问题快速解决：
- **网络连接问题**：DNS配置和GitHub访问
- **Git推送失败**：多种备用推送方案
- **工具权限问题**：文件权限设置

## 📞 快速参考

日常操作速查：[快速参考指南](docs/quick-reference.md)

---

💡 **学习即螺旋上升，工具让进步更高效！**

🎯 **目标**：构建一个完整的学习工具生态系统，让知识管理和技能提升更加系统化。 