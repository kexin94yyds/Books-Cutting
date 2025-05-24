# 📚 学习笔记

存放学习总结、读书笔记、课程记录等学习材料。

## 🗂️ 笔记分类

*等待您的第一篇学习笔记！*

## ➕ 添加学习笔记

### 按主题组织
```bash
# 1. 创建分支
git checkout -b add/notes-topic

# 2. 按主题创建目录
mkdir -p notes/topic-name

# 3. 添加笔记文件
cp your-notes.md notes/topic-name/

# 4. 提交
git add .
git commit -m "Add notes: 主题描述"
git checkout main
git merge --no-ff add/notes-topic
```

### 单个笔记文件
```bash
cp your-learning-summary.md notes/
```

## 📋 笔记格式建议

### 学习笔记模板
```markdown
# 主题名称

## 📅 学习信息
- 日期：YYYY-MM-DD
- 来源：书籍/课程/文章
- 时长：学习用时

## 🎯 核心要点
- 要点1
- 要点2

## 📝 详细笔记
...

## 💡 个人思考
...

## 🔗 相关资源
- [链接1](url)
- [链接2](url)
``` 