# grillme

适用于 Codex、Claude Code 和 DeepSeek Harness（DSH）的设计澄清与方案压力测试 Skill。

## 安装

Windows PowerShell：

```powershell
.\install.ps1 -Targets all
```

macOS / Linux：

```bash
./install.sh all
```

也可以只安装到 `codex`、`claude`、`dsh` 或共享的 `agents` 目录。

## 使用

安装后重新打开运行时，然后输入：

```text
$grillme 帮我把这个产品想法澄清成可执行方案
```

## 目录

- `skills/grillme/SKILL.md`：跨运行时统一 Skill
- `install.ps1` / `install.sh`：直接安装脚本
- `docs/`：使用手册与公众号 HTML
- `demo/`：可点击的效果展示

