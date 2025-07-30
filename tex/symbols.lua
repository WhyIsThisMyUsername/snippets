local tex_utils = {}
tex_utils.in_mathzone = function() -- math context detection
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  -- Examples of Greek letter snippets, autotriggered for efficiency
  s({ trig = ';a', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\alpha ',
  }),
  s({ trig = ';A', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Alpha ',
  }),
  s({ trig = ';b', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\beta ',
  }),
  s({ trig = ';B', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Beta ',
  }),
  s({ trig = ';g', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\gamma ',
  }),
  s({ trig = ';G', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Gamma ',
  }),
  s({ trig = ';d', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\delta ',
  }),
  s({ trig = ';D', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Delta ',
  }),
  s({ trig = ';e', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\epsilon ',
  }),
  s({ trig = ';E', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Epsilon ',
  }),
  s({ trig = ';ve', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\varepsilon ',
  }),
  s({ trig = ';z', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\zeta ',
  }),
  s({ trig = ';Z', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Zeta ',
  }),
  s({ trig = ';h', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\eta ',
  }),
  s({ trig = ';H', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Eta ',
  }),
  s({ trig = ';th', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\theta ',
  }),
  s({ trig = ';Th', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Theta ',
  }),
  s({ trig = ';vt', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\vartheta ',
  }),
  s({ trig = ';i', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\iota ',
  }),
  s({ trig = ';I', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Iota ',
  }),
  s({ trig = ';k', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\kappa ',
  }),
  s({ trig = ';K', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Kappa ',
  }),
  s({ trig = ';vk', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\varkappa ',
  }),
  s({ trig = ';l', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\lambda ',
  }),
  s({ trig = ';L', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Lambda ',
  }),
  s({ trig = ';m', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\mu ',
  }),
  s({ trig = ';M', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Mu ',
  }),
  s({ trig = ';n', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\nu ',
  }),
  s({ trig = ';N', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Nu ',
  }),
  s({ trig = ';x', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\xi ',
  }),
  s({ trig = ';X', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Xi ',
  }),
  s({ trig = ';o', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\omicron ',
  }),
  s({ trig = ';O', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Omicron ',
  }),
  s({ trig = ';p', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\pi ',
  }),
  s({ trig = ';P', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Pi ',
  }),
  s({ trig = ';vp', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\varpi ',
  }),
  s({ trig = ';r', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\rho ',
  }),
  s({ trig = ';R', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Rho ',
  }),
  s({ trig = ';vr', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\varrho ',
  }),
  s({ trig = ';s', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\sigma ',
  }),
  s({ trig = ';S', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Sigma ',
  }),
  s({ trig = ';vs', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\varsigma ',
  }),
  s({ trig = ';ta', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\tau ',
  }),
  s({ trig = ';Ta', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Tau ',
  }),
  s({ trig = ';u', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\upsilon ',
  }),
  s({ trig = ';U', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Upsilon ',
  }),
  s({ trig = ';f', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\phi ',
  }),
  s({ trig = ';F', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Phi ',
  }),
  s({ trig = ';vf', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\varphi ',
  }),
  s({ trig = ';c', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\chi ',
  }),
  s({ trig = ';C', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Chi ',
  }),
  s({ trig = ';y', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\psi ',
  }),
  s({ trig = ';Y', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Psi ',
  }),
  s({ trig = ';w', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\omega ',
  }),
  s({ trig = ';W', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Omega ',
  }),
  s({ trig = 'crc', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '^{\\circ} ',
  }),
  s({ trig = ';inf', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\infty ',
  }),
  s({ trig = '>llr', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\longleftrightarrow ',
  }),
  s({ trig = '>lr', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\leftrightarrow ',
  }),
  s({ trig = '>lrl', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\longrightleftarrow ',
  }),
  s({ trig = '>rl', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\rightleftarrow ',
  }),
  s({ trig = '>Llr', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Longleftrightarrow ',
  }),
  s({ trig = '>Lr', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Leftrightarrow ',
  }),
  s({ trig = '>Lrl', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Longrightleftarrow ',
  }),
  s({ trig = '>Rl', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Right>leftarrow ',
  }),
  s({ trig = '>l', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\leftarrow ',
  }),
  s({ trig = '>r', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\rightarrow ',
  }),
  s({ trig = '>L', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Leftarrow ',
  }),
  s({ trig = '>R', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Rightarrow ',
  }),
  s({ trig = '>Ll', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Longleftarrow ',
  }),
  s({ trig = '>Lr', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\Longrightarrow ',
  }),
  s({ trig = '>ll', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\longleftarrow ',
  }),
  s({ trig = '>lr', condition = tex_utils.in_mathzone, snippetType = 'autosnippet', wordTrig = false }, {
    t '\\longrightarrow ',
  }),
}
