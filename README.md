# 📚 EPUB切书神技

智能EPUB电子书切分工具 - 自动识别章节标题，智能命名文件

## 🚀 快速使用

```bash
# 给脚本添加执行权限
chmod +x scripts/切书神技.zsh

# 使用脚本处理EPUB文件
./scripts/切书神技.zsh 'your-book.epub'
```

## ✨ 功能特色

- **智能章节识别**：自动提取中英文章节标题
- **多格式输出**：同时生成Markdown和纯文本格式
- **完整文档结构**：
  - 单独章节文件（markdown/ 和 txt/ 目录）
  - 完整合并文档（complete.md 和 complete_structured.txt）
  - 目录索引文件（index.md 和 index.txt）
- **智能文件命名**：根据章节内容自动生成有意义的文件名
- **图片提取**：自动提取并保存书中的图片到images目录

## 📁 输出结构

处理完成后会在同名目录下生成：

```
your-book/
├── html/                    # 原始HTML文件
├── markdown/                # Markdown格式章节
│   ├── index.md            # 目录索引
│   ├── 第一章_开始.md       # 各章节文件
│   └── ...
├── txt/                     # 纯文本格式章节
│   ├── index.txt           # 目录索引
│   ├── 第一章_开始.txt      # 各章节文件
│   └── ...
├── images/                  # 提取的图片文件
├── complete.md              # 完整Markdown文档
└── complete_structured.txt  # 完整结构化文本
```

## 🔧 系统要求

- macOS系统
- 已安装Pandoc：`brew install pandoc`
- zsh shell（macOS默认）

## 💡 使用技巧

1. **文件路径**：支持拖拽EPUB文件到终端获取路径
2. **批量处理**：可以编写简单的循环脚本处理多个文件
3. **自定义输出**：可以根据需要修改脚本中的输出格式

---

🎯 **让电子书阅读和整理更高效！** 