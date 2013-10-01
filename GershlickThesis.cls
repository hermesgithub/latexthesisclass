%\RequirePackage[l2tabu, orthodox]{nag}
%PhD Thesis at The University of Leeds by David Gershlick
\LoadClass[12pt,a4paper]{article}
\usepackage[top=3cm, bottom=4cm, left=4cm, right=2.5cm, head=30pt]{geometry}

\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
%all the maths stuff
\usepackage{xspace}

\setcounter{secnumdepth}{3}
\usepackage{chngcntr}
\counterwithin{figure}{section}
\counterwithin{table}{section}
%This is the depth of the numbers accompaning the section heading

\usepackage[backend=bibtex,style=authoryear-comp,isbn=false,url=false,doi=false,maxbibnames=99,maxcitenames=2,firstinits=true,uniquename=init]{biblatex}
\addbibresource{../.././Thesis/references/library.bib}
\renewbibmacro{in:}{%
  \ifentrytype{article}{}{%
  \printtext{\bibstring{in}\intitlepunct}}}
\AtEveryBibitem{%
  \clearfield{day}%
  \clearfield{month}%
  \clearfield{endday}%
  \clearfield{endmonth}%
}
\DeclareNameAlias{sortname}{last-first}
\DeclareNameFormat{last-first}{%
  \iffirstinits
    {\usebibmacro{name:last-first}{#1}{#4}{#5}{#7}}
    {\usebibmacro{name:last-first}{#1}{#3}{#5}{#7}}%
  \usebibmacro{name:andothers}}
\setlength\bibitemsep{0.8\itemsep}
\renewcommand*{\nameyeardelim}{\addcomma\space}
\renewbibmacro*{name:andothers}{%
  \ifboolexpr{
    test {\ifnumequal{\value{listcount}}{\value{liststop}}}
    and
    test \ifmorenames
    }
    {\ifnumgreater{\value{liststop}}{1}
       {\finalandcomma}
       {}%
     \andothersdelim\bibstring[]{andothers}}   %Put emph in the square brackets for italics here
    {}}
%Referencing stuff. The .bib file is the bibtex file exported from mendeley

\usepackage{setspace}
\doublespacing
\usepackage{parskip}
%the first two allows for double spacing and the last package allows for the extra space between paragraphs.

\usepackage{fancyhdr}
\pagestyle{fancyplain}
%this is the header stuff
\fancypagestyle{plain}{%
\fancyhf{} % clear all header and footer fields
\fancyfoot[C]{\bfseries \thepage} % except the center
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}
%redefines plain style to use on title pages etc etc- at the moment it is default can be changed to whatever

\usepackage{lscape}
\usepackage{verbatim}
\usepackage[nobottomtitles,compact]{titlesec}
\clubpenalty = 10000
\widowpenalty = 10000
\displaywidowpenalty = 10000
%this avoids titles at the bottom of pages and orphans
\usepackage{sectsty}
\allsectionsfont{\raggedright}
\sectionfont{\normalfont\large\MakeUppercase}
\subsectionfont{\normalfont\small\MakeUppercase}
\subsubsectionfont{\small\sc}
%\titleformat{hcommandi}[hshapei]{hformati}{hlabeli}{hsepi}{hbeforei}[hafteri]
%\titleformat{\section}{\large\raggedright\MakeUppercase}{\thesection}{\xspace}{}
%
%\titleformat{\subsection}{\small\MakeUppercase}{\thesubsection}{\xspace}{}
%
%\titleformat{\subsubsection}{\small\scshape}{\thesubsubsection}{\xspace}{}
%this allows for the formatting of the section and subsection titles

\usepackage[none]{hyphenat}
\sloppy
\usepackage{microtype}
%This avoids line breakeages but keeps the margins

\usepackage{array}
\usepackage{booktabs}
%\begin{tabular}{llr}
%http://www.howtotex.com/packages/improve-your-tables-with-booktabs/  For making nice inline tables
%\end{tabular}

\usepackage[nottoc]{tocbibind}
%http://www.howtotex.com/packages/how-to-add-bibliography-and-more-to-table-of-contents/

\usepackage{graphicx}
\usepackage{epstopdf} 
\usepackage[footnotesize]{caption}
\newcommand{\degc}{\ensuremath${^\circ}{\mathrm{C}}$\xspace}
\newcommand{\ul}{{\ensuremath{\mu}}l\xspace} 
\newcommand{\its}{\textit}
\newcommand{\per}{$\%$\xspace}
\newcommand{\ug}{$\mu$g\xspace}
\newcommand{\subt}{$_{2}$\xspace}
\newcommand{\subh}{$_{3}$\xspace}
\newcommand{\subf}{$_{4}$\xspace}
\newcommand{\lam}{$\lambda$\xspace}
\newcommand{\um}{{\ensuremath{\mu}}m\xspace} 
\newcommand{\arb}{\its{A. thaliana}\xspace}
\newcommand{\tob}{\its{N. tabacum}\xspace}
\newcommand{\eco}{\its{E. coli}\xspace}
\newcommand{\agro}{\its{A. tumefaciens}\xspace}

\let\cite\parencite
%Custom commands

\usepackage{datatool}
\newcommand*{\addacronym}[2]{%
  \DTLnewrow{acronyms}%
  \DTLnewdbentry{acronyms}{Acronym}{#1}%
  \DTLnewdbentry{acronyms}{Description}{#2}%
}

\usepackage{subfiles}

\usepackage{float}

\usepackage[table]{xcolor}
\usepackage{longtable}
\usepackage{isomath}

\usepackage[nopar]{lipsum}

\usepackage{wrapfig}

\usepackage{sidecap}
\usepackage{rotating} 
\usepackage{array}


%\thispagestyle{plain}
%\section{References}
%\begin{spacing}{1}
%\renewcommand{\refname}{}
%\renewcommand{\mkbibnamefirst}[1]{\textsc{#1}}
%\renewcommand{\mkbibnamelast}[1]{\textsc{#1}}
%\renewcommand{\mkbibnameprefix}[1]{\textsc{#1}}
%\renewcommand{\mkbibnameaffix}[1]{\textsc{#1}}
%\renewcommand{\finentrypunct}{}
%\vspace*{-1cm}
%\printbibliography[heading=subbibliography,title={}]
%\thispagestyle{plain}
%\end{spacing}
