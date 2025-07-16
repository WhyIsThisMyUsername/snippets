return {
  s(
    { trig = 'tt', dscr = "Expands 'tt' into '\texttt{}'" },
    fmta(
      [[
        \texttt{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'bb', dscr = "Expands 'bb' into '\textbf{}'" },
    fmta(
      [[
        \mathbf{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'ii', dscr = "Expands 'ii' into '\textit{}'" },
    fmta(
      [[
        \textit{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'cc', dscr = "Expands 'cc' into '\\mathcal{}'" },
    fmta(
      [[
        \mathcal{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'env', dscr = "Expands 'env' into '\\begin{environment} \\end{environment}'" },
    fmta(
      [[
        \begin{<>}
            <>
        \end{<>}
      ]],
      {
        i(1, 'environment'),
        i(2),
        rep(1),
      }
    )
  ),
  s(
    { trig = 'fig', dscr = "Expands 'fig' into a figure environment with caption" },
    fmta(
      [[
        \begin{figure}[htbp]
            \centering
            \includegraphics[width=<>\textwidth]{<>}
            \caption{<>}
            \label{<>}
        \end{figure}
      ]],
      {
        i(1),
        i(2, 'image.png'),
        i(3, 'Caption for the figure'),
        i(4, 'fig:label'),
      }
    )
  ),
  s(
    { trig = 'tcl', dscr = "Exapnds 'tcl' into '\\textcolor{}{}" },
    fmta(
      [[
        \textcolor{<>}{<>}
      ]],
      {
        i(1, 'color'),
        i(2, 'text'),
      }
    )
  ),
  s(
    { trig = 'tcr', dscr = "Expands 'tcr' into '\\textcolor{red}{}'" },
    fmta(
      [[
        \textcolor{red}{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'h1', dscr = "Exapnds 'h1' into '\\section{}" },
    fmta(
      [[
        \section{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'h2', dscr = "Expands 'h2' into '\\subsection{}'" },
    fmta(
      [[
        \subsection{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'h3', dscr = "Expands 'h3' into '\\subsubsection{}'" },
    fmta(
      [[
        \subsubsection{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'ot', dscr = "Expands 'ot' into an outline environment" },
    fmta(
      [[
        \begin{outline}
            \1 <>
        \end{outline}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'oten', dscr = "Expands 'oten' into an outline enumerate environment" },
    fmta(
      [[
        \begin{outline}[enumerate]
            \1 <>
        \end{outline}
      ]],
      {
        i(1),
      }
    )
  ),
}
