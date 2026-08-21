# grillme：先问清楚，再开始做

`grillme` 是一个面向 Codex、Claude Code 与 DeepSeek Harness（DSH）的方案澄清 Skill。它会一次只问一个关键问题，同时给出推荐答案与主要取舍。

## 安装

在项目目录运行：

```powershell
.\install.ps1 -Targets all
```

或：

```bash
./install.sh all
```

| 运行时 | 默认目录 |
| --- | --- |
| Codex | `~/.codex/skills/grillme` |
| Claude Code | `~/.claude/skills/grillme` |
| DSH | `~/.dsh/skills/grillme` |
| 共享目录 | `~/.agents/skills/grillme` |

安装后重新打开对应运行时，让 Skill 目录重新扫描。

## 调用

```text
$grillme 我想做一个面向小团队的库存管理工具
```

## 工作方式

1. 给出推荐答案。
2. 说明接受它的主要取舍。
3. 只提出一个关键问题。
4. 记录事实、假设、决策、风险和未决项。
5. 发现前提被推翻时，回到相关决策重新确认。

如果答案已经存在于代码库、文档或测试中，`grillme` 应先检查，而不是把问题甩回给你。

## 控制词

| 输入 | 作用 |
| --- | --- |
| `accept` | 接受推荐答案 |
| `change: …` | 指定替代方案 |
| `unknown` | 采用可逆默认值或最便宜的验证 |
| `skip` | 暂时跳过并记录影响 |
| `summary` | 查看当前决策台账 |
| `stop` | 立即输出当前决策简报 |

## 结束标准

当目标、边界、非目标、成功标准、关键取舍、风险和下一步已经足够清晰时结束。结束访谈不等于授权实施；需要另行明确要求开始修改或构建。

