# Codex 协作规则

- 本项目使用 UTF-8、XeLaTeX、latexmk 和 biblatex/biber，默认用中文沟通。
- 入口是 `main.tex`；正文放在 `sections/`，公共宏包和命令放在 `preamble.tex`，文献放在 `ref.bib`，正文使用 `\cite{文献键}` 引用，图片放在 `figures/`。
- 修改前先阅读相关正文，保持术语、符号、标签和引用风格一致。
- 不编造文献、DOI、数据或实验结论；缺失信息用明确的 TODO 标记。
- 公式、图片、表格使用唯一的 `eq:`、`fig:`、`tab:` 标签，使用交叉引用，避免硬编码编号。
- 尽量小范围修改；未经要求不要重写整篇文章或切换文档类、编译引擎。
- 验证命令：`latexmk -xelatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build main.tex`。
- 编译失败时先定位日志中的首个错误；工具缺失时如实报告，不能声称编译成功。
- `build/` 是生成目录，不直接修改其中内容；不要删除源文件或用户资料。
