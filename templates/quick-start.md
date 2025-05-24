# 🚀 快速开始新项目

使用这个模板快速添加新项目到Spiral-Up工具库。

## 📋 新项目检查清单

### 🔍 **第1步：确定项目类型**
- [ ] **脚本工具** (`scripts/`) - 单个可执行脚本
- [ ] **完整项目** (`projects/`) - 有完整代码结构的项目  
- [ ] **学习笔记** (`notes/`) - 学习总结、读书笔记
- [ ] **小工具** (`tools/`) - 辅助工具和实用程序
- [ ] **模板** (`templates/`) - 可复用的项目模板

### 🌿 **第2步：创建分支**
```bash
git checkout main
git checkout -b add/[项目名]
```

### 📁 **第3步：创建项目结构**

#### 脚本工具
```bash
cp your-script.sh scripts/
chmod +x scripts/your-script.sh
```

#### 完整项目
```bash
mkdir -p projects/project-name
cp -r /path/to/your/project/* projects/project-name/
```

#### 学习笔记
```bash
mkdir -p notes/topic-name  # 或直接放在 notes/
cp your-notes.md notes/topic-name/
```

### 📝 **第4步：创建文档**
- [ ] 项目README.md
- [ ] 更新主README.md中的项目列表
- [ ] 添加使用示例（如适用）

### 🔄 **第5步：提交和合并**
```bash
git add .
git commit -m "Add [类型]: [项目描述]"
git checkout main
git merge --no-ff add/[项目名]
```

### ✅ **第6步：清理**
```bash
git branch -d add/[项目名]  # 删除功能分支
```

---

## 📝 **常用命令参考**

### Git分支管理
```bash
# 查看所有分支
git branch -a

# 创建并切换分支
git checkout -b branch-name

# 合并分支（保留分支历史）
git merge --no-ff branch-name

# 删除已合并的分支
git branch -d branch-name
```

### 文件操作
```bash
# 复制文件保持权限
cp -p source dest

# 复制目录及内容
cp -r source/ dest/

# 设置可执行权限
chmod +x script.sh
```

---

## 🎯 **项目命名最佳实践**

### 目录命名
- ✅ `my-awesome-tool`
- ✅ `learning-notes-ai`
- ❌ `My Project`
- ❌ `tool!@#`

### 分支命名
- ✅ `add/pdf-merger`
- ✅ `fix/epub-splitter`
- ✅ `docs/readme-update`
- ❌ `新功能`
- ❌ `fix`

### 提交信息
- ✅ `Add script: PDF合并工具`
- ✅ `Add project: 学习管理系统`
- ✅ `Add notes: Python高级特性学习笔记`
- ❌ `新增文件`
- ❌ `update` 