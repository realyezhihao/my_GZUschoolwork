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
  \geometry{a4paper,right=1in,left=1in,bottom=1.1in,top=1.1in}
\pagestyle{plain}



%% Define environments and commands
% 标题
\renewcommand{\maketitle}{%
  \global\let\thanks\@empty
  \begin{center}
    \bfseries{\Large \@title \par}
    \small \@author \par
    \@date \par
    \vskip 1em
  \end{center}
}


% 解题环境
\newenvironment{question}[1][\empty]
  {\paragraph{问题~#1}}
  {\par}

\newenvironment{proof}[1][\empty]
  {\paragraph{\textmd{#1~\kaishu 证明}}}
  {\ensuremath{\hfill \square} \vskip 1em \par}

\newenvironment{solution}[1][\empty]
  {\paragraph{\textmd{#1~\kaishu 解}}}
  {\ensuremath{\hfill \square} \vskip 1em \par}



\endinput