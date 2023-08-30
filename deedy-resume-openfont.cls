% Resume Class
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1cm, vmargin=0.50cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Color Definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Main Fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/, BoldItalicFont=Lato-BolIta, BoldFont=Lato-Bol, ItalicFont=Lato-RegIta]{Lato-Reg}
\setsansfont[Scale=MatchLowercase, Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Name Command
\newcommand{\namesection}[3]{
\centering{
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #1 
\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Section Separators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings Command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subheadings Command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{11pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors Command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location Command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with Fewer Gaps Command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
