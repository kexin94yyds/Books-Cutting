#!/bin/zsh

# 🚀 Spiral-Up 新项目添加助手
# 使用方法: ./tools/new-project.zsh

echo "🌟 Spiral-Up 新项目添加助手"
echo "================================"

# 项目类型选择
echo "\n📂 选择项目类型:"
echo "1) 脚本工具 (scripts/)"
echo "2) 完整项目 (projects/)"  
echo "3) 学习笔记 (notes/)"
echo "4) 小工具 (tools/)"
echo "5) 模板 (templates/)"

read "choice?请选择 (1-5): "

case $choice in
    1) PROJECT_TYPE="scripts"; TYPE_NAME="脚本工具" ;;
    2) PROJECT_TYPE="projects"; TYPE_NAME="完整项目" ;;
    3) PROJECT_TYPE="notes"; TYPE_NAME="学习笔记" ;;
    4) PROJECT_TYPE="tools"; TYPE_NAME="小工具" ;;
    5) PROJECT_TYPE="templates"; TYPE_NAME="模板" ;;
    *) echo "❌ 无效选择"; exit 1 ;;
esac

# 项目名称
read "PROJECT_NAME?📝 项目名称: "
if [[ -z "$PROJECT_NAME" ]]; then
    echo "❌ 项目名称不能为空"
    exit 1
fi

# 项目描述
read "PROJECT_DESC?📄 项目描述: "

# 确认信息
echo "\n📋 项目信息确认:"
echo "类型: $TYPE_NAME"
echo "名称: $PROJECT_NAME"
echo "描述: $PROJECT_DESC"

read "confirm?确认创建? (y/N): "
if [[ $confirm != "y" && $confirm != "Y" ]]; then
    echo "❌ 取消创建"
    exit 0
fi

echo "\n🚀 开始创建项目..."

# 创建分支
BRANCH_NAME="add/$PROJECT_NAME"
echo "🌿 创建分支: $BRANCH_NAME"
git checkout main
git checkout -b "$BRANCH_NAME"

# 创建项目目录
if [[ $PROJECT_TYPE == "scripts" || $PROJECT_TYPE == "tools" ]]; then
    # 脚本和工具直接放在目录下
    echo "📁 准备添加到 $PROJECT_TYPE/ 目录"
else
    # 其他类型创建子目录
    PROJECT_DIR="$PROJECT_TYPE/$PROJECT_NAME"
    echo "📁 创建目录: $PROJECT_DIR"
    mkdir -p "$PROJECT_DIR"
fi

echo "\n✅ 项目结构已准备就绪!"
echo "\n📋 下一步操作:"
echo "1. 将您的文件复制到相应目录"

if [[ $PROJECT_TYPE == "scripts" ]]; then
    echo "   cp your-script.sh scripts/"
    echo "   chmod +x scripts/your-script.sh"
elif [[ $PROJECT_TYPE == "projects" ]]; then
    echo "   cp -r /path/to/your/project/* projects/$PROJECT_NAME/"
elif [[ $PROJECT_TYPE == "notes" ]]; then
    echo "   cp your-notes.md notes/$PROJECT_NAME/"
elif [[ $PROJECT_TYPE == "tools" ]]; then
    echo "   cp your-tool tools/"
else
    echo "   cp your-template templates/$PROJECT_NAME/"
fi

echo "\n2. 创建或编辑README文档"
echo "3. 提交更改:"
echo "   git add ."
echo "   git commit -m \"Add $TYPE_NAME: $PROJECT_DESC\""
echo "   git checkout main"
echo "   git merge --no-ff $BRANCH_NAME"
echo "   git branch -d $BRANCH_NAME"

echo "\n💡 查看详细指南: docs/project-management-guide.md"
echo "🎯 使用快速模板: templates/quick-start.md" 