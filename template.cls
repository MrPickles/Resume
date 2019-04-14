%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% "\"Style Guide\""
%
% - 80 character line limit
% - Prefer line breaks at the "highest semantic level." Basically follow the
%   Google Java style guide for line wrapping.
% - Make newlines and explicit whitespace noticeable (and comment them).
% - Or do whatever you want. I'm a comment, not a cop.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Intro Options
\ProvidesClass{template}[2018/05/20 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax{}
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames, dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec, xltxtra, xunicode}

% Color definitions
\definecolor{black}{HTML}{000000}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Ligatures=TeX}
\setmainfont[Color=primary, Path=fonts/lato/]{Lato_Reg}
\setsansfont
  [Scale=MatchLowercase, Ligatures=TeX, Path=fonts/raleway/]
  {Raleway_ExtraLight}
\newcommand{\custombold}[1]{
  \color{subheadings}
  \fontspec[Path=fonts/lato/]{Lato_Reg}
  \selectfont{#1}
  \normalfont{}
}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm}
\newcommand{\lastupdated}{
  % we'll put the date in the bottom right corner
  \begin{textblock}{60} (161.5, 265)
    \color{date}
    \fontspec[Path=fonts/raleway/]{Raleway_ExtraLight}
    \fontsize{8pt}{10pt}
    \selectfont{Last Updated on }
    \today{}
  \end{textblock}
}

% Name command
\newcommand{\namesection}[3]{
  \centering{
    \sffamily{}
    \fontspec[Path=fonts/lato/]{Lato_Hai}
    \color{black}
    \fontsize{40pt}{10cm}
    \selectfont{#1}
    \fontspec[Path=fonts/lato/]{Lato_Lig}
    \selectfont{#2}
  }
  \\ % newline
  \vspace{5pt}
  \centering{
    \color{headings}
    \fontspec[Path=fonts/raleway/]{Raleway_Medium}
    \fontsize{11pt}{14pt}
    \selectfont{#3}
  }
  \noindent
  \makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
  \vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{
  \color{headings}
  \scshape
  \fontspec[Path=fonts/lato/]{Lato_Lig}
  \fontsize{16pt}{24pt}
  \selectfont
  \raggedright
  \uppercase{}
}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
  \color{subheadings}
  \fontspec[Path=fonts/lato/]{Lato_Bol}
  \fontsize{12pt}{12pt}
  \selectfont
  \raggedright
  \bfseries
  \uppercase
}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{
  \color{subheadings}
  \fontspec[Path=fonts/lato/]{Lato_Bol}
  \fontsize{12pt}{12pt}
  \selectfont
  \bfseries
  \uppercase{#1}
  \normalfont
}

% Descriptors command
\newcommand{\descript}[1]{
  \color{subheadings}
  \raggedright
  \scshape
  \fontspec[Path=fonts/raleway/]{Raleway_Medium}
  % \fontsize and \selectfont need to be contiguous
  \fontsize{11pt}{13pt}\selectfont
  {#1}
  \normalfont
}

% Location command
\newcommand{\location}[1]{
  \color{headings}
  \raggedright
  \fontspec[Path=fonts/raleway/]{Raleway_Medium}
  % \fontsize and \selectfont need to be contiguous
  \fontsize{10pt}{12pt}\selectfont
  {
    #1
    \\ % newline
  }
  \normalfont
}

% Section separators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}
  {\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
  {\end{itemize}\vspace{-\topsep}}
