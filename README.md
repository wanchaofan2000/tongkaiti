# 硕士学位论文开题报告

中文开题报告：XeLaTeX + latexmk + biblatex/biber，适用于 VS Code。文献综述纳入“国内外研究现状”，最终生成一份开题报告。

## 目录

```text
.vscode/          编辑器设置、推荐扩展和构建任务
AGENTS.md         Codex 项目协作规则
main.tex          文档入口
preamble.tex      公共宏包和命令
sections/         摘要与开题报告各部分正文
references.bib    参考文献
figures/          图片资源
notes/outline.md  写作大纲与待办
build/            编译时生成，已忽略
```

正文文件与目录对应如下：

| 文件 | 内容 |
| --- | --- |
| `sections/abstract.tex` | 摘要及关键词 |
| `sections/introduction.tex` | 一、选题背景与意义 |
| `sections/research_status.tex` | 二、国内外研究现状 |
| `sections/research_plan.tex` | 三、学位论文研究方案 |
| `sections/work_plan.tex` | 四、学位论文工作计划 |
| `sections/references.tex` | 五、主要参考文献 |

研究方案仅设“研究问题、研究内容、研究方法、创新之处”四个二级标题。研究进度表合并时间与阶段任务，预期成果在表后简述。具体写作约定见 `notes/outline.md`。

`sections/method.tex`、`sections/conclusion.tex` 为保留的旧示例源文件，已退出主文件编译；`references.bib` 中原有的 LaTeX 示例文献也不再引用。正文中的 `TODO` 表示尚待提供或核实的信息。

## 使用

1. 安装 TeX Live，确保包含 `xelatex`、`latexmk`、`biber`、`ctex` 和 Fandol 字体；完成后重启 VS Code，使 PATH 生效。若使用 MiKTeX，还需保证 latexmk 所需的 Perl 可用。
2. 在 VS Code 扩展面板中搜索 `@recommended`，安装本工作区推荐的 LaTeX Workshop 和 Codex 扩展，并在 Codex 中登录。
3. 打开 `main.tex`，修改标题、作者及各章节。按 `Ctrl+Shift+B` 编译，或保存 TeX 文件触发 LaTeX Workshop 编译。
4. 在命令面板运行 `LaTeX Workshop: View LaTeX PDF file` 查看 PDF；输出文件为 `build/main.pdf`。

终端编译（在项目根目录执行）：

```powershell
latexmk -xelatex -synctex=1 -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build main.tex
```

latexmk 会根据需要运行 biber 并重复编译，更新参考文献及交叉引用。

## 与 Codex 协作

项目根目录的 `AGENTS.md` 提供持续的项目约定。可直接在 Codex 中提出：

- “根据 notes/outline.md 完善开题报告，保留已确认的目录结构。”
- “润色 sections/introduction.tex，保留原意、引用键和数学符号。”
- “检查全文未定义引用、术语一致性与公式编号，并尝试编译。”
- “根据我提供的真实文献资料补充 references.bib，不编造来源。”

先提供研究主题和材料，再让 Codex 逐节修改；文献与研究结论需人工核实。

## 环境检查

```powershell
Get-Command xelatex, latexmk, biber
```

如果找不到命令，应先安装 TeX 发行版或修复 PATH。当前模板固定使用 Fandol 中文字体，减少对 Windows 本地字体的依赖。
