% !TEX program = xelatex
% !Mode:: "TeX:UTF-8"
%%
%% Copyright (C) 2022, Chenjie Gan. 干晨劼
%% Department of Engineering Mechanics, Aerospace school.
%% Email: chenjie_gan@brown.edu
%% based on XJTU-BSThesis_latex_2016: Version 1.1 by Lingxiao Zhao
%%
%% READ ME!!!
%% This .cls file provide a template to use latex for the paper of bachelor degree in 2022.
%% This latex template is based on word template: 2022届毕业设计（论文）模版, which is provided by XJTU.
%% This document is for reference only. The author is not responsible for any errors in formatting that may arise from the use of this document. Before using this document, please be sure to check your requirment.
%%
%% Basic Information
%% 0. This work is based on XJTU-BSThesis_latex_2016: Version 1.1 by Lingxiao Zhao, and there are only a few changes in this version. These changes are listed below.
%% 1. Revised the format of the Chinese and English abstract sections.
%% 2. Revised the format of equation in whole paper. Now, when using command \begin{equation} \begin{align} \begin{gather}, equations will be centering.
%% 3. Revised the format of the table.
%% 4. Changed the fontsize of keyword
%%
%% To be improved
%% 1. denotation part is unusable for unknow reason
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reference: 
% 1.  NJU Latex Model from Chuheng Zhang
% 作者：张楚珩，zhangchuheng123 (at) live (dot) com
% 个人主页: http://sealzhang.tk
% 感谢Hu Haixing提供的南京大学硕博学位论文模板
% 项目主页：http://haixing-hu.github.io/nju-thesis/
%
% 2. XJTU CTex Model from 
%  MCMTHESIS.cls  CopyLeft 2011/8/24 by
%  wanghongxin <hongxin_w@163.com>
%  hugo <>
%  hy_haoyun <haoyun_tex@163.com>
%
% 3. XJTU-BSThesis_latex_2016/
%  https://github.com/LingxiaoShawn/XJTU_LaTeX
%  Lingxiao Zhao. 赵令霄
%  Department of Electrical Engineering, Xi'an Jiaotong University.
%  Email: lingxia1@andrew.cmu.edu
%  Made a huge improvement accoding to the word template provided by XJTU!!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{xjtuBSThesis}[2016/5/30 xjtuBSThesis Ver 1.1]

\newif\ifXJTU@Mac \XJTU@Macfalse
\newif\ifXJTU@Linux \XJTU@Linuxfalse
\newif\ifXJTU@Win \XJTU@Winfalse

\DeclareOption{Mac}{\XJTU@Mactrue}
\DeclareOption{Linux}{\XJTU@Linuxtrue}
\DeclareOption{Win}{\XJTU@Wintrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper,twoside]{article}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Load Package%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{geometry}      % See geometry.pdf to learn the layout options. There are lots.
\geometry{hmargin = 2.6 true cm, %
	top = 3.0 true cm, %
	bottom = 2.5 true cm}                  
% ... or a4paper or a5paper or ... 
%	it's required that
%		纸型为A4（21.0 cm×29.7cm）标准，双面打印。
%		页边距：上、下、左、右、装订线的页边距分别为：3.0cm, 2.5cm, 2.6cm, 2.6cm, 0cm，
%		装订线位置：左。
%		左右对称页边距。
%\geometry{landscape}                % Activate for for rotated page geometry
%\RequirePackage[parfill]{parskip}    % Activate to begin paragraphs with an empty line rather than an indent

%\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
% Will Robertson's fontspec.sty can be used to simplify font choices.
% To experiment, open /Applications/Font Book to examine the fonts provided on Mac OS X,
% and change "Hoefler Text" to any of these choices.
%=========设置中文支持，中英文主要默认字体=============%
\RequirePackage[CJKchecksingle,CJKnumber]{xeCJK}   % support the font of China, Janpan and Korea 
\RequirePackage{fontspec,xltxtra,xunicode}
\RequirePackage[sf]{titlesec} % 改变各级标题格式  sf指定采用无衬线字体，缺省为黑体
%\RequirePackage{first} 
\RequirePackage{titletoc} %改变目录样式
\RequirePackage{caption} %定制浮动环境及标题
%\RequirePackage[fleq]{amsmath} 公式左对齐
\RequirePackage{amsmath} %公式居中对齐
\RequireXeTeX
\RequirePackage{setspace}
\onehalfspacing
\RequirePackage{thmtools}
\RequirePackage{tabularx} % 可以设置表格宽度
%\RequirePackage[fleqn]{mathtools} % advanced than amsmath
\RequirePackage{amssymb}
\RequirePackage{amsthm} %用于设置定理环境的格式，http://blog.csdn.net/lishoubox/article/details/7270604
\RequirePackage{ifxetex, ifpdf}
\RequirePackage{perpage}
\RequirePackage{pifont}
\RequirePackage{booktabs} %用于表格中的三线
\RequirePackage{multirow} %用于表格中合并表格
\RequirePackage{array}
\RequirePackage{cite}
\RequirePackage{subcaption}%子图包，下面的也是，命令有些不同
%\RequirePackage{subfigure}
\RequirePackage[sort&compress,numbers]{natbib} %提供多种引用样式，使用\setcitestyle设置，\citet及\citep用于引用
%==========算法环境配置===========%
\RequirePackage{algorithm} %算法环境
\RequirePackage{algpseudocode}
\floatname{algorithm}{算法}
\numberwithin{algorithm}{section}
\usepackage{etoolbox}
%===============公式显示调整================%
%\setlength{\mathindent}{2em}
\apptocmd\normalsize{%
 \abovedisplayskip=6pt 
 \abovedisplayshortskip=4pt 
 \belowdisplayskip=6pt 
 \belowdisplayshortskip=4pt 
}{}{}

%================================%
\RequirePackage{hyperref}
\hypersetup{%
    unicode=false,
    hyperfootnotes=true,
    hyperindex=true,
    pageanchor=true,
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=0,
    breaklinks=true,
    colorlinks=false,
    plainpages=false,
    pdfpagelabels,
    pdfborder=0 0 0%
}
\RequirePackage{pdfpages} % insert pdf pages. 
\RequirePackage{calc}%  footskip calculation

%====== Command ======%
\makeatletter
\def\college#1{\gdef\XJTU@college{#1}} % 学院
\def\XJTU@college{\@latex@warning@no@line{No \noexpand\college given}}
\def\department#1{\gdef\XJTU@department{#1}} % 系（专业）
\def\XJTU@department{\@latex@warning@no@line{No \noexpand\department given}}
\def\class#1{\gdef\XJTU@class{#1}} % 班级
\def\XJTU@class{\@latex@warning@no@line{No \noexpand\class given}}
\def\place#1{\gdef\XJTU@place{#1}} % 地点
\def\XJTU@place{\@latex@warning@no@line{No \noexpand\place given}}

% Reference: http://tex.stackexchange.com/questions/41996/how-do-i-split-a-dat
\def\XJTU@begindate#1/#2/#3.{\gdef\XJTU@byear{#1}\gdef\XJTU@bmonth{#2}\gdef\XJTU@bday{#3}}
\def\bdate#1{{\edef\XJTU@tempbdate{#1}\expandafter\XJTU@begindate\XJTU@tempbdate.}}
\def\XJTU@enddate#1/#2/#3.{\gdef\XJTU@eyear{#1}\gdef\XJTU@emonth{#2}\gdef\XJTU@eday{#3}}
\def\edate#1{{\edef\XJTU@tempedate{#1}\expandafter\XJTU@enddate\XJTU@tempedate.}}
\def\XJTU@byear{\@latex@warning@no@line{No \noexpand\bdate given}}
\def\XJTU@bmonth{\@latex@warning@no@line{No \noexpand\bdate given}}
\def\XJTU@bday{\@latex@warning@no@line{No \noexpand\bdate given}}
\def\XJTU@eyear{\@latex@warning@no@line{No \noexpand\edate given}}
\def\XJTU@emonth{\@latex@warning@no@line{No \noexpand\edate given}}
\def\XJTU@eday{\@latex@warning@no@line{No \noexpand\edate given}}

\renewcommand\title[2]{\gdef\XJTU@title@cn{#1}\gdef\XJTU@title@en{#2}} % 题目
\def\XJTU@title@cn{\@latex@warning@no@line{No \noexpand\title for cn given}}
\def\XJTU@title@en{\@latex@warning@no@line{No \noexpand\title for en given}}
\renewcommand\author[2]{\gdef\XJTU@author@cn{#1}\gdef\XJTU@author@en{#2}} % 作者
\def\XJTU@author@cn{\@latex@warning@no@line{No \noexpand\author for cn given}}
\def\XJTU@author@en{\@latex@warning@no@line{No \noexpand\author for en given}}
\def\advisor#1#2{\gdef\XJTU@advisor@cn{#1}\gdef\XJTU@advisor@en{#2}} % 导师
\def\XJTU@advisor@cn{\@latex@warning@no@line{No \noexpand\advisor for cn given}}
\def\XJTU@advisor@en{\@latex@warning@no@line{No \noexpand\advisor for en given}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Set part of Configure %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\dashnumber}[2]%  定义 \dashnumber，将两个参数用-连接
  {{#1}\kern.07em\rule[.5ex]{.4em}{.15ex}\kern.07em{#2}}
\renewcommand{\baselinestretch}{1.2} % 1.2为1.5倍行距，1.6为2倍行距
\setlength{\parindent}{2em}     % 设置首行缩进
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
\graphicspath{{./}{./img/}{./fig/}{./image/}{./figure/}{./picture/}{./imgs/}{./figs/}{./images/}{./figures/}{./pictures/}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Font Configure%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand*{\xjtu@ChineseFont@songti@win}{SimSun}
\newcommand*{\xjtu@ChineseFont@heiti@win}{SimHei}
\newcommand*{\xjtu@ChineseFont@kaishu@win}{KaiTi}
\newcommand*{\xjtu@ChineseFont@fangsong@win}{FangSong}
\newcommand*{\xjtu@EnglishFont@main@win}{Times New Roman}
\newcommand*{\xjtu@EnglishFont@sans@win}{Arial}
\newcommand*{\xjtu@EnglishFont@mono@win}{Courier New}

\newcommand*{\xjtu@ChineseFont@songti@linux}{AR PL SungtiL GB}
\newcommand*{\xjtu@ChineseFont@heiti@linux}{WenQuanYi Zen Hei Mono}
\newcommand*{\xjtu@ChineseFont@kaishu@linux}{AR PL KaitiM GB}
\newcommand*{\xjtu@ChineseFont@fangsong@linux}{STFangSong}
\newcommand*{\xjtu@EnglishFont@main@linux}{Times}
\newcommand*{\xjtu@EnglishFont@sans@linux}{Helvetica}
\newcommand*{\xjtu@EnglishFont@mono@linux}{Courier}

\newcommand*{\xjtu@ChineseFont@songti@mac}{STSong}
\newcommand*{\xjtu@ChineseFont@heiti@mac}{STHeiti}
\newcommand*{\xjtu@ChineseFont@kaishu@mac}{STKaiti}
\newcommand*{\xjtu@ChineseFont@fangsong@mac}{STFangsong}
\newcommand*{\xjtu@EnglishFont@main@mac}{Times}
\newcommand*{\xjtu@EnglishFont@sans@mac}{Helvetica}
\newcommand*{\xjtu@EnglishFont@mono@mac}{Courier}

\newcommand{\win}{
    \def\xjtu@ChineseFont@songti{\xjtu@ChineseFont@songti@win}
    \def\xjtu@ChineseFont@heiti{\xjtu@ChineseFont@heiti@win}
    \def\xjtu@ChineseFont@kaishu{\xjtu@ChineseFont@kaishu@win}
    \def\xjtu@ChineseFont@fangsong{\xjtu@ChineseFont@fangsong@win}
    \def\xjtu@EnglishFont@main{\xjtu@EnglishFont@main@win}
    \def\xjtu@EnglishFont@sans{\xjtu@EnglishFont@sans@win}
    \def\xjtu@EnglishFont@mono{\xjtu@EnglishFont@mono@win}
}
\newcommand{\linux}{
    \def\xjtu@ChineseFont@songti{\xjtu@ChineseFont@songti@linux}
    \def\xjtu@ChineseFont@heiti{\xjtu@ChineseFont@heiti@linux}
    \def\xjtu@ChineseFont@kaishu{\xjtu@ChineseFont@kaishu@linux}
    \def\xjtu@ChineseFont@fangsong{\xjtu@ChineseFont@fangsong@linux}
    \def\xjtu@EnglishFont@main{\xjtu@EnglishFont@main@linux}
    \def\xjtu@EnglishFont@sans{\xjtu@EnglishFont@sans@linux}
    \def\xjtu@EnglishFont@mono{\xjtu@EnglishFont@mono@linux}
}
\newcommand{\mac}{
    \def\xjtu@ChineseFont@songti{\xjtu@ChineseFont@songti@mac}
    \def\xjtu@ChineseFont@heiti{\xjtu@ChineseFont@heiti@mac}
    \def\xjtu@ChineseFont@kaishu{\xjtu@ChineseFont@kaishu@mac}
    \def\xjtu@ChineseFont@fangsong{\xjtu@ChineseFont@fangsong@mac}
    \def\xjtu@EnglishFont@main{\xjtu@EnglishFont@main@mac}
    \def\xjtu@EnglishFont@sans{\xjtu@EnglishFont@sans@mac}
    \def\xjtu@EnglishFont@mono{\xjtu@EnglishFont@mono@mac}
}

\ifXJTU@Mac
\mac
\fi
\ifXJTU@Linux
\linux
\fi
\ifXJTU@Win
\win
\fi
%==============configure the main font==============%
\defaultfontfeatures{Mapping=tex-text}
\setromanfont[Mapping=tex-text]{\xjtu@EnglishFont@main}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{\xjtu@EnglishFont@sans}
\setmonofont[Scale=MatchLowercase]{\xjtu@EnglishFont@mono}
\setCJKmainfont[BoldFont={\xjtu@ChineseFont@heiti},%
                ItalicFont={\xjtu@ChineseFont@kaishu}]%
               {\xjtu@ChineseFont@songti}
\setCJKsansfont{\xjtu@ChineseFont@heiti}
\setCJKmonofont{\xjtu@ChineseFont@fangsong}
\punctstyle{hangmobanjiao}
%===================================================%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%常用字号设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%这里的\baselineskip似乎有点问题，对于低字号的行间距保持不变，不符合习惯，要注意重设吧
%字体大小后面还有定义，这两种都可以用
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}
%注意只是定义了字号参考，不构成字体格式。
\newcommand*{\xjtu@FontSize@eight}{5.02} % 八号字 5bp
\newcommand*{\xjtu@FontSize@eightskip}{6.02}
\newcommand*{\xjtu@FontSize@seven}{5.52} % 七号字 5.5bp
\newcommand*{\xjtu@FontSize@sevenskip}{6.62}
\newcommand*{\xjtu@FontSize@ssix}{6.52} % 小六号 6.5bp
\newcommand*{\xjtu@FontSize@ssixskip}{7.83}
\newcommand*{\xjtu@FontSize@six}{7.53} % 六号字 7.5bp
\newcommand*{\xjtu@FontSize@sixskip}{9.03}
\newcommand*{\xjtu@FontSize@sfive}{9.03} % 小五号 9bp
\newcommand*{\xjtu@FontSize@sfiveskip}{10.84}
\newcommand*{\xjtu@FontSize@five}{10.54} % 五号 10bp
\newcommand*{\xjtu@FontSize@fiveskip}{12.65}
\newcommand*{\xjtu@FontSize@sfour}{12.05} % 小四号 12bp
\newcommand*{\xjtu@FontSize@sfourskip}{14.45}
\newcommand*{\xjtu@FontSize@four}{14.05} % 四号字 14bp
\newcommand*{\xjtu@FontSize@fourskip}{16.86}
\newcommand*{\xjtu@FontSize@sthree}{15.06} % 小三号 15bp
\newcommand*{\xjtu@FontSize@sthreeskip}{18.07}
\newcommand*{\xjtu@FontSize@three}{16.06} % 三号字 16bp
\newcommand*{\xjtu@FontSize@threeskip}{19.27}
\newcommand*{\xjtu@FontSize@stwo}{18.07} % 小二号 18bp
\newcommand*{\xjtu@FontSize@stwoskip}{21.68}
\newcommand*{\xjtu@FontSize@two}{22.08} % 二号字 22bp
\newcommand*{\xjtu@FontSize@twoskip}{26.50}
\newcommand*{\xjtu@FontSize@sone}{24.09} % 小一号 24bp
\newcommand*{\xjtu@FontSize@soneskip}{28.91}
\newcommand*{\xjtu@FontSize@one}{26.10} % 一号字 26bp
\newcommand*{\xjtu@FontSize@oneskip}{31.32}
\newcommand*{\xjtu@FontSize@szero}{36.14} % 小初号 36bp
\newcommand*{\xjtu@FontSize@szeroskip}{43.36}
\newcommand*{\xjtu@FontSize@zero}{42.16} % 初号字 42bp
\newcommand*{\xjtu@FontSize@zeroskip}{50.59}

\newcommand{\zero}{\fontsize{\xjtu@FontSize@zero}{\xjtu@FontSize@zeroskip}\selectfont}
\newcommand{\szero}{\fontsize{\xjtu@FontSize@szero}{\xjtu@FontSize@szeroskip}\selectfont}
\newcommand{\one}{\fontsize{\xjtu@FontSize@one}{\xjtu@FontSize@oneskip}\selectfont}
\newcommand{\sone}{\fontsize{\xjtu@FontSize@sone}{\xjtu@FontSize@soneskip}\selectfont}
\newcommand{\two}{\fontsize{\xjtu@FontSize@two}{\xjtu@FontSize@twoskip}\selectfont}
\newcommand{\stwo}{\fontsize{\xjtu@FontSize@stwo}{\xjtu@FontSize@stwoskip}\selectfont}
\newcommand{\three}{\fontsize{\xjtu@FontSize@three}{\xjtu@FontSize@threeskip}\selectfont}
\newcommand{\sthree}{\fontsize{\xjtu@FontSize@sthree}{\xjtu@FontSize@sthreeskip}\selectfont}
\newcommand{\four}{\fontsize{\xjtu@FontSize@four}{\xjtu@FontSize@fourskip}\selectfont}
\newcommand{\sfour}{\fontsize{\xjtu@FontSize@sfour}{\xjtu@FontSize@sfourskip}\selectfont}
\newcommand{\five}{\fontsize{\xjtu@FontSize@five}{\xjtu@FontSize@fiveskip}\selectfont}
\newcommand{\sfive}{\fontsize{\xjtu@FontSize@sfive}{\xjtu@FontSize@sfiveskip}\selectfont}
\newcommand{\six}{\fontsize{\xjtu@FontSize@six}{\xjtu@FontSize@sixskip}\selectfont}
\newcommand{\ssix}{\fontsize{\xjtu@FontSize@ssix}{\xjtu@FontSize@ssixskip}\selectfont}
\newcommand{\seven}{\fontsize{\xjtu@FontSize@seven}{\xjtu@FontSize@sevenskip}\selectfont}
\newcommand{\eight}{\fontsize{\xjtu@FontSize@eight}{\xjtu@FontSize@eightskip}\selectfont}

\makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%设置各级标题格式%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\sectionbreak}{\cleardoublepage \null} % \null is very important

\titleformat{\section} 
	[hang]
	{\centering\three} % 一级标题三号
	{\thesection}
	{1em}{}[] 
\titleformat{\subsection}
	[hang]
	{\sthree} % 二级标题小三号
	{\thesubsection}
	{1em}{}[] 
\titleformat{\subsubsection}
	[hang]
	{\four} % 三级标题四号
	{\hspace{4ex}\thesubsubsection}
	{1em}{}[]
\titlespacing{\section}
	{0pt}
	{1.4\baselineskip plus 1ex minus .2ex}%近似段前空三行
	{2\baselineskip plus .2ex}
\titlespacing{\subsection}
	{0pt}
	{1\baselineskip plus 1ex minus .2ex}%1\baselineskip plus 1ex minus .2ex}
	{.5\baselineskip plus .2ex}
\titlespacing{\subsubsection}
	{0pt}
	{.5\baselineskip plus 1ex minus .2ex}
	{0pt plus .2ex}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%设置页眉页脚%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
\newpagestyle{main}{
\setlength{\headheight}{0.7cm}%调整页眉字中道页顶距离
\sethead[][\five 西安交通大学本科毕业设计（论文）][]	% even
		{}{\five \sectiontitle}{}	% odd
\setfoot[\five\thepage][][]	% even
		{}{}{\five\thepage}	% odd
\renewcommand{\makeheadrule}{%
	\makebox[0pt][l]{\rule[-0.28\baselineskip]{\linewidth}{0.5pt}}%
	\rule[-0.34\baselineskip]{\linewidth}{0.5pt}}
} 

\newpagestyle{document}{
\setlength{\headheight}{0.7cm}%调整页眉字中道页顶距离
\sethead[][\five 西安交通大学本科毕业设计（论文）][]	% even
		{}{\five \thesection \quad \sectiontitle}{}	% odd
\setfoot[\five\thepage][][] % even
		{}{}{\five\thepage}	% odd
\renewcommand{\makeheadrule}{%
		\makebox[0pt][l]{\rule[-0.28\baselineskip]{\linewidth}{0.5pt}}%
		\rule[-0.34\baselineskip]{\linewidth}{0.5pt}}
} 
\newcommand\frontmatter{%
	\cleardoublepage
	\pagestyle{main}
	\pagenumbering{Roman}}
\newcommand\mainmatter{%
	\cleardoublepage
	\pagestyle{document}
	\pagenumbering{arabic}}
\newcommand\backmatter{%
	\cleardoublepage
	\pagestyle{main}}	

% set footskip
\setlength{\footskip}{\paperheight
  -(1in+\voffset+\topmargin+\headheight+\headsep+\textheight)
  -0.75in}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%图名、表名、公式编号等设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%====== captions ======%

% Comments by hy_haoyun:
%   The followings should be improved.

\captionsetup{labelformat=simple,labelsep=quad,font=small}
\captionsetup[table]{position=top}
\captionsetup[figure]{position=bottom}

%=========
\numberwithin{figure}{section}
\numberwithin{table}{section}
\numberwithin{equation}{section}
\renewcommand{\thefigure}{\arabic{section}-\arabic{figure}}%更改图名格式
\renewcommand{\thetable}{\arabic{section}-\arabic{table}}%更改表名格式
\renewcommand*{\theequation}{\arabic{section}-{\arabic{equation}}} %更改公式编号样式

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%定义中英文摘要页%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%=== Chinese === %
\makeatletter
\newcommand\XJTU@abstract@cn{\three 摘\hspace{2ex}要}
\newenvironment{abstractcn}{
\cleardoublepage
\sectionmark{ 摘要}
\setcounter{page}{5}
\begin{center}
	{\vspace*{1\baselineskip plus 1ex minus .2ex}\XJTU@abstract@cn\vspace*{1\baselineskip plus 1ex minus .2ex}}
\end{center}
}{\par}

\newcommand{\keywordscn}[1]{\vspace{\baselineskip}\par\noindent {\sfour {\bfseries 关键词：}#1}}

%=== English ===%
\newcommand{\XJTU@abstract@en}{\three ABSTRACT}
\newenvironment{abstracten}{\cleardoublepage
\sectionmark{ ABSTRACT}
\begin{center}
		{\vspace*{1\baselineskip plus 1ex minus .2ex}\XJTU@abstract@en\vspace*{0.5\baselineskip plus 1ex minus .2ex}}
	\end {center} \par
\setlength\parskip{1em}	% 设置段行距
\setlength\parindent{0em}	% 设置段首缩进

}{%
\setlength\parskip{0.1em}	% 恢复行距
\setlength\parindent{2ex} % 恢复段首缩进
\par}

\newcommand{\keywordsen}[1]{\vspace{\baselineskip}\par\noindent {\sfour {\bfseries KEY WORDS ：}#1}}

\makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\oldtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{
	\cleardoublepage
	\sectionmark{目录}
	\oldtableofcontents
}

\renewcommand{\contentsname}{目\hspace{2ex}录} % 修改目录名字
\renewcommand*{\figurename}{图} % 修改图的名字为中文
\renewcommand*{\tablename}{表} % 修改表的名字为中文
\renewcommand*{\refname}{参考文献} %修改引用名字
%=============主要符号================%

% Comment by hy_haoyun:
%	我感觉这个东西没有必要。

\newenvironment{denotation}{
\cleardoublepage
\refstepcounter{section}
\section*{主要符号表}
\sectionmark{主要符号表}
\addcontentsline{toc}{section}{主要符号表}
\begin{list}{}{
\renewcommand{\makelabel}[1]{##1\hfil}
\vskip-30bp\normalsize
\setlength{\labelwidth}{2.5cm}
\setlength{\labelsep}{0.5cm} % 标签与列表文本距离
\setlength{\itemindent}{ex} % 标签缩进量
\setlength{\leftmargin}{3cm} % 左边界
\setlength{\rightmargin}{0cm}
\setlength{\parsep}{0cm} % 段落间距
\setlength{\itemsep}{0cm} % 标签间距
\setlength{\listparindent}{0cm} % 段落缩进量
\setlength{\topsep}{0pt} % 标签与上文的间距
}
}{\end{list}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%====== Appendix ======%
% Comment by hy_haoyun:
%	附录的实现应该还有更"好"的方法。

\newcounter{appends} % 附录计数器
%\newcounter{appendshead} % 附录页眉计数器
\setcounter{appends}{0} % 初始化为1
%\setcounter{appendshead}{0} % 初始化为0
\newcommand{\appendixs}[1]
{\cleardoublepage
\refstepcounter{appends}
\stepcounter{section}
\sectionmark{ 附录\Alph{appends}  \hspace{0.15cm}#1}
\section*{附录\Alph{appends}  \hspace{0.15cm}#1}
\addcontentsline{toc}{section}{附录\Alph{appends} \hspace{0.15cm}#1}
} 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%引用设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%====== Bibliography ======%

%\def\newblock{\hskip .11em plus .33em minus .07em}

%	\def\mybibliography#1
%	{
%	\sectionmark{参考文献}
%	\bibliographystyle{GBT7714-2005NLang-UTF8-mod}
%	\mbox{}
%	\addcontentsline{toc}{section}{参考文献}
%	%\renewcommand{\refname}{\small 参考文献}
%	\bibliography{#1}
%	}


\let\oldbibliography\bibliography
\renewcommand{\bibliography}[1]{
\cleardoublepage
\refstepcounter{section}%
\sectionmark{参考文献}
\addcontentsline{toc}{section}{参考文献}

\oldbibliography{#1}
}

\bibliographystyle{xjtuBib}
\setcitestyle{square}
\def\bibfont{\five} % 设置参考文献字体大小
\setlength{\bibsep}{0pt plus 0.2ex}  % vertical spacing between references
%%%%%%%%%%%%%%%%%%%%%%%设置支持带页码的引用%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter

\renewcommand\NAT@citesuper[3]{%
\ifNAT@swa%
  \if*#2*\else#2\NAT@spacechar\fi%
  \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close#3}%
\else #1\fi\endgroup%
}
\AtBeginDocument{%
\let\oldref\ref%
\renewcommand*{\ref}[1]{\thinspace\oldref{#1}}%
\renewcommand*{\eqref}[1]{(\oldref{#1})}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%====== Footnote ======%
%\renewcommand{\thefootnote}{\raisebox{.5pt}{\textcircled{\raisebox{-.5pt}{\scriptsize\arabic{footnote}}}}} 

% Comment by hy_haoyun
%	原来的实现在 pdflatex 报错，具体原因不明，下面参考了 Neals 的做法，
%	见 http://blog.sina.com.cn/s/blog_5e16f1770100moqv.html
%\usepackage[perpage,symbol*]{footmisc}
%\DefineFNsymbols{circled}{{\ding{192}}{\ding{193}}{\ding{194}}
%{\ding{195}}{\ding{196}}{\ding{197}}{\ding{198}}{\ding{199}}{\ding{200}}{\ding{201}}}
%\setfnsymbol{circled}

\renewcommand\thefootnote{\ding{\numexpr171+\value{footnote}}}
\MakePerPage{footnote} % Package `perpage` is needed.

%====== Acknowledgment ======%
\newcommand{\XJTU@acknowledgment}{致\hspace{2ex}谢}
\newenvironment{acknowledgment}{
\cleardoublepage\refstepcounter{section}
       \section*{\XJTU@acknowledgment} 
		\sectionmark{致谢}
\addcontentsline{toc}{section}{致谢} % 使用\addcontentsline{toc}{chapter}{致谢}将致谢添加到目录中.
}{\par}

\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%定义数学公式想对大小%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{newtxmath}%math font package 
%Another package named {unicode-math} is more power than{newtxmath}. If you need different math font, please see the document of {unicode-math} and learn by yourself. 

\makeatletter
\DeclareMathSizes{\xjtu@FontSize@eight}
                 {\xjtu@FontSize@eight}
                 {5}
                 {5}
\DeclareMathSizes{\xjtu@FontSize@seven}
                 {\xjtu@FontSize@seven}
                 {5}
                 {5}
\DeclareMathSizes{\xjtu@FontSize@ssix}
                 {\xjtu@FontSize@ssix}
                 {5}
                 {5}
\DeclareMathSizes{\xjtu@FontSize@six}
                 {\xjtu@FontSize@six}
                 {5}
                 {5}
\DeclareMathSizes{\xjtu@FontSize@sfive}
                 {\xjtu@FontSize@sfive}
                 {6}
                 {5}
\DeclareMathSizes{\xjtu@FontSize@five}
                 {\xjtu@FontSize@five}
                 {7}
                 {5}
\DeclareMathSizes{\xjtu@FontSize@sfour}
                 {\xjtu@FontSize@sfour}
                 {8}
                 {6}
\DeclareMathSizes{\xjtu@FontSize@four}
                 {\xjtu@FontSize@four}
                 {\xjtu@FontSize@five}
                 {\xjtu@FontSize@six}
\DeclareMathSizes{\xjtu@FontSize@sthree}
                 {\xjtu@FontSize@sthree}
                 {\xjtu@FontSize@sfour}
                 {\xjtu@FontSize@sfive}
\DeclareMathSizes{\xjtu@FontSize@three}
                 {\xjtu@FontSize@three}
                 {\xjtu@FontSize@four}
                 {\xjtu@FontSize@five}
\DeclareMathSizes{\xjtu@FontSize@stwo}
                 {\xjtu@FontSize@stwo}
                 {\xjtu@FontSize@sthree}
                 {\xjtu@FontSize@sfour}
\DeclareMathSizes{\xjtu@FontSize@two}
                 {\xjtu@FontSize@two}
                 {\xjtu@FontSize@three}
                 {\xjtu@FontSize@four}
\DeclareMathSizes{\xjtu@FontSize@sone}
                 {\xjtu@FontSize@sone}
                 {\xjtu@FontSize@stwo}
                 {\xjtu@FontSize@sthree}
\DeclareMathSizes{\xjtu@FontSize@one}
                 {\xjtu@FontSize@one}
                 {\xjtu@FontSize@two}
                 {\xjtu@FontSize@three}
\DeclareMathSizes{\xjtu@FontSize@szero}
                 {\xjtu@FontSize@szero}
                 {\xjtu@FontSize@sone}
                 {\xjtu@FontSize@stwo}
\DeclareMathSizes{\xjtu@FontSize@zero}
                 {\xjtu@FontSize@zero}
                 {\xjtu@FontSize@one}
                 {\xjtu@FontSize@two}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%调整目录样式%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titlecontents{section}[0mm]
{\vspace{0pt}}
 {\normalsize{\thecontentslabel}~\hspace{.5em}}
 {}
 {\dotfill\contentspage[{\makebox[0pt][r]{\thecontentspage}}]}
 [\vspace{0pt}]
\titlecontents{subsection}[2ex]
{\vspace{0pt}}
 {\normalsize{\thecontentslabel}~\hspace{.5em}}
 {}
 {\dotfill\contentspage[{\makebox[0pt][r]{\thecontentspage}}]}
 [\vspace{0pt}]
\titlecontents{subsubsection}[4ex]
{\vspace{0pt}}
 {\normalsize{\thecontentslabel}~\hspace{.5em}}
 {}
 {\dotfill\contentspage[{\makebox[0pt][r]{\thecontentspage}}]}
 [\vspace{0pt}]
\def\@dotsep{2}%就在这儿改，把2改成其他什么，默认是4.5，就是点之间距离为4.5mu
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%新建功能处，用户需注意%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}%设置上标形式引用
\newcommand{\topcaption}[1]{%    用于在表题（题目在上），替换原有\caption
\setlength{\abovecaptionskip}{0.5\baselineskip}%
\setlength{\belowcaptionskip}{0.5\baselineskip}%
\caption{#1}}

\newcommand{\downcaption}[1]{%      用于图题（题目在下），替换原有\caption
\setlength{\abovecaptionskip}{0.5\baselineskip}%
\setlength{\belowcaptionskip}{-0.5\baselineskip}%
\caption{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%配置常用的 定义、定理、证明等环境%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	\renewcommand{\proofname}{\normalfont\bfseries 证明}
	\renewenvironment{proof}[1][\hskip 2ex \proofname]{\par
		\pushQED{\qed}%
		\normalfont \topsep6\p@\@plus6\p@\relax
		\trivlist
			\item[\hskip\labelsep\itshape#1\@addpunct{}]\ignorespaces
	}{%
		\popQED\endtrivlist\@endpefalse
	}
	
	\declaretheoremstyle[
	spaceabove=6pt, spacebelow=6pt,
	headfont=\normalfont\bfseries,
	notefont=\mdseries, notebraces={(}{)},
	bodyfont=\normalfont,
	postheadspace=1em,
	headindent=2ex,
	headpunct={},
	]{theoremstyle}
\makeatletter
\newcommand*{\xjtu@cap@definition}{定义}
\newcommand*{\xjtu@cap@notation}{记号}
\newcommand*{\xjtu@cap@theorem}{定理}
\newcommand*{\xjtu@cap@lemma}{引理}
\newcommand*{\xjtu@cap@corollary}{推论}
\newcommand*{\xjtu@cap@proposition}{命题}
\newcommand*{\xjtu@cap@fact}{事实}
\newcommand*{\xjtu@cap@assumption}{假设}
\newcommand*{\xjtu@cap@conjecture}{猜想}
\newcommand*{\xjtu@cap@hypothesis}{假说}
\newcommand*{\xjtu@cap@axiom}{公理}
\newcommand*{\xjtu@cap@postulate}{公设}
\newcommand*{\xjtu@cap@principle}{定律}
\newcommand*{\xjtu@cap@problem}{问题}
\newcommand*{\xjtu@cap@exercise}{练习}
\newcommand*{\xjtu@cap@example}{例}
\newcommand*{\xjtu@cap@remark}{评注}
\newcommand*{\xjtu@cap@proof}{证明}

\newtheorem{definition}{\xjtu@cap@definition}[section]
\newtheorem{notation}[definition]{\xjtu@cap@notation}
\newtheorem{theorem}{\xjtu@cap@theorem}[section]
\newtheorem{lemma}[theorem]{\xjtu@cap@lemma}
\newtheorem{corollary}[theorem]{\xjtu@cap@corollary}
\newtheorem{proposition}[theorem]{\xjtu@cap@proposition}
\newtheorem{fact}[theorem]{\xjtu@cap@fact}
\newtheorem{assumption}[theorem]{\xjtu@cap@assumption}
\newtheorem{conjecture}[theorem]{\xjtu@cap@conjecture}
\newtheorem{hypothesis}{\xjtu@cap@hypothesis}[section]
\newtheorem{axiom}{\xjtu@cap@axiom}[section]
\newtheorem{postulate}{\xjtu@cap@postulate}[section]
\newtheorem{principle}{\xjtu@cap@principle}[section]
\newtheorem{problem}{\xjtu@cap@problem}[section]
\newtheorem{exercise}{\xjtu@cap@exercise}[section]
\newtheorem{example}{\xjtu@cap@example}[section]
\newtheorem{remark}{\xjtu@cap@remark}[section]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%改变目录样式2(为Section加入dot)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}

%\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
%\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
%\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
%\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
%\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}

\newif\ifXJTU@SectionDotInContent \XJTU@SectionDotInContentfalse

%\XJTU@SectionDotInContenttrue      %% Put the dot of Section in content !! 
\ifXJTU@SectionDotInContent
\renewcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{2em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \xleaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}\hfill%original : {$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsepmu$}
      \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\fi
\makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument
{\setlength\parskip{0.1em}}	








