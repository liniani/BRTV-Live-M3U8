# 10分钟自动更新IPTV配置说明

## 已部署的工作流：

1. **主工作流** (`merge-iptv.yml`)
   - 每10分钟自动合并IPTV列表
   - 可手动触发
   - 防冲突处理

2. **激活工作流** (`activate.yml`)
   - 每6小时运行，保持仓库活跃
   - 防止GitHub暂停定时任务

3. **测试工作流** (`test.yml`)
   - 每分钟运行，验证定时任务是否工作

## 使用方法：

### 1. 首次设置：
```bash
# 将上述文件放入对应目录
.github/workflows/merge-iptv.yml
.github/workflows/activate.yml
.github/workflows/test.yml
