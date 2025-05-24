# 📖 使用示例

## EPUB切书工具示例

### 中文书籍处理示例

```bash
# 处理中文技术书籍
./scripts/切书神技.zsh '/path/to/AI的真相原版.epub'
```

**输出结果：**
```
AI的真相原版/
├── txt/
│   ├── 目录.txt
│   ├── 01_chat_gpt_是个_AMA_机器人.txt
│   ├── 02_事实核查员机器人.txt
│   └── ...
└── markdown/
    ├── 目录.md
    ├── 01_chat_gpt_是个_AMA_机器人.md
    └── ...
```

### 英文书籍处理示例

```bash
# 处理英文书籍
./scripts/切书神技.zsh '/path/to/The_Creative_Act.epub'
```

**输出结果：**
```
The_Creative_Act/
├── txt/
│   ├── Contents.txt
│   ├── Everyone_Is_a_Creator.txt
│   ├── The_Source_of_Creativity.txt
│   └── ...
└── markdown/
    ├── Contents.md
    ├── Everyone_Is_a_Creator.md
    └── ...
```

## 批量处理

```bash
# 批量处理多个EPUB文件
for book in *.epub; do
    ./scripts/切书神技.zsh "$book"
done
```

## 常见问题解决

### 问题1：权限不足
```bash
chmod +x scripts/切书神技.zsh
```

### 问题2：pandoc未安装
```bash
# macOS
brew install pandoc

# Ubuntu/Debian
sudo apt-get install pandoc
```

### 问题3：中文文件名处理
脚本自动处理中文字符，无需额外配置。 