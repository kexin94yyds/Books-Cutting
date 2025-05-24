# 🔧 技术问题排除指南

本文档记录了在项目开发过程中遇到的技术问题、诊断过程、解决方案和预防措施。

---

## 📋 问题索引

- [案例001：GitHub连接超时问题](#案例001github连接超时问题)
- [预留：未来问题记录区](#预留未来问题记录区)

---

## 案例001：GitHub连接超时问题

### 📅 **问题信息**
- **日期**：2024-05-24
- **严重程度**：🔴 高（阻止开发工作流程）
- **影响范围**：Git推送、拉取、SSH连接
- **解决状态**：✅ 已解决

### 🚨 **问题症状**
```bash
# 典型错误信息
fatal: unable to access 'https://github.com/xxx.git/': 
Failed to connect to github.com port 443 after 75011 ms: Couldn't connect to server

# 或者
fatal: unable to access 'https://github.com/xxx.git/': 
Recv failure: Operation timed out
```

### 🔍 **诊断步骤**

#### 1. 基础网络连接测试
```bash
ping -c 4 8.8.8.8      # ✅ 正常
ping -c 4 google.com    # ❌ 超时，怀疑DNS问题
```

#### 2. DNS配置检查
```bash
networksetup -getdnsservers Wi-Fi  # 没有设置DNS服务器
nslookup github.com                 # 可以解析，但ping不通
```

#### 3. 直接连接测试
```bash
curl -I https://github.com --connect-timeout 10  # 超时
ssh -T git@github.com -o ConnectTimeout=10       # 连接被拒绝
```

### 🎯 **根本原因**
1. **DNS配置不当**：Wi-Fi没有配置DNS服务器
2. **网络环境限制**：当前网络阻止GitHub连接（端口443和22）

### ✅ **解决方案**

#### 方案A：修复DNS配置
```bash
sudo networksetup -setdnsservers Wi-Fi 8.8.8.8 1.1.1.1
sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder
```

#### 方案B：手动上传（最可靠）
```bash
tar -czf project-backup.tar.gz --exclude='.git' .
# 通过GitHub网页界面上传文件
```

#### 方案C：使用SSH（如果可用）
```bash
ssh-keygen -t ed25519 -C "email@example.com" -f ~/.ssh/id_ed25519 -N ""
cat ~/.ssh/id_ed25519.pub  # 添加到GitHub
git remote set-url origin git@github.com:username/repository.git
```

### 🛡️ **预防措施**
1. 设置可靠的DNS服务器
2. 准备多种推送方式（SSH、GitHub Desktop、手动上传）
3. 定期检查网络连接

---

## 🔮 预留：未来问题记录区

### 模板格式：
```markdown
## 案例00X：[问题标题]
### 📅 问题信息
### 🚨 问题症状  
### 🔍 诊断步骤
### 🎯 根本原因
### ✅ 解决方案
### 🛡️ 预防措施
```

---

## 📞 **快速诊断命令**

```bash
# 网络诊断
ping -c 4 8.8.8.8                   # 基础连接
ping -c 4 google.com                # DNS解析
curl -I https://github.com --connect-timeout 10  # GitHub HTTPS
ssh -T git@github.com               # GitHub SSH
networksetup -getdnsservers Wi-Fi   # DNS设置
netstat -rn | grep default          # 路由检查

# Git诊断  
git config --list                   # Git配置
git remote -v                       # 远程仓库
git status                          # 仓库状态
``` 