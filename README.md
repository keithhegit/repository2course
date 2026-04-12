# repository2course

`repository2course` 是一个持续演进的 **Codebase -> Course 生产仓库**，目标是稳定批量产出可交付的互动课程，并把课程索引同步给独立 Portal 前端。

## 当前定位

- 这是一个**生产仓库**，不是仅示例模板。
- 主要产物是课程目录（`index.html` + `styles.css` + `main.js`）与批量生成脚本。
- 仓库会持续发布 `courses-manifest.json`，供外部 Portal 自动追踪课程清单。

## 产物结构

- `skill-install/codebase-to-course/`：Skill 规则与参考模板
- `generate_batch_courses*.py`：分批课程生成器
- `backfill_all_courses_once.py`：全量回灌脚本（统一重建历史课程）
- `*-course/`：各课程目录
- `courses-manifest.json`：机器可读课程索引

## 关键约束（SKILL.md）

- `Source Confidence Contract`
- `Network Fallback Contract`
- `Quality Gate Contract`
- `Header Link Contract`
- `Batch Resume Contract`
- `Anti-Homogenization Contract`
- `Execution Discipline Contract`

这些约束用于控制批量质量、网络波动容错、以及“千仓千面”的差异化课程表达。

## Portal 对接

- manifest 文件：`courses-manifest.json`
- 字段包含：
  - `slug`
  - `title`
  - `repo`
  - `path`
  - `github_tree_url`
  - `course_url`
  - `updated_at`
- 预期消费者：`repository2course-portal`（独立前端仓库）

## 使用方式（Claude Code Skill）

1. 将 `codebase-to-course` 拷贝到 `~/.claude/skills/`
2. 在目标项目中触发：
   - `Turn this codebase into an interactive course`
   - `Make a course from this project`
   - `Explain this codebase interactively`

## 治理

- License: Apache-2.0
- Contributing: `CONTRIBUTING.md`
- Security: `SECURITY.md`
- Code of Conduct: `CODE_OF_CONDUCT.md`
