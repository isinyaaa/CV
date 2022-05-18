\LoadClass[14pt]{extreport}

\RequirePackage{ifthen}
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
\RequirePackage{array, enumitem, xcolor}

\definecolor{nvidia}{HTML}{79bb01}
\definecolor{intel}{HTML}{007cc6}
\RequirePackage[colorlinks=true, urlcolor=violet]{hyperref}
\RequirePackage{xltabular}
\RequirePackage{graphicx}

\setlist[itemize]{leftmargin=*}
\linespread{1.15}
\newcommand\clink[1]{{\usefont{T1}{lmtt}{m}{n} #1 }}
\pagenumbering{gobble}
\newenvironment{csection}[1]{
    \textbf{#1}%
    \nolinebreak\vspace{0.15cm}%
    \hrule%
    \leavevmode%
    \small%
    \begin{itemize}
}{\end{itemize}}
\newenvironment{frcontent}[4]{
    {\textbf{#1} \leavevmode\newline}
    \footnotesize
    \ifthenelse{\equal{#2}{}}{}{({\textit{#2}})} \ifthenelse{\equal{#3}{}}{}{{#3}\textbf{ · }}%
    \ifthenelse{\equal{#4}{}}{}{{\textbf{#4}}}
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