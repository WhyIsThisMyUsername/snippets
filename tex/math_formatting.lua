local tex_utils = {}
tex_utils.in_mathzone = function() -- math context detection
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s(
    { trig = 'ff', condition = tex_utils.in_mathzone, wordTrig = true, snippetType = 'autosnippet', dscr = "Automatically expands 'ff' into '\frac{}{}'" },
    fmta(
      [[
        \frac{<>}{<>}
      ]],
      {
        i(1),
        i(2),
      }
    )
  ),
  s(
    { trig = 'spl', dscr = "Exapnds 'spl' into a split environment" },
    fmta(
      [[
        \begin{split}
            <>
        \end{split}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'aln', dscr = "Expands 'aln' into an align environment" },
    fmta(
      [[
        \begin{align}
            <>
        \end{align}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'ig', condition = tex_utils.in_mathzone, wordTrig = true, snippetType = 'autosnippet', dscr = "Expands 'ig' into '\\int^{}_{}'" },
    fmta(
      [[
        \int^{<>}_{<>}<>\diff <> 
      ]],
      {
        i(1),
        i(2),
        i(3),
        i(4),
      }
    )
  ),
  s(
    { trig = 'gd', dscr = "Expands 'gd' into a 'gathered' environment within an 'equation' environment" },
    fmta(
      [[
        \begin{equation}
            \begin{gathered}
                <>
            \end{gathered}
            \label{<>}
        \end{equation}
      ]],
      {
        i(1),
        i(2),
      }
    )
  ),
  s(
    { trig = 'ad', dscr = "Expands 'ad' into an 'aligned' environment with an 'equation' environment" },
    fmta(
      [[
        \begin{equation}
            \begin{aligned}
                <>
            \end{aligned}
            \label{<>}
        \end{equation}
      ]],
      {
        i(1),
        i(2),
      }
    )
  ),
  s(
    { trig = 'eq', dscr = "Expands 'eq' into an 'equation' environment" },
    fmta(
      [[
        \begin{equation}
            <>
            \label{<>}
        \end{equation}
      ]],
      {
        i(1),
        i(2),
      }
    )
  ),
  s(
    { trig = '([^%w])mm', regTrig = true, wordTrig = false, snippetType = 'autosnippet', dscr = "Auto-expands 'mm' into inline math mode" },
    fmta(
      [[
        <>$<>$
      ]],
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        i(1),
      }
    )
  ),
  s(
    { trig = 'ee', condition = tex_utils.in_mathzone, wordTrig = false, snippetType = 'autosnippet', dscr = "Automatically expands 'ee' into '^{}'" },
    fmta(
      [[
        ^{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'ss', condition = tex_utils.in_mathzone, wordTrig = false, snippetType = 'autosnippet', dscr = "Automatically expands 'ss' into '_{}'" },
    fmta(
      [[
        _{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'sm', condition = tex_utils.in_mathzone, wordTrig = false, snippetType = 'autosnippet', dscr = "Automatically expands 'sm' into '\\sum^{}_{}'" },
    fmta(
      [[
        \sum^{<>}_{<>}
      ]],
      {
        i(1),
        i(2),
      }
    )
  ),
  s(
    { trig = 'slr', condition = tex_utils.in_mathzone, wordTrig = false, snippetType = 'autosnippet', dscr = "Expands 'lr' into '\\left \\right" },
    fmta(
      [[
        \left<> {<>} \right<>
      ]],
      {
        i(1),
        i(2),
        i(3),
      }
    )
  ),
  s(
    { trig = 'rt', condition = tex_utils.in_mathzone, wordTrig = false, snippetType = 'autosnippet', dscr = "Expands 'rt' into '\\sqrt{}'" },
    fmta(
      [[
        \sqrt{<>}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'pmat', dscr = "Expands 'pmat' into a pmatrix environment" },
    fmta(
      [[
        \begin{pmatrix}
            <>
        \end{pmatrix}
      ]],
      {
        i(1),
      }
    )
  ),
  s(
    { trig = 'bmat', dscr = "Expands 'bmat' into a bmatrix environment" },
    fmta(
      [[
        \begin{bmatrix}
            <>
        \end{bmatrix}
      ]],
      {
        i(1),
      }
    )
  ),
}
