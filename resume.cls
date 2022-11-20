\LoadClass[14pt]{extreport}

\RequirePackage{polyglossia}
\setdefaultlanguage[]{english}
\PolyglossiaSetup{english}{indentfirst=false}
\RequirePackage{geometry}
\geometry{a4paper,
    left={0.5in},
    top={0.4in},
    right={0.5in},
    bottom={0.4in}
}

\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\pagenumbering{gobble}
\linespread{1.15}

\RequirePackage{xcolor}
% \definecolor{papercolor}{HTML}{282828}
% \definecolor{textcolor}{HTML}{eeeeee}
% \RequirePackage[pagecolor={papercolor}]{pagecolor}
% \color{textcolor}
\definecolor{nvidia-green}{HTML}{79bb01}
\definecolor{intel-blue}{HTML}{007cc6}
\RequirePackage[colorlinks=true, urlcolor=violet]{hyperref}

\RequirePackage{enumitem}
\setlist[itemize]{leftmargin=*}

\RequirePackage{ifthen}
\newcommand\clink[1]{{\usefont{T1}{lmtt}{m}{n} #1 }}
\newenvironment{csection}[1]{
    \noindent%
    {\normalsize\textbf{#1}}%
    \vphantom{Pp}%
    \vspace{0.1cm}
    \hrule
    \leavevmode%
    \small%
    \vspace{-5pt}%
    \begin{itemize}
}{\end{itemize}}
\newenvironment{frcontent}[4]{
    {\small\textbf{#1}}\newline%
    \footnotesize%
    \ifthenelse{\equal{#2}{}}{}{{#2}\newline}%
    \ifthenelse{\equal{#3}{}}{}{{\textit{#3}}\newline}%
    \ifthenelse{\equal{#4}{}}{}{{\textbf{#4}}}%
    \leavevmode\newline
}{\leavevmode\newline}
\newcommand\frsimple[3]{
    {
        \textbf{#1} \leavevmode\newline
        {\footnotesize
            \ifthenelse{\equal{#2}{}}{}{{#2}\textbf{ · }}%
            \ifthenelse{\equal{#3}{}}{}{{\textbf{#3}}}
        }
    }
}

\RequirePackage{array, xltabular, graphicx, fontawesome5}