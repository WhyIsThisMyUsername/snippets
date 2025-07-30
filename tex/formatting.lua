local tex_utils = {}
local line_begin = require('luasnip.extras.expand_conditions').line_begin

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
    { trig = 'bb', snippetType = 'autosnippet', dscr = "Expands 'bb' into '\textbf{}'" },
    fmta(
      [[
        \textbf{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'ii', snippetType = 'autosnippet', dscr = "Expands 'ii' into '\textit{}'" },
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
    { trig = 'cc', snippetType = 'autosnippet', dscr = "Expands 'cc' into '\\mathcal{}'" },
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
    { trig = 'env', condition = line_begin, dscr = "Expands 'env' into '\\begin{environment} \\end{environment}'" },
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
            \label{fig:<>}
        \end{figure}
      ]],
      {
        i(1),
        i(2, 'image.png'),
        i(3, 'Caption for the figure'),
        i(4, 'label'),
      }
    )
  ),
  s(
    { trig = 'tcl', snippetType = 'autosnippet', dscr = "Exapnds 'tcl' into '\\textcolor{}{}" },
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
    { trig = 'tcr', snippetType = 'autosnippet', dscr = "Expands 'tcr' into '\\textcolor{red}{}'" },
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
    { trig = 'h1', condition = line_begin, snippetType = 'autosnippet', dscr = "Exapnds 'h1' into '\\section{}" },
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
    { trig = 'h2', condition = line_begin, snippetType = 'autosnippet', dscr = "Expands 'h2' into '\\subsection{}'" },
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
    { trig = 'h3', condition = line_begin, snippetType = 'autosnippet', dscr = "Expands 'h3' into '\\subsubsection{}'" },
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
    { trig = 'ot', condition = line_begin, snippetType = 'autosnippet', dscr = "Expands 'ot' into an outline environment" },
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
    { trig = 'eot', condition = line_begin, snippetType = 'autosnippet', dscr = "Expands 'oten' into an outline enumerate environment" },
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
  s(
    { trig = 'wfg', dscr = "Expands 'wfg' into a wrapfigure environment" },
    fmta(
      [[
        \begin{wrapfigure}{<>}{<>}
            \centering
            \includegraphics[width=<>\textwidth]{<>}
            \caption{<>}
            \label{fig:<>}
        \end{wrapfigure}
      ]],
      {
        i(1, 'r'), -- position (l, r, or i)
        i(2, '0.4\textwidth'), -- width
        i(3, '0.4'), -- image width
        i(4, 'image.png'), -- image file
        i(5, 'Caption for the wrapfigure'),
        i(6, 'label'),
      }
    )
  ),
}
