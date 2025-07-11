%%
%% This is file `seuthesis-2022.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% seuthesis-2022.dtx  (with options: `cls')
%% 
%% Copyright (C) 2022 Haoqing Xu
%% School of Artificial Intelligence, Southeast University.
%% --------------------------------------------------------------------------
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3c of this license or (at your option) any later
%% version. This version of this license is in
%%    http://www.latex-project.org/lppl/lppl-1-3c.txt
%% and the latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% The Current Maintainer of this work is Haoqing Xu.
%% 
%% Home Page of the Project: https://github.com/SuikaXhq/seu-bachelor-thesis-2022
%% --------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{seuthesis-2022}
  [2024/03/08 1.1.0 LaTeX Template for SEU Bachelor Thesis Class 2022]



\RequirePackage{ifxetex}
\RequireXeTeX

\input{seuthesis-2022.cfg}
\DeclareOption{win}{%
  \seut@font@wintrue
  \seut@font@macfalse
}
\DeclareOption{mac}{%
  \seut@font@winfalse
  \seut@font@mactrue
}
\DeclareOption{STfonts}{%
  \seut@font@STtrue
  \seut@font@FZfalse
  \seut@font@fandolfalse
}
\DeclareOption{FZfonts}{%
  \seut@font@STfalse
  \seut@font@FZtrue
  \seut@font@fandolfalse
}
\DeclareOption{fandol}{%
  \seut@font@STfalse
  \seut@font@FZfalse
  \seut@font@fandoltrue
}
\DeclareOption{globalcaption}{%
  \seut@caption@figure@globaltrue
  \seut@caption@table@globaltrue
  \seut@caption@equation@globaltrue
}
\DeclareOption{globaleq}{%
  \seut@caption@equation@globaltrue
}
\DeclareOption{globalfigure}{%
  \seut@caption@figure@globaltrue
}
\DeclareOption{globaltable}{%
  \seut@caption@table@globaltrue
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexrep}}
\ProcessOptions\relax

\LoadClass[UTF8,zihao=-4]{ctexrep}[2020/05/05]
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage[titles]{tocloft}
\RequirePackage[perpage]{footmisc}
\RequirePackage{enumitem}
\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{float}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage[ruled,linesnumbered]{algorithm2e}
\RequirePackage[hyphens]{url}
\RequirePackage{hyperref}
\hypersetup{
    hyperfootnotes=true,
    hyperindex=true,
    pageanchor=true,
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=0,
    breaklinks=true,
    colorlinks=false,
    linkcolor=black,
    plainpages=false,
    pdfpagelabels=true,
    pdfborder=0 0 0,
}
\urlstyle{same}
\RequirePackage[sort&compress]{gbt7714}
\RequirePackage{natbib}
\RequirePackage{hypernat}
\RequirePackage{tocbibind}
\RequirePackage{ifthen}
\RequirePackage{calc}
\RequirePackage{etoolbox}
\RequirePackage{xeCJKfntef}
\RequirePackage{doc}
\RequirePackage{pdfpages}
\RequirePackage{wallpaper}

\geometry{
  a4paper,
  left=2.5cm,
  right=2cm,
  includehead=true,
  includefoot=true,
  headheight=22pt,
  headsep=0.5\seut@const@length@skipbetweenword,
  footskip=22pt,
  top=1.5cm,
  bottom=1.75cm,
}

\ifseut@font@win
\newcommand*{\seut@var@str@font@serif}      {\seut@const@str@font@serif@win}
\newcommand*{\seut@var@str@font@sans}       {\seut@const@str@font@sans@win}
\newcommand*{\seut@var@str@font@mono}       {\seut@const@str@font@mono@win}
\newcommand*{\seut@var@str@font@songti}     {\seut@const@str@font@songti@win}
\newcommand*{\seut@var@str@font@heiti}      {\seut@const@str@font@heiti@win}
\newcommand*{\seut@var@str@font@fangsong}   {\seut@const@str@font@fangsong@win}
\newcommand*{\seut@var@str@font@kaiti}      {\seut@const@str@font@kaiti@win}
\fi
\ifseut@font@mac
\newcommand*{\seut@var@str@font@serif}      {\seut@const@str@font@serif@mac}
\newcommand*{\seut@var@str@font@sans}       {\seut@const@str@font@sans@mac}
\newcommand*{\seut@var@str@font@mono}       {\seut@const@str@font@mono@mac}
\newcommand*{\seut@var@str@font@songti}     {\seut@const@str@font@songti@mac}
\newcommand*{\seut@var@str@font@heiti}      {\seut@const@str@font@heiti@mac}
\fi
\ifseut@font@FZ
\renewcommand*{\seut@var@str@font@songti}     {\seut@const@str@font@songti@FZ}
\renewcommand*{\seut@var@str@font@heiti}      {\seut@const@str@font@heiti@FZ}
\renewcommand*{\seut@var@str@font@fangsong}   {\seut@const@str@font@fangsong@FZ}
\renewcommand*{\seut@var@str@font@kaiti}      {\seut@const@str@font@kaiti@FZ}
\fi
\ifseut@font@ST
\renewcommand*{\seut@var@str@font@songti}     {\seut@const@str@font@songti@ST}
\renewcommand*{\seut@var@str@font@heiti}      {\seut@const@str@font@heiti@ST}
\renewcommand*{\seut@var@str@font@fangsong}   {\seut@const@str@font@fangsong@ST}
\renewcommand*{\seut@var@str@font@kaiti}      {\seut@const@str@font@kaiti@ST}
\fi
\ifseut@font@fandol
\renewcommand*{\seut@var@str@font@songti}     {\seut@const@str@font@songti@fandol}
\renewcommand*{\seut@var@str@font@heiti}      {\seut@const@str@font@heiti@fandol}
\renewcommand*{\seut@var@str@font@fangsong}   {\seut@const@str@font@fangsong@fandol}
\renewcommand*{\seut@var@str@font@kaiti}      {\seut@const@str@font@kaiti@fandol}
\fi
\xeCJKsetup{
  AutoFakeBold=true,
  AutoFakeSlant=true,
}
\setCJKfamilyfont{zhsong}{\seut@var@str@font@songti}
\setCJKfamilyfont{zhhei}{\seut@var@str@font@heiti}
\ifseut@font@mac\else
\setCJKfamilyfont{zhfs}{\seut@var@str@font@fangsong}
\setCJKfamilyfont{zhkai}{\seut@var@str@font@kaiti}
\fi
\setCJKmainfont{\seut@var@str@font@songti}
\setCJKsansfont{\seut@var@str@font@heiti}
\ifseut@font@mac\else
\setCJKmonofont{\seut@var@str@font@fangsong}
\fi
\setmainfont{\seut@var@str@font@serif}
\setsansfont{\seut@var@str@font@sans}
\setmonofont{\seut@var@str@font@mono}

\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
\fancypagestyle{front}{%
  \fancyhf{}%
  \fancyfoot[C]{\zihao{-5}\thepage}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
\fancypagestyle{main}{%
  \fancyhf{}%
  \fancyhead[C]{\zihao{-5}\seut@const@str@headertext}%
  \fancyfoot[C]{\zihao{-5}\thepage}%
  \renewcommand{\headrulewidth}{1pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
\pagestyle{plain}

\newcommand{\frontmatter}{%
  \clearpage
  \pagenumbering{Roman}
  \pagestyle{front}
  % \setcounter{secnumdepth}{-2}
  \ctexset{
    chapter/numbering = false,
    chapter/pagestyle = front,
  }
}
\newcommand{\mainmatter}{%
  \clearpage
  \pagenumbering{arabic}
  \pagestyle{main}
  \ctexset{
    %secnumdepth = subsection,
    chapter/numbering = true,
    chapter/pagestyle = main,
  }
}

\newcommand*{\seut@control@mainlinespread}{\setstretch{\seut@const@num@linespread@main}}
\newcommand*{\seut@control@declarelinespread}{\setstretch{\seut@const@num@linespread@delaration}}
\newcommand*{\seut@control@toclinespread}{\setstretch{\seut@const@num@linespread@toc}}
\newcommand*{\seut@control@biblinespread}{\setstretch{\seut@const@num@linespread@bib}}
\linespread{\seut@const@num@linespread@main}
\newcommand*{\fixtitlespread}{\vspace*{-\seut@const@length@skipbetweenword}}
\setdisplayskipstretch{0.5}

\ctexset{
  contentsname = \seut@const@str@contentsname,
  appendixname = \seut@const@str@appendixname,
  bibname      = \seut@const@str@bibname,
  chapter = {
    format = {%
      \zihao{3}\bfseries\centering\heiti%
    },
    aftername = \seut@space{0.5},
    pagestyle = main,
    beforeskip = 8.3pt - 0.5\seut@const@length@skipbetweenword + 0.05cm,
    afterskip = 8.3pt + 0.5\seut@const@length@skipbetweenword,
    fixskip = true,
  },
  section = {
    format = {%
      \zihao{4}\heiti%
    },
    hang = false,
    aftername = \ ,
    beforeskip = 9.3pt + 0.5\seut@const@length@skipbetweenword,
    afterskip = 9.3pt + 0.5\seut@const@length@skipbetweenword,
    fixskip = true,
  },
  subsection = {%
    format = {%
      \zihao{-4}\bfseries\songti
    },
    hang = false,
    aftername = \ ,
    beforeskip = \seut@const@length@skipbetweenword,
    afterskip = \seut@const@length@skipbetweenword,
    fixskip = true,
  },
  appendix = {%
    name = {\appendixname},
  },
  %secnumdepth = subsection,
  %tocdepth    = subsection,
}
\setcounter{tocdepth}{2}
\setlist{
  itemsep = 0pt,
  topsep = 0pt,
  parsep = 0pt,
}

\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftsecfont}{\normalfont}
\renewcommand{\cftsubsecfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftsecpagefont}{\normalfont}
\renewcommand{\cftsubsecpagefont}{\normalfont}
\cftsetindents{chapter}{\parindent}{3.5\ccwd}
\cftsetindents{section}{2\parindent}{1.33em}
\cftsetindents{subsection}{3\parindent}{2em}
\setlength{\cftparskip}{0pt}
\setlength{\cftbeforechapskip}{0pt}
\setlength{\cftbeforesecskip}{0pt}
\setlength{\cftbeforesubsecskip}{0pt}
\renewcommand{\cftdot}{.}
\renewcommand{\cftdotsep}{0}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}
\cftsetpnumwidth{1em}

\ifseut@caption@figure@global
  \counterwithout{figure}{chapter}
  \renewcommand{\thefigure}{\arabic{figure}}
\else
  \counterwithin{figure}{chapter}
  \renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\fi
\ifseut@caption@table@global
  \counterwithout{table}{chapter}
  \renewcommand{\thetable}{\arabic{table}}
\else
  \counterwithin{table}{chapter}
  \renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\fi
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\captionsetup[subfigure]{labelformat=simple}
\captionsetup[figure]{labelsep=space}
\captionsetup[table]{labelsep=space}
\captionsetup{font=small}
\captionsetup[subfigure]{font=small}
\captionsetup[table]{position=above}
\captionsetup[figure]{position=below}
\setlength{\intextsep}{\seut@const@length@skipbetweenword}
\setlength{\textfloatsep}{\seut@const@length@skipbetweenword}
\setlength{\floatsep}{\seut@const@length@skipbetweenword}
\setlength{\abovecaptionskip}{7pt}
\setlength{\belowcaptionskip}{7pt}
\setlength\heavyrulewidth{1pt}
\setlength\lightrulewidth{1pt}

\tikzset{seut@circled@node/.style={
    circle,
    draw,
    inner sep=0.05ex,
    text depth=0ex,
    font=\normalfont,
    minimum size=1ex
    }
}
\newcommand*\circled[1]{%
    \ifnumcomp{#1}{>}{9}{%
    % if > 9:
    \tikz[baseline=(char.base)]\node[seut@circled@node]
      (char) {\addfontfeature{LetterSpace=-9.0}\scalebox{0.5}[1]{\bfseries#1}};}{%
    % if <= 9:
    \tikz[baseline=(char.base)]\node[seut@circled@node] (char) {#1};}%
}
\renewcommand{\thefootnote}{%
    \raisebox{0.25ex}{%
    \scalebox{0.7}{\protect\circled{%
            \arabic{footnote}}%
        }%
    }%
}

\ifseut@caption@equation@global
  \counterwithout{equation}{chapter}
  \renewcommand{\theequation}{\arabic{equation}}
\else
  \counterwithin{equation}{chapter}
  \renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
\fi
\renewcommand{\algorithmcfname}{算法}

\AtBeginEnvironment{thebibliography}{%
  \seut@control@biblinespread
  \zihao{5}
}
\setlength{\bibsep}{0pt}

\renewcommand{\title}[2]{%
  \renewcommand*{\seut@var@str@titlepage@title}{#1#2}
  \renewcommand*{\seut@var@str@titlepage@title@up}{#1}
  \renewcommand*{\seut@var@str@titlepage@title@down}{#2}}
\newcommand{\studentnum}[1]{\renewcommand*{\seut@var@str@titlepage@studentnum}{#1}}
\renewcommand{\author}[1]{\renewcommand*{\seut@var@str@titlepage@author}{#1}}
\newcommand{\department}[1]{\renewcommand*{\seut@var@str@titlepage@department}{#1}}
\newcommand{\major}[1]{\renewcommand*{\seut@var@str@titlepage@major}{#1}}
\newcommand{\supervisor}[1]{\renewcommand*{\seut@var@str@titlepage@supervisor}{#1}}
\newcommand{\period}[1]{\renewcommand*{\seut@var@str@titlepage@period}{#1}}
\newcommand{\seut@control@placeholder}[2][\linewidth]{\CJKunderline{\makebox[#1]{#2}}}
\def\seutplaceholder{\@ifnextchar[\seut@control@placeholder\CJKunderline}
\newcommand{\seut@var@str@cover@date}{}
\newcommand{\coverDate}[1]{\renewcommand*{\seut@var@str@cover@date}{#1}}
\newif\ifseut@use@compressed@cover@background\seut@use@compressed@cover@backgroundfalse
\newcommand{\useCompressedCoverBackground}{\seut@use@compressed@cover@backgroundtrue}
\newcommand{\make@cover@field}[1]{\parbox[c][1cm]{3cm}{\centering \zihao{4}\heiti\textbf{#1}}}
\newcommand{\make@cover@value}[1]{\zihao{-2}\CJKfamily{song} #1}
\newcommand{\make@cover@title}[1]{\zihao{2}\heiti\textbf{#1}}
\renewcommand{\maketitle}{%
  \GetFileInfo{seuthesis-2022.cls}
  \hypersetup{
    pdfauthor={\seut@var@str@titlepage@author},
    pdfcreator={\fileversion}
  }
  \ifseut@use@compressed@cover@background
    \ThisCenterWallPaper{1.0}{resources/seu-cover-background-compressed.png}
  \else
    \ThisCenterWallPaper{1.0}{resources/seu-cover-background-origin.png}
  \fi
  \begin{titlepage}
    \vspace*{1cm}
    \begin{centering}
      \includegraphics[width=8.57cm]{resources/seu-logo.png}\par
      \vspace{0.25cm}\par
      {\includegraphics[width=16.48cm]{resources/seu-title.png}}\par
    \end{centering}
    \vspace{1.1cm}
    {\centering
    \renewcommand*{\arraystretch}{1.025}
    \setlength{\tabcolsep}{0pt}
    \heiti\zihao{2}
    \begin{tabular}{c}
      \seutplaceholder[12.5cm]{\make@cover@title{\seut@var@str@titlepage@title@up}} \\ \relax
      \ifcsempty{seut@var@str@titlepage@title@down}{%

      }{%
       \seutplaceholder[12.5cm]{\make@cover@title{\seut@var@str@titlepage@title@down}}}
    \end{tabular}
    \par
    }

    \vspace{0.8cm}
    {\centering
    \renewcommand*{\arraystretch}{1.0}
    \setlength{\tabcolsep}{0pt}
    \begin{tabular}{p{3cm}c}
      \make@cover@field{\seut@field@str@titlepage@studentnum}
      & \seutplaceholder[8cm]{\make@cover@value{\seut@var@str@titlepage@studentnum}} \\ \relax
      \make@cover@field{\seut@field@str@titlepage@author}
      & \seutplaceholder[8cm]{\make@cover@value{\seut@var@str@titlepage@author}} \\ \relax
      \make@cover@field{\seut@field@str@titlepage@department}
      & \seutplaceholder[8cm]{\make@cover@value{\seut@var@str@titlepage@department}} \\ \relax
      \make@cover@field{\seut@field@str@titlepage@major}
      & \seutplaceholder[8cm]{\make@cover@value{\seut@var@str@titlepage@major}} \\ \relax
      \make@cover@field{\seut@field@str@titlepage@supervisor}
      & \seutplaceholder[8cm]{\make@cover@value{\seut@var@str@titlepage@supervisor}} \\ \relax
      \make@cover@field{\seut@field@str@titlepage@period}
      & \seutplaceholder[8cm]{\make@cover@value{\seut@var@str@titlepage@period}}
    \end{tabular}

    \vspace{3.2cm}
    \CJKfamily{kai}\zihao{4}{\seut@var@str@cover@date}

    \par
    }
  \end{titlepage}
}

\newcommand{\makedeclaration}{%
  \begin{titlepage}
    \vspace*{52pt}
    \seut@control@declarelinespread
    {\centering
    \heiti\zihao{-2}
    \seut@const@str@declare@origin@title
    \par
    }
    \vspace{39pt}\par
    \seut@const@str@declare@origin@content\par
    \hspace*{\fill}\par
    \hangafter 0
    \hangindent 4\ccwd
    \noindent \seut@const@str@declare@authorsign\seutplaceholder[8\ccwd]{}\seut@space{1.5}%
    \seut@const@str@declare@date\seutplaceholder[3.5\ccwd]{}年\seutplaceholder[2.5\ccwd]{}月%
      \seutplaceholder[2.5\ccwd]{}日\par
    \vspace{155pt}\par
    {\centering
    \heiti\zihao{-2}
    \seut@const@str@declare@usage@title
    \par
    }
    \vspace{22pt}\par
    \seut@const@str@declare@usage@content\par
    \hspace*{\fill}\par
    \seut@const@str@declare@authorsign\seutplaceholder[9.5\ccwd]{}\seut@space{2}%
      \seut@const@str@declare@supervisorsign\seutplaceholder[11.5\ccwd]{}\par
    \seut@const@str@declare@date\seutplaceholder[3.5\ccwd]{}年\seutplaceholder[3\ccwd]{}月%
      \seutplaceholder[3\ccwd]{}日\seut@space{3}%
    \seut@const@str@declare@date\seutplaceholder[2.5\ccwd]{}年\seutplaceholder[3\ccwd]{}月%
      \seutplaceholder[3\ccwd]{}日\par
  \end{titlepage}
}

\newcommand{\seut@control@keywords}[1]{%
  \def\nextitem{\def\nextitem{\seut@var@str@abstractsep}}%
  \renewcommand*{\do}[1]{\nextitem##1}%
  \docsvlist{#1}}
\newcommand{\keywords}{%
    \par\hspace*{\fill}\par
    \noindent\seut@var@str@keywords\seut@control@keywords}
\renewenvironment{abstract}[1][zh]{%
  \ifstrequal{#1}{zh}{%
    \renewcommand*{\seut@var@str@abstractname}{\seut@const@str@abstractname@zh}
    \renewcommand*{\seut@var@str@keywords}{\seut@const@str@keywords@zh}
    \renewcommand*{\seut@var@str@abstractsep}{\seut@const@str@abstractsep@zh}
  }{%
    \ifstrequal{#1}{en}{%
      \renewcommand*{\seut@var@str@abstractname}{\seut@const@str@abstractname@en}
      \renewcommand*{\seut@var@str@keywords}{\seut@const@str@keywords@en}
      \renewcommand*{\seut@var@str@abstractsep}{\seut@const@str@abstractsep@en}
    }{\ClassError{seuthesis-2022}%
      {Unknown option for abstract. Try `zh' or `en' for the abstract options.}%
      {Try `zh' or `en' for the abstract options.}}}
  \chapter{\seut@var@str@abstractname}
}{}


\newcommand{\useAI}{\seut@ai@use@aitrue}

\newcommand{\notUseAIStatement}[1]{\renewcommand*{\seut@var@str@ai@not@use@statement}{#1}}

\newcommand{\useAITools}[1]{\renewcommand*{\seut@var@str@ai@use@tools}{#1}}
\newcommand{\useAIProcedure}[1]{\renewcommand*{\seut@var@str@ai@use@procedure}{#1}}
\newcommand{\useAIPages}[1]{\renewcommand*{\seut@var@str@ai@use@pages}{#1}}
\newcommand{\useAIForText}{\seut@ai@use@for@texttrue}
\newcommand{\useAIForData}{\seut@ai@use@for@datatrue}
\newcommand{\useAIForOther}{\seut@ai@use@for@othertrue}

\newcommand{\useAISupervisorAttitude}[1]{\renewcommand*\seut@var@str@ai@supervisor@attitude{#1}}

\newcommand{\checkboxempty}{\ensuremath{\square}}
\newcommand{\checkboxfull}{\makebox[0pt][l]{$\checkmark$}$\square$}
\newcommand{\makeai}{
\begin{center}

\textbf{\heiti\fontsize{18pt}{18pt}\selectfont 东南大学本科毕业论文（设计）AI 工具使用情况说明表}
\vspace*{10pt}

\begin{tabular}{|m{2.76cm}|m{3.91cm}|m{4.86cm}|m{3.66cm}|}
\hline

\textbf{\heiti\fontsize{12pt}{12pt}\selectfont 课题名称} & \multicolumn{3}{c|}{\seut@var@str@titlepage@title} \\ \hline

\textbf{\heiti\fontsize{12pt}{12pt}\selectfont 学号} & \seut@var@str@titlepage@studentnum & \centering \textbf{\heiti\fontsize{15pt}{15pt}\selectfont 姓 \quad 名} & \seut@var@str@titlepage@author \\ \hline

\textbf{\heiti\fontsize{12pt}{12pt}\selectfont 是否使用生成式人工智能} & \multicolumn{3}{c|}{
  \makebox[0pt][c]{
    \parbox{\dimexpr\linewidth/3\relax}{
      \centering
      \ifseut@ai@use@ai
        \checkboxfull
      \else
        \checkboxempty
      \fi
      是
      }
    \parbox{\dimexpr\linewidth/3\relax}{
      \centering
      \ifseut@ai@use@ai
        \checkboxempty
      \else
        \checkboxfull
      \fi
      否
      }
  }
  } \\ \hline

\ifseut@ai@use@ai
\textbf{\heiti\fontsize{12pt}{12pt}\selectfont 工具、版本号} & \textbf{\heiti\fontsize{12pt}{12pt}\selectfont 使用范围} & \textbf{\heiti\fontsize{12pt}{12pt}\selectfont 使用过程} & \textbf{\heiti\fontsize{12pt}{12pt}\selectfont 章节（页码）} \\ \hline
\multirow{3}{2.76cm}{\seut@var@str@ai@use@tools}
 & \ifseut@ai@use@for@text \checkboxfull \else \checkboxempty \fi 文本生成及内容修改 & \multirow{3}{4.86cm}{\seut@var@str@ai@use@procedure } & \multirow{3}{3.66cm}{\seut@var@str@ai@use@pages } \\
 & \ifseut@ai@use@for@data \checkboxfull \else \checkboxempty \fi 数据、图表分析、代码调试 & & \\
 & \ifseut@ai@use@for@other \checkboxfull \else \checkboxempty \fi 其他：请具体说明 & & \\ \hline
\else
\multicolumn{4}{|l|}{\parbox[t]{15.19cm}{\seut@var@str@ai@not@use@statement \vspace*{\baselineskip}}} \\ \hline
\fi

\multirow{4}{*}{\textbf{\heiti\fontsize{12pt}{12pt}\selectfont 学生诚信申明}} & \multicolumn{3}{l|}{\parbox[t]{12.43cm}{本人郑重声明，上述关于生成式人工智能使用情况的陈述真实无误，已对使用此类技术的所有细节进行了全面且诚实的报告。本人深知学术诚信的重要性，如有任何隐瞒或虚假之处，愿承担学术不端行为带来的相关惩处。\vspace*{\baselineskip}}} \\
& \multicolumn{3}{r|}{学生签名:\hspace{3.5245cm}\mbox{}} \\
& \multicolumn{3}{r|}{年\hspace{0.9275cm}月\hspace{0.9275cm}日\hspace{0.3cm}\mbox{}} \\ \hline

\multirow{3}{*}{\textbf{\heiti\fontsize{12pt}{12pt}\selectfont 指导教师意见}} & \multicolumn{3}{l|}{\parbox[t]{12.43cm}{\seut@var@str@ai@supervisor@attitude \vspace*{\baselineskip}}} \\
& \multicolumn{3}{r|}{指导教师签名:\hspace{3.5245cm}\mbox{}} \\
& \multicolumn{3}{r|}{年\hspace{0.9275cm}月\hspace{0.9275cm}日\hspace{0.3cm}\mbox{}} \\ \hline

\end{tabular}
\end{center}
\newpage
}

\newenvironment{acknowledgement}{%
  \ctexset{chapter/numbering=false}
  % \setcounter{secnumdepth}{-2}
  \chapter{\seut@const@str@acknowledgename}
}{%
  \ctexset{chapter/numbering=true}
  % \setcounter{secnumdepth}{2}
}
\endinput
%%
%% End of file `seuthesis-2022.cls'.
