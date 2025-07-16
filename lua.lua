return {
  s(
    { trig = 'snp', dscr = "Expands 'snp' into new snippet definition" },
    fmta(
      [=[
        s(
          { trig = '<>',<> dscr = "<>" },
          fmta(
            [[
              <>
            ]],
            {
              <>,
            }
          )
        ),
      ]=],
      {
        i(1, 'trigger'),
        i(2),
        i(3, 'description'),
        i(4, 'snippet content'),
        i(5, 'i(1)'),
      }
    )
  ),
  s(
    { trig = 'symsnp', dscr = "Expands 'symsnp' into a new snippet defintion for symbols" },
    fmta(
      [[
       s({ trig = '<>', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
          t '\\<>',
        }),
      ]],
      {
        i(1, 'trigger'),
        i(2, 'snippet content'),
      }
    )
  ),
}
