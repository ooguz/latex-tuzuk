% LaTeX icin tüzük classı
% (c) 2021 Özcan Oğuz - CC BY-SA 4.0 
% https://creativecommons.org/licenses/by-sa/4.0/

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tuzuk}[tuzuk]

\LoadClass[12pt, onecolumn]{article}

\ProcessOptions\relax

% Gerekli paketler
\RequirePackage[a4paper,
                top=2.5cm, 
                left=2.5cm, 
                right= 2.5cm, 
                bottom=2.5cm]{geometry}
\RequirePackage{mathptmx}
\RequirePackage{setspace}
\onehalfspacing

\RequirePackage{enumitem}
\RequirePackage[utf8]{inputenc}
\RequirePackage[turkish]{babel}
\RequirePackage[normalem]{ulem}
\RequirePackage{hyphenat}
\usepackage[T1]{fontenc}

% Değişkenler
\def\baskan#1{\def\@baskan{#1}}
\def\baskanyrd#1{\def\@baskanyrd{#1}}
\def\sekreter#1{\def\@sekreter{#1}}
\def\sayman#1{\def\@sayman{#1}}
\def\uye#1{\def\@uye{#1}}

\def\tuzukbasligi#1{
    \def\@tuzukbasligi{
            \textbf{%
                \MakeUppercase{#1}
            }
    }
}

% Bölüm ismi tanımı \bolumadi{<bolum-adi>}
\newcommand{\bolumadi}[1]{\vspace{8pt} \noindent\textbf{#1}\newline}


% Madde tanımı \madde{<madde-no>}{<madde-icerigi>}
\newcommand{\madde}[2]{\noindent\textbf{Madde #1:} #2 \\}

% Tüzük başlığı 
\renewcommand{\maketitle}{
\thispagestyle{plain}
    \begin{center}
        \vspace{12pt}
        \@tuzukbasligi
    \end{center}
}

% Maddeler için fıkra tanımı
% \begin{fikra} -- \end{fikra} arasına eklenen her \item 
% a. b. c. gibi küçük harfle numaralandırılır
\newenvironment{fikra}
    {\begin{enumerate}[label=\alph*.]
    }
    {%
      \end{enumerate}  
    }

% Tüzüğün sonundaki imza alanları
\newcommand{\imzalar}{
    \renewcommand{\arraystretch}{1}
    \vspace{1.5cm} \noindent  \begin{tabular}{p{5cm}p{5cm}p{5cm}}
    \hrulefill & \hrulefill & \hrulefill \\
    \centering \@baskan & \centering \@baskanyrd & \centering \@sekreter \\
    \vspace{1cm} & \centering \\
    \hrulefill & \hrulefill \\
    \centering \@sayman & \centering \@uye \\
    \end{tabular}
}
