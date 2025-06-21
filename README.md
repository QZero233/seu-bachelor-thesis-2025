# 东南大学本科毕业设计（论文）XeLaTeX模版

本项目包含东南大学本科毕业设计（论文）XeLaTeX模版，参考规范为教务处发布的2025年3月版毕业设计（论文）规范。

若发现问题，请提交Issue进行讨论，欢迎合理的Pull Request。

## 项目说明

本项目fork自[SuikaXhq](https://github.com/SuikaXhq)大佬的2022版本模板，原项目链接[https://github.com/SuikaXhq/seu-bachelor-thesis-2022](https://github.com/SuikaXhq/seu-bachelor-thesis-2022)，本项目参考了2025年最新的要求，对封面进行了修改，并添加了AI工具使用情况表相关的模板。

本项目依照原项目中的GPL-3.0协议进行开源，如果后续需要另建仓库进行维护请在创建仓库时勾选使用GPL-3.0开源协议。

## 依赖环境

- TeX Live 2020及以上或MikTeX2020及以上。使用TeX Live 2022编译会发生不明原因的错误，推荐使用2020或2021版本。

## 使用方法

文档使用方法的详细介绍请参见[样例论文](https://github.com/QZero233/seu-bachelor-thesis-2025/blob/main/sample_thesis.pdf)和[使用手册](https://github.com/QZero233/seu-bachelor-thesis-2025/blob/main/使用手册/seuthesis-2022-manual-1.1.0.pdf)。

- Windows下：

  1. 运行

     ```cmd
     ./sample_thesis.bat
     ```
     以编译样例论文。
- Mac下：

  1. 为sample_thesis.tex添加文档类选项“mac”，如

     ```latex
     \documentclass[mac]{seuthesis-2022}
     ```

  以支持mac字体。

  2. 运行

     ```shell
     ./sample_thesis.sh
     ```
     以编译样例论文。
- Overleaf下：

  1. 上传以下内容至Overleaf项目：

     - resources文件夹及其中文件
     - fig文件夹及其中文件
     - seuthesis-2022.cfg
     - seuthesis-2022.cls
     - sample_thesis.tex
     - reference.bib
  2. 选择Overleaf项目选项：

     - 编译器（Compiler）：XeLaTeX
     - TeX Live版本（TeX Live Version）：2021
     - 主文档（main document）：sample_thesis.tex
  3. 为sample_thesis.tex添加文档类选项“fandol”，如

     ```latex
     \documentclass[fandol]{seuthesis-2022}
     ```
  4. 编译sample_thesis.tex。
- VS Code下：（贡献者：[haoruilee](https://github.com/haoruilee)、[SuikaXhq](https://github.com/SuikaXhq)，代码文档请见.vscode/README.md）

  1. 安装插件[LaTeX WorkShop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
  2. 需要安装[Perl](https://strawberryperl.com/)才能使用LaTeXmk；若没有Perl，可以使用MikTeX的TeXify进行编译。
  3. 使用vscode打开本项目根目录
  4. 打开sample_thesis.tex，左侧会出现花写的TeX插件，文件右上角会出现 *▶︎（Build LaTeX Project）*
     - TeX Live用户：请点击下拉菜单中的Recipe: LaTeXmk
     - MikTeX用户：请点击下拉菜单中的Recipe: TeXify
  5. 一键build，等待build文件夹中输出编译结果
     - TeXify输出在根目录下
