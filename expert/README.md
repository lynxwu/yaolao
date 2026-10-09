# 药老 · Yao Lao（专家包）

这是一个 WorkBuddy 专家包。完整说明见仓库根目录的 [README.md](../README.md)。

## 快速安装

在仓库根目录运行：

```bash
./install.sh
```

或手动把本目录复制到：

```
${WORKBUDDY_CONFIG_DIR:-$HOME/.workbuddy}/plugins/marketplaces/my-experts/plugins/yaolao
```

## ⚙️ 装完必做

打开 `agents/yaolao.md`，找到 **「第一步：先看数据」**，把表格换成你自己的真实数据源。

**不做这一步，药老只是一个语气严厉的聊天机器人。**

## 文件说明

| 文件 | 作用 |
|---|---|
| `.codebuddy-plugin/plugin.json` | 专家元信息（名称、分类、标签、推荐提示词） |
| `agents/yaolao.md` | **人格核心** —— 三条铁律 + 工作流程 + 特殊情况处理 |
| `avatars/yaolao.png` | 头像（512×512，可自行替换） |
