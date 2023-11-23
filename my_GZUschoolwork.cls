\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{my_GZUschoolwork}[2023/10/06]



%% Class Options
\DeclareOption*{
  \typeout{Option \CurrentOption\ has been passed to class ctexart.}
  \PassOptionsToClass{\CurrentOption}{ctexart}
  }
\ProcessOptions\relax



%% Loading Class
\LoadClass[a4paper,oneside,zihao=-4,scheme=chinese]{ctexart}[2022/07/14 v2.5.10]
  \ctexset{
    punct = kaiming,
    section = {
      numbering = false,
      format = \large\bfseries,
    },
    subsection/format = \normalsize\bfseries,
    paragraph/runin = true,
  }


%% Loading Packages
% 确保使用xelatex来进行编译
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex
  \relax
  \else
  \ClassError{my_mcmthesis}{You must use driver `xelatex'.}
\fi


% 数学符号
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\usepackage{mathtools}


% 页面布局
\RequirePackage{geometry}
  \geometry{a4paper,right=2.7cm,left=2.7cm,bottom=2.7cm,top=2.7cm}
%\pagestyle{plain}


% 设置代码环境
\RequirePackage{listings}
\RequirePackage{xcolor}
  \definecolor{dkgreen}{rgb}{0,0.6,0}    
  \definecolor{gray}{rgb}{0.5,0.5,0.5}
  \definecolor{mauve}{rgb}{0.58,0,0.82}
  \lstset{
    frame=tb,
    aboveskip=3mm,
    belowskip=3mm,
    showstringspaces=false,
    columns=flexible,
    framerule=1pt,
    rulecolor=\color{gray!35},
    backgroundcolor=\color{gray!5},
    basicstyle={\small\rmfamily},
    numbers=none, %取消行号显示
    %numberstyle=\footnotesize\color{gray}, %行号格式
    keywordstyle=\color{blue},
    commentstyle={\itshape\color{dkgreen}},
    stringstyle=\color{mauve},
    breaklines=true,
    breakatwhitespace=true,
    tabsize=3,
    escapeinside={""} %半角双引号括住的内容退回由LaTeX编译
}


% 插入链接
\RequirePackage{url}
  \urlstyle{same}


%% Define environments and commands
% 标题
\author{叶致豪 \quad 应数2101 \quad 2100130201} %设置作者
\renewcommand{\maketitle}{
    \begin{center}
        \bfseries{\Large \@title \par}
        \small \@author \par
        \@date \par
        \vskip 1em
    \end{center}
    \global\let\thanks\@empty
    }


% 文献上标
\newcommand{\upcite}[1]{$^{\mbox{\scriptsize \cite{#1}}}$}


% 解题环境
\newenvironment{question}[1][\empty]
  {\paragraph{问题~#1}}
  {\par}
% \newenvironment{lemma}[1][\empty]
%   {\stepcounter{@mathslist_lemma}\paragraph{引理\arabic{@mathslist_lemma}~#1}}
%   {\par \vskip 1em}
% \newenvironment{definition}[1][\empty]
%   {\stepcounter{@mathslist_definition}\paragraph{定义\arabic{@mathslist_definition}~#1}}
%   {\par \vskip 1em}
\newenvironment{proof}[1][\empty]
  {\paragraph{\textmd{#1~\kaishu 证明}}}
  {\ensuremath{\hfill \square} \vskip 1em \par}
\newenvironment{solution}[1][\empty]
  {\paragraph{\textmd{#1~\kaishu 解}}}
  {\ensuremath{\hfill \square} \vskip 1em \par}



\endinput