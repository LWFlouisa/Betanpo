## Basic qualifiers
define_method :cette do |noun, color|
  "Cette #{noun} est #{color}."
end

define_method :maisette do |noun, color|
  "Mais cette #{noun} est #{color}."
end

define_method :sinon do |noun, non_color1, non_color2, valid_color|
  "Sinon cette #{noun} n'est #{non_color1} ou #{non_color2}, mais est #{valid_color}."
end

define_method :necette do |noun, color|
  "Cette #{noun} n'est #{color}."
end

define_method :nemaisette do |noun, color|
  "Mais cette #{noun} n'est #{color}."
end

define_method :nesinon do |noun, non_color1, non_color2, valid_color|
  "#{nouns.upcase} n'est #{non_colour1} ou #{non_color2}, ou #{valid_color}. Quel est cette?"
end

## Contrasting
define_method :contrast do |specify_cette, specify_maisette, specify_sinon|
  "#{specify_cette} #{specify_maisette} #{specify_sinon}"
end

define_method :negative_contrast do |not_cette, not_maisette, not_sinon|
  "#{specify_cette} #{specify_maisette} #{specify_sinon}"
end

define_method :cette_nombre do |base_number, max_value|
  if base_number.is_a?(Integer)
    if base_number > max_value
      cette(base_number, "plus #{max_value}")
    else
      necette(base_number, "plus #{max_value}")
    end
  else
    return "Error: Cette nombre n'est un Integer."
  end
end

define_method :maisette_nombre do |base_number, min_value|
  if base_number.is_a?(Integer)
    if base_number < min_value
      maisette(base_number, "moins #{min_value}")
    else
      nemaisette(base_number, "moins #{min_value}")
    end
  else
    return "Error: Mais cette nombre n'est un Integer."
  end
end

define_method :sinon_nombre do |base_number, max_value, min_value|
  if base_number.is_a?(Integer)
    if base_number < max_value and base_number > min_value
      sinon(base_number, max_value, min_value, base_number)
    else
      nesinon(base_number, max_value, min_value, base_number)
      cette(base_number, "plus #{max_value}")
      maisette(base_number, "moins #{max_value}")
    end
  else
    return "Error: Sinon cette nombre n'est un Integer."
  end
end

define_method :sore_kosan do |base_float, max_value|
  if base_float.is_a?(Float)
    if base_float > max_value
      cette(base_number, "plus #{max_value}")
    else
      necette(base_number, "plus #{max_value}")
    end
  else
    return "Error: Cette kosan n'est un Float."
  end
end

define_method :shikashi_kosan do |base_float, min_value|
  if base_float.is_a?(Float)
    if base_float < min_value
      maisette(base_number, "moins #{min_value}")
    else
      nemaisette(base_number, "moins #{min_value}")
    end
  else
    return "Error: Mais cette kosan n'est un Float."
  end
end

define_method :matawa_kosan do |base_float, max_value, min_value|
  if base_float.is_a?(Float)
    if base_float < max_value and base_float > min_value
      sinon(base_float, max_value, min_value, base_float)
    else
      nesinon(base_number, max_value, min_value, base_number)
      cette(base_number, "plus #{max_value}")
      maisette(base_number, "moins #{max_value}")
    end
  else
    return "Error: Mais cette kosan n'est un Float."
  end
end

########################################################################################
#                               Establish Santiago Nodes                               #
########################################################################################
@santiago_une = Proc.new {
  | b1, b2, b3, b4,
    c1, c2, c3, c4,
    d1, d2, d3, d4,
    f1, f2, f3, f4,
    g1, g2, g3, g4,
    h1, h2, h3, h4,
    a1, a2, a3, a4,
    e1, e2, e3, e4,
    i1, i2, i3, i4,
    o1, o2, o3, o4,
    u1, u2, u3, u4 |

  b = [ b1, b2, b3, b4 ]
  c = [ c1, c2, c3, c4 ]
  d = [ d1, d2, d3, d4 ]
  f = [ f1, f2, f3, f4 ]
  g = [ g1, g2, g3, g4 ]
  h = [ h1, h2, h3, h4 ]
  a = [ a1, a2, a3, a4 ]
  e = [ e1, e2, e3, e4 ]
  i = [ i1, i2, i3, i4 ]
  o = [ o1, o2, o3, o4 ]
  u = [ u1, u2, u3, u4 ]
  
  symbols = [
    [[b[0], b[0], b[0]],
     [b[0], g[0], g[0]],
     [g[0], g[0], g[0]]],
     
    [[o[0], o[0], o[0]],
     [o[0], f[0], f[0]],
     [f[0], f[0], f[0]]],

    [[a[0], a[0], a[0]],
     [i[0], i[0], i[0]],
     [i[0], u[0], u[0]]],

    [[u[0], u[0], u[0]],
     [d[0], d[0], d[0]],
     [e[0], e[0], e[0]]],

    [[e[0], b[0], b[0]],
     [b[0], b[0], b[0]],
     [g[0], g[0], g[0]]],
  ]
  
  first_argument = [
    [[b[1], b[1], b[1]],
     [b[1], g[1], g[1]],
     [g[1], g[1], g[1]]],
     
    [[o[1], o[1], o[1]],
     [o[1], f[1], f[1]],
     [f[1], f[1], f[1]]],

    [[a[1], a[1], a[1]],
     [i[1], i[1], i[1]],
     [i[1], u[1], u[1]]],

    [[u[1], u[1], u[1]],
     [d[1], d[1], d[1]],
     [e[1], e[1], e[1]]],

    [[e[1], b[1], b[1]],
     [b[1], b[1], b[1]],
     [g[1], g[1], g[1]]],
  ]
  
  second_argument = [
    [[b[2], b[2], b[2]],
     [b[2], g[2], g[2]],
     [g[2], g[2], g[2]]],
     
    [[o[2], o[2], o[2]],
     [o[2], f[2], f[2]],
     [f[2], f[2], f[2]]],

    [[a[2], a[2], a[2]],
     [i[2], i[2], i[2]],
     [i[2], u[2], u[2]]],

    [[u[2], u[2], u[2]],
     [d[2], d[2], d[2]],
     [e[2], e[2], e[2]]],

    [[e[2], b[2], b[2]],
     [b[2], b[2], b[2]],
     [g[2], g[2], g[2]]],
  ]

  third_argument = [
    [[b[3], b[3], b[3]],
     [b[3], g[3], g[3]],
     [g[3], g[3], g[3]]],
     
    [[o[3], o[3], o[3]],
     [o[3], f[3], f[3]],
     [f[3], f[3], f[3]]],

    [[a[3], a[3], a[3]],
     [i[3], i[3], i[3]],
     [i[3], u[3], u[3]]],

    [[u[3], u[3], u[3]],
     [d[3], d[3], d[3]],
     [e[3], e[3], e[3]]],

    [[e[3], b[3], b[3]],
     [b[3], b[3], b[3]],
     [g[3], g[3], g[3]]],
  ]
  
  probabilities = [
    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],
  ]
  
  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  base_probability = 0.33 * 0.33
  
  ## Symbol
  current_symbol = symbols[cur_row][cur_col][cur_arr]
  
  ## First Argument
  current_arg1 = first_argument[cur_row][cur_col][cur_arr]

  ## Second Argument
  current_arg2 = second_argument[cur_row][cur_col][cur_arr]

  ## Third Argument
  current_arg3 = third_argument[cur_row][cur_col][cur_arr]

  ## Probability
  current_probability = probabilities[cur_row][cur_col][cur_arr] * base_probability
  
  current_information = ":#{current_symbol}, '#{current_arg1}', '#{current_arg2}', '#{current_arg3}'"
  
  puts current_information
  
  $current_symbol_a      = current_symbol
  $current_arg1_a        = current_arg1
  $current_arg2_a        = current_arg2
  $current_arg3_a        = current_arg3
  $current_probability_a = current_probability
  $current_information_a = current_information
}

@santiago_deux = Proc.new {
  | b1, b2, b3, b4,
    c1, c2, c3, c4,
    d1, d2, d3, d4,
    f1, f2, f3, f4,
    g1, g2, g3, g4,
    h1, h2, h3, h4,
    a1, a2, a3, a4,
    e1, e2, e3, e4,
    i1, i2, i3, i4,
    o1, o2, o3, o4,
    u1, u2, u3, u4 |

  e = [e1, e2, e3, e4]
  b = [b1, b2, b3, b4]
  g = [g1, g2, g3, g4]
  o = [o1, o2, o3, o4]
  c = [c1, c2, c3, c4]
  f = [f1, f2, f3, f4]
  a = [a1, a2, a3, a4]
  i = [ii, i2, i3. i4]
  u = [ui, u2, u3, u4]
  d = [d1, d2, d3, d4]

  symbols = [
    [[e[0], e[0], e[0]],
     [e[0], b[0], b[0]],
     [b[0], b[0], g[0]]],

    [[g[0], g[0], g[0]],
     [o[0], o[0], o[0]],
     [o[0], c[0], c[0]]],

    [[c[0], c[0], f[0]],
     [f[0], f[0], f[0]],
     [a[0], a[0], a[0]]],

    [[a[0], i[0], i[0]],
     [i[0], i[0], u[0]],
     [u[0], b[0], u[0]]],

    [[u[0], u[0], u[0]],
     [d[0], d[0], d[0]],
     [d[0], e[0], e[0]]],
  ]
  
  first_argument = [
    [[e[1], e[1], e[1]],
     [e[1], b[1], b[1]],
     [b[1], b[1], g[1]]],

    [[g[1], g[1], g[1]],
     [o[1], o[1], o[1]],
     [o[1], c[1], c[1]]],

    [[c[1], c[1], f[1]],
     [f[1], f[1], f[1]],
     [a[1], a[1], a[1]]],

    [[a[1], i[1], i[1]],
     [i[1], i[1], u[1]],
     [u[1], b[1], u[1]]],

    [[u[1], u[1], u[1]],
     [d[1], d[1], d[1]],
     [d[1], e[1], e[1]]],
  ]
  
  second_argument = [
    [[e[2], e[2], e[2]],
     [e[2], b[2], b[2]],
     [b[2], b[2], g[2]]],

    [[g[2], g[2], g[2]],
     [o[2], o[2], o[2]],
     [o[2], c[2], c[2]]],

    [[c[2], c[2], f[2]],
     [f[2], f[2], f[2]],
     [a[2], a[2], a[2]]],

    [[a[2], i[2], i[2]],
     [i[2], i[2], u[2]],
     [u[2], b[2], u[2]]],

    [[u[2], u[2], u[2]],
     [d[2], d[2], d[2]],
     [d[2], e[2], e[2]]],
  ]
  
  third_argument = [
    [[e[3], e[3], e[3]],
     [e[3], b[3], b[3]],
     [b[3], b[3], g[3]]],

    [[g[3], g[3], g[3]],
     [o[3], o[3], o[3]],
     [o[3], c[3], c[3]]],

    [[c[3], c[3], f[3]],
     [f[3], f[3], f[3]],
     [a[3], a[3], a[3]]],

    [[a[3], i[3], i[3]],
     [i[3], i[3], u[3]],
     [u[3], b[3], u[3]]],

    [[u[3], u[3], u[3]],
     [d[3], d[3], d[3]],
     [d[3], e[3], e[3]]],
  ]

  probabilities = [
    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],
  ]
  
  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  base_probability = 0.33 * 0.33
  
  ## Symbol
  current_symbol = symbols[cur_row][cur_col][cur_arr]
  
  ## First Argument
  current_arg1 = first_argument[cur_row][cur_col][cur_arr]

  ## Second Argument
  current_arg2 = second_argument[cur_row][cur_col][cur_arr]

  ## Third Argument
  current_arg3 = third_argument[cur_row][cur_col][cur_arr]

  ## Probability
  current_probability = probabilities[cur_row][cur_col][cur_arr] * base_probability
  
  current_information = ":#{current_symbol}, '#{current_arg1}', '#{current_arg2}', '#{current_arg3}'"
  
  puts current_information
  
  $current_symbol_b      = current_symbol
  $current_arg1_b        = current_arg1
  $current_arg2_b        = current_arg2
  $current_arg3_b        = current_arg3
  $current_probability_b = current_probability
  $current_information_b = current_information
}

@santiago_trois = Proc.new {
  | b1, b2, b3, b4,
    c1, c2, c3, c4,
    d1, d2, d3, d4,
    f1, f2, f3, f4,
    g1, g2, g3, g4,
    h1, h2, h3, h4,
    a1, a2, a3, a4,
    e1, e2, e3, e4,
    i1, i2, i3, i4,
    o1, o2, o3, o4,
    u1, u2, u3, u4 |

  d = [d1, d2, d3, d4]
  e = [e1, e2, e3, e4]
  b = [b1, b2, b3, b4]
  g = [g1, g2, g3, g4]
  o = [o1, o2, o3, o4]
  c = [c1, c2, c3, c4]
  f = [f1, f2, f3, f4]
  a = [a1, a2, a3, a4]
  i = [ii, i2, i3. i4]
  u = [ui, u2, u3, u4]
  
  symbols = [
    [[d[0], d[0], d[0]],
     [d[0], e[0], e[0]],
     [e[0], e[0], b[0]]],

    [[b[0], b[0], b[0]],
     [g[0], g[0], g[0]],
     [g[0], o[0], o[0]]],

    [[o[0], o[0], c[0]],
     [c[0], c[0], c[0]],
     [f[0], f[0], f[0]]],

    [[f[0], a[0], a[0]],
     [a[0], a[0], i[0]],
     [i[0], i[0], i[0]]],

    [[i[0], u[0], u[0]],
     [u[0], u[0], b[0]],
     [b[0], b[0], b[0]]],
  ]
  
  first_argument = [
    [[d[1], d[1], d[1]],
     [d[1], e[1], e[1]],
     [e[1], e[1], b[1]]],

    [[b[1], b[1], b[1]],
     [g[1], g[1], g[1]],
     [g[1], o[1], o[1]]],

    [[o[1], o[1], c[1]],
     [c[1], c[1], c[1]],
     [f[1], f[1], f[1]]],

    [[f[1], a[1], a[1]],
     [a[1], a[1], i[1]],
     [i[1], i[1], i[1]]],

    [[i[1], u[1], u[1]],
     [u[1], u[1], b[1]],
     [b[1], b[1], b[1]]],
  ]
  
  second_argument = [
    [[d[2], d[2], d[2]],
     [d[2], e[2], e[2]],
     [e[2], e[2], b[2]]],

    [[b[2], b[2], b[2]],
     [g[2], g[2], g[2]],
     [g[2], o[2], o[2]]],

    [[o[2], o[2], c[2]],
     [c[2], c[2], c[2]],
     [f[2], f[2], f[2]]],

    [[f[2], a[2], a[2]],
     [a[2], a[2], i[2]],
     [i[2], i[2], i[2]]],

    [[i[2], u[2], u[2]],
     [u[2], u[2], b[2]],
     [b[2], b[2], b[2]]],
  ]
  
  third_argument = [
    [[d[3], d[3], d[3]],
     [d[3], e[3], e[3]],
     [e[3], e[3], b[3]]],

    [[b[3], b[3], b[3]],
     [g[3], g[3], g[3]],
     [g[3], o[3], o[3]]],

    [[o[3], o[3], c[3]],
     [c[3], c[3], c[3]],
     [f[3], f[3], f[3]]],

    [[f[3], a[3], a[3]],
     [a[3], a[3], i[3]],
     [i[3], i[3], i[3]]],

    [[i[3], u[3], u[3]],
     [u[3], u[3], b[3]],
     [b[3], b[3], b[3]]],
  ]

  probabilities = [
    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],

    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  base_probability = 0.33 * 0.33
  
  ## Symbol
  current_symbol = symbols[cur_row][cur_col][cur_arr]
  
  ## First Argument
  current_arg1 = first_argument[cur_row][cur_col][cur_arr]

  ## Second Argument
  current_arg2 = second_argument[cur_row][cur_col][cur_arr]

  ## Third Argument
  current_arg3 = third_argument[cur_row][cur_col][cur_arr]

  ## Probability
  current_probability = probabilities[cur_row][cur_col][cur_arr] * base_probability
  
  current_information = ":#{current_symbol}, '#{current_arg1}', '#{current_arg2}', '#{current_arg3}'"
  
  puts current_information
  
  $current_symbol_c      = current_symbol
  $current_arg1_c        = current_arg1
  $current_arg2_c        = current_arg2
  $current_arg3_c        = current_arg3
  $current_probability_c = current_probability
  $current_information_c = current_information
}

def get_statistics(a1, a2, b1, b2, c1, c2)
  a = a1, a2
  b = b1, b2
  c = c1, c2

  matrix = [
    [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
    [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
    [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
  ], [
    [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
    [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
    [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
  ], [
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
  ]

  label_type       = matrix[0]
  definition_type  = matrix[1]
  probability_type = matrix[2]
  
  row_probability = 0.33
  col_probability = 0.33
  
  graph_selection = row_probability * col_probability

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_label       = label_type[cur_row][cur_col][cur_arr]
  current_definition  = definition_type[cur_row][cur_col][cur_arr]
  current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
  "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
  $current_label       = current_label
  $current_definition  = current_definition
  $current_probability = current_probability + current_probability
  $current_information = "#{current_label} #{current_definition}"
end

def get_neg_statistics(a1, a2, b1, b2, c1, c2)
  a = a1, a2
  b = b1, b2
  c = c1, c2

  matrix = [
    [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
    [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
    [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
  ], [
    [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
    [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
    [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
  ], [
    [[-0.50, -0.50], [-0.50, -0.50], [-0.50, -0.50]],
    [[-0.50, -0.50], [-0.50, -0.50], [-0.50, -0.50]],
    [[-0.50, -0.50], [-0.50, -0.50], [-0.50, -0.50]],
  ]

  label_type       = matrix[0]
  definition_type  = matrix[1]
  probability_type = matrix[2]
  
  row_probability = 0.33
  col_probability = 0.33
  
  graph_selection = row_probability * col_probability

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_label       = label_type[cur_row][cur_col][cur_arr]
  current_definition  = definition_type[cur_row][cur_col][cur_arr]
  current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
  "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
  $current_label       = current_label
  $current_definition  = current_definition
  $current_probability = current_probability + current_probability
  $current_information = "#{current_label} #{current_definition}"
end

def reasses
  if $current_probability > 0.999999999999999999
    $current_probability = 0.9 / $current_probability
  end
  
  case $current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{$current_information} ] because it has #{$current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{$current_information} ] because it has #{$current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability = $current_probability + 0.15
  
  ## Remove the third index so as not to influence the total summation.
  #$factored_probabilities = $factored_probabilities.append($current_probability)
  #$factored_probabilities = $factored_probabilityes.delete(2)
end

def reconsider
  if $current_probability > 0.999999999999999999
    $current_probability = 0.9 / $current_probability
  end

  case $current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{$current_information} ] because it has #{$current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{$current_information} ] because it has #{$current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability = $current_probability * 0.95
  
  ## Remove the third index so as not to influence the total summation.
  #$factored_probabilities = $factored_probabilities.append($current_probability)
  #$factored_probabilities = $factored_probabilityes.delete(2)
end

def dynamic_reward_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; reasses
  elsif current_reward_structure == l2_reasses; 2.times do reasses end
  elsif current_reward_structure == l3_reasses; 3.times do reasses end
  elsif current_reward_structure == l4_reasses; 4.times do reasses end
  else
    reconsider
  end
end

def dynamic_guillotine_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; reconsider
  elsif current_reward_structure == l2_reasses; 2.times do reconsider end
  elsif current_reward_structure == l3_reasses; 3.times do reconsider end
  elsif current_reward_structure == l4_reasses; 4.times do reconsider end
  else
    reconsider
  end
end

def dynamic_mode_switcher
  modes = [
    [["deposit", "deposit"], ["deposit", "extract"]],
    [["extract", "deposit"], ["extract", "extract"]],
  ]
  
  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_mode = modes[cur_row][cur_col][cur_arr]

  if    current_mode == "deposit"; dynamic_reward_allocation
  elsif current_mode == "extract"; dynamic_guillotine_allocation
  else
    dynamic_guillotine_allocation
  end
end

def floating_finger(a, b)
  right = :right_finger, a.split(" ")
  left = :left_finger, b.split(" ")

  floating = :floating_finger, right[1][1], left[1][0]

  $floating = floating

  "Floating finger: '#{floating[1]} #{floating[2]}'"
end

###############################################################################
#                               Betatsupolime                                 #
###############################################################################
# betatsupolime - Polymere glue; the state of being squashed with polymere    #
# glue.                                                                       #
###############################################################################
define_method :betanpo do |a, b|
  right = :right_finger, a.split(" ")
  left = :left_finger, b.split(" ")

  floating = :floating_finger, right[1][1], left[1][0]

  $floating = floating

  "Floating finger: '#{floating[1]} #{floating[2]}'"
end

define_method :betanpo_trois do |a1, b1, a2, b2, a3, b3|
  right = :right_finger, a.split(" ")
  left = :left_finger, b.split(" ")

  floating = :floating_finger, right[1][1], left[1][0]

  $floating_a = floating

  "Floating finger: '#{floating[1]} #{floating[2]}'"

  right = :right_finger, a.split(" ")
  left = :left_finger, b.split(" ")

  floating = :floating_finger, right[1][1], left[1][0]

  $floating_b = floating

  "Floating finger: '#{floating[1]} #{floating[2]}'"

  right = :right_finger, a.split(" ")
  left = :left_finger, b.split(" ")

  floating = :floating_finger, right[1][1], left[1][0]

  $floating_c = floating

  "Floating finger: '#{floating[1]} #{floating[2]}'"
end

define_method :betatsupolime_est do |a, b, c|
  merged_word = $floating
  
  if merged_word == c
    puts "BIANCA: These terms are indeed sticky."
  else
    puts "BIANCA: These terms are not sticky."
  end
end

###############################################################################
#                         Parallel Number Operations                          #
###############################################################################
define_method :nombres do |a1, b1, c1, a2, b2, c2, a3, b3, c3|
  comparison_one = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./nombres #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }
  
  comparison_two = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./nombres #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }

  comparison_tre = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./nombres #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }
  
  comparison_one.call(a1, b1, c1)
  comparison_two.call(a2, b2, c2)
  comparison_two.call(a3, b3, c3)
end

define_method :neg_nombres do |a1, b1, c1, a2, b2, c2, a3, b3, c3|
  neg_comparison_one = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./neg_nombres #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }
  
  neg_comparison_two = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./neg_nombres #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }

  neg_comparison_tre = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./neg_nombres #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }
  
  neg_comparison_one.call(a1, b1, c1)
  neg_comparison_two.call(a2, b2, c2)
  neg_comparison_tre.call(a3, b3, c3)
end

define_method :kosan do |a1, b1, c1, a2, b2, c2, a3, b3, c3|
  kosan_une = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./kosan #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }

  kosan_deux = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./kosan #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }

  kosan_trois = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./kosan #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }

  kosan_une.call(a1, b1, c1)
  kosan_deux.call(a2, b2, c2)
  kosan_trois.call(a3, b3, c3)
end

define_method :nikosan do |a1, b1, c1, a2, b2, c2, a3, b3, c3|
  nikosan_une = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./nikosan #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }

  nikosan_deux = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./nikosan #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }

  nikosan_trois = Proc.new { |user_supplied, larger_num, smaller_num|
    system("cd Crystal; ./nikosan #{user_supplied} #{larger_num} #{user_supplied} #{smaller_num} #{user_supplied} #{smaller_num} #{larger_num}")
  }

  nikosan_une.call(a1, b1, c1)
  nikosan_deux.call(a2, b2, c2)
  nikosan_trois.call(a3, b3, c3)
end

define_method :maisettelingua do | discrete1, max_interval1, max_quip1, min_interval1, min_quip1, maybe_quip1,
                                   discrete2, max_interval2, max_quip2, min_interval2, min_quip2, maybe_quip2,
                                   discrete3, max_interval3, max_quip3, min_interval3, min_quip3, maybe_quip3 |

  maisette_une = Proc.new { | discrete, max_interval, max_quip, min_interval, min_quip, maybe_quip |
    system("cd Crystal; ./maisettelingua #{probability} #{max_interval} #{max_quip} #{min_interval} #{min_quip} #{maybe_quip}")
  }
  
  kmaisette_deux = Proc.new { | discrete, max_interval, max_quip, min_interval, min_quip, maybe_quip |
    system("cd Crystal; ./maisettelingua #{probability} #{max_interval} #{max_quip} #{min_interval} #{min_quip} #{maybe_quip}")
  }
  
  maisette_trois = Proc.new { | discrete, max_interval, max_quip, min_interval, min_quip, maybe_quip |
    system("cd Crystal; ./maisettelingua #{probability} #{max_interval} #{max_quip} #{min_interval} #{min_quip} #{maybe_quip}")
  }
  
  klingua_une.call(probability1,   max_interval1, max_quip1, min_interval1, min_quip1, maybe_quip1)
  klingua_deux.call(probability2,  max_interval2, max_quip2, min_interval2, min_quip2, maybe_quip2)
  klingua_trois.call(probability3, max_interval3, max_quip3, min_interval3, min_quip3, maybe_quip3)
end

define_method :klingua do | probability1, max_interval1, max_quip1, min_interval1, min_quip1, maybe_quip1,
                            probability2, max_interval2, max_quip2, min_interval2, min_quip2, maybe_quip2,
                            probability3, max_interval3, max_quip3, min_interval3, min_quip3, maybe_quip3 |

  klingua_une = Proc.new { | probability, max_interval, max_quip, min_interval, min_quip, maybe_quip |
    system("cd Crystal; ./kosanlingua #{probability} #{max_interval} '#{max_quip}' #{min_interval} '#{min_quip}' '#{maybe_quip}'")
  }
  
  klingua_deux = Proc.new { | probability, max_interval, max_quip, min_interval, min_quip, maybe_quip |
    system("cd Crystal; ./kosanlingua #{probability} #{max_interval} '#{max_quip}' #{min_interval} '#{min_quip}' '#{maybe_quip}'")
  }
  
  klingua_trois = Proc.new { | probability, max_interval, max_quip, min_interval, min_quip, maybe_quip |
    system("cd Crystal; ./kosanlingua #{probability} #{max_interval} '#{max_quip}' #{min_interval} '#{min_quip}' '#{maybe_quip}'")
  }
  
  print "BIANCA: "
  klingua_une.call(probability1,   max_interval1, max_quip1, min_interval1, min_quip1, maybe_quip1)

  print "BIANCA: "
  klingua_deux.call(probability2,  max_interval2, max_quip2, min_interval2, min_quip2, maybe_quip2)

  print "BIANCA: "
  klingua_trois.call(probability3, max_interval3, max_quip3, min_interval3, min_quip3, maybe_quip3)
end

###############################################################################
#                             Narrative Functions                             #
###############################################################################
define_method :evil_laugh do |a1, b1, a2, b2, a3, b3|
  laugh_one = Proc.new { |name, location|
    system("cd Crystal; ./evil_laugh #{a1} #{b1}")
  }
  
  laugh_two = Proc.new { |name, location|
    system("cd Crystal; ./evil_laugh #{a2} #{b2}")
  }
  
  laugh_tre = Proc.new { |name, location|
    system("cd Crystal; ./evil_laugh #{a3} #{b3}")
  }

  laugh_one.call(a1, b1)
  laugh_two.call(a2, b2)
  laugh_tre.call(a3, b3)
end

define_method :is_haunted do |a1, b1, c1, a2, b2, c2, a3, b3, c3|
  haunting_one = Proc.new { |a1, b1, c1|
    system("cd Crystal; ./is_haunted #{a1} #{b1} #{c1}")
  }
  
  haunting_two = Proc.new { |a2, b2, c2|
    system("cd Crystal; ./is_haunted #{a2} #{b2} #{c2}")
  }
  
  haunting_tre = Proc.new { |a3, b3, c3|
    system("cd Crystal; ./is_haunted #{a3} #{b3} #{c3}")
  }

  haunting_one.call(a1, b1, c1)
  haunting_two.call(a2, b2, c2)
  haunting_tre.call(a3, b3, c3)
end

define_method :nu_anomaly do | a1, b1, width1_a, height1_a, width2_a, height_a,
                               a2, b2, width1_b, height1_b, width2_b, height_b,
                               a3, b3, width1_c, height1_c, width2_c, height_c|

  anomaly_one = Proc.new { | room_one, room_two, width1, height1, width2, height2 |
    system("cd Crystal; ./nu_anomaly #{room_one} #{room_two} #{width1} #{height1} #{width2} #{height2}")
  }
  
  anomaly_two = Proc.new { | room_one, room_two, width1, height1, width2, height2 |
    system("cd Crystal; ./nu_anomaly #{room_one} #{room_two} #{width1} #{height1} #{width2} #{height2}")
  }
  
  anomaly_tre = Proc.new { | room_one, room_two, width1, height1, width2, height2 |
    system("cd Crystal; ./nu_anomaly #{room_one} #{room_two} #{width1} #{height1} #{width2} #{height2}")
  }
  
  anomaly_one.call(a1, b1, width1_a, height1_a, width2_a, height_a)
  anomaly_two.call(a2, b2, width1_b, height1_b, width2_b, height_b)
  anomaly_tre.call(a3, b3, width1_c, height1_c, width2_c, height_c)
end

define_method :local_reality_zone do | a1, b1, x1_a, y1_a, x2_a, y2_a,
                                       a2, b2, x1_b, y1_b, x2_b, y2_b,
                                       a3, b3, x1_c, y1_c, x2_c, y2_c |


  zone_one   = Proc.new { |a, b, x1, y1, x2, y2|
    system("./realite_locale '#{a}' '#{b}' '#{x1}' '#{y1}' '#{x2}' '#{y2}'")
  }
  
  zone_two   = Proc.new { |a, b, x1, y1, x2, y2|
    system("./realite_locale '#{a}' '#{b}' '#{x1}' '#{y1}' '#{x2}' '#{y2}'")
  }
  
  zone_three = Proc.new { |a, b, x1, y1, x2, y2|
    system("./realite_locale '#{a}' '#{b}' '#{x1}' '#{y1}' '#{x2}' '#{y2}'")
  }
  
  zone_one.call(a1, b1, x1_a, y1_a, x2_a, y2_a)
  zone_two.call(a2, b2, x1_b, y1_b, x2_b, y2_b)
  zone_three.call(a3, b3, x1_c, y1_c, x2_c, y2_c)
end

###############################################################################
#                            Parallel Processing                              #
###############################################################################
define_method :compare_statements do | first_symbol_a, first_description_a, second_symbol_a, second_description_a, third_symbol_a, third_description_a,
                                       first_symbol_b, first_description_b, second_symbol_b, second_description_b, third_symbol_b, third_description_b,
                                       first_symbol_c, first_description_c, second_symbol_c, second_description_c, third_symbol_c, third_description_c |

  2.times do
    get_statistics(first_symbol_a,   first_description_a,
                   second_symbol_a, second_description_a,
                   third_symbol_a,   third_description_a)
                   
                   dynamic_mode_switcher
  end

  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")

  2.times do
    get_statistics(first_symbol_b,   first_description_b,
                   second_symbol_b, second_description_b,
                   third_symbol_b,   third_description_b)
                   
                   dynamic_mode_switcher
  end

  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")

  2.times do
    get_statistics(first_symbol_b,   first_description_b,
                   second_symbol_b, second_description_b,
                   third_symbol_b,   third_description_b)
                   
                   dynamic_mode_switcher
  end

  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")
end

define_method :compare_stickies do |a1_a, a2_a, b1_a, b2_a, c1_a, c2_a,
                                    a1_b, a2_b, b1_b, b2_b, c1_b, c2_b,
                                    a1_c, a2_c, b1_c, b2_c, c1_c, c2_c|
  2.times do
    get_statistics(:sticky_trivia_one, betanpo(a1_a, a2_a),
                   :sticky_trivia_two, betanpo(b1_a, b2_a),
                   :sticky_trivia_tre, betanpo(c1_a, c2_a))
                   
                   dynamic_mode_switcher
  end

  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")

  2.times do
    get_statistics(:sticky_trivia_fro, betanpo(a1_b, a2_b),
                   :sticky_trivia_fiv, betanpo(b1_b, b2_b),
                   :sticky_trivia_six, betanpo(c1_b, c2_b))
                   
                   dynamic_mode_switcher
  end

  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")
  
  2.times do
    get_statistics(:sticky_trivia_sev, betanpo(a1_c, a2_c),
                   :sticky_trivia_eit, betanpo(b1_c, b2_c),
                   :sticky_trivia_nin, betanpo(c1_c, c2_c))
                   
                   dynamic_mode_switcher
  end

  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")
end

define_method :compare_isolated_stickies do |a1_a, a2_a, b1_a, b2_a, c1_a, c2_a,
                                             a1_b, a2_b, b1_b, b2_b, c1_b, c2_b,
                                             a1_c, a2_c, b1_c, b2_c, c1_c, c2_c|
  2.times do
    get_statistics(:sticky_trivia_one, betanpo(a1_a, a2_a),
                   :sticky_trivia_two, betanpo(b1_a, b2_a),
                   :sticky_trivia_tre, betanpo(c1_a, c2_a))
                   
                   dynamic_mode_switcher
  end

  puts "[ #{$current_definition_a} ]"
  system("./kosan #{$current_probability_a} 0.8 #{$current_probability_a} 0.2 #{$current_probability_a} 0.2 0.8")

  2.times do
    get_statistics(:sticky_trivia_fro, betanpo(a1_b, a2_b),
                   :sticky_trivia_fiv, betanpo(b1_b, b2_b),
                   :sticky_trivia_six, betanpo(c1_b, c2_b))
                   
                   dynamic_mode_switcher
  end

  puts "[ #{$current_definition_a} ]"
  system("./kosan #{$current_probability_b} 0.8 #{$current_probability_b} 0.2 #{$current_probability_b} 0.2 0.8")
  
  2.times do
    get_statistics(:sticky_trivia_sev, betanpo(a1_c, a2_c),
                   :sticky_trivia_eit, betanpo(b1_c, b2_c),
                   :sticky_trivia_nin, betanpo(c1_c, c2_c))
                   
                   dynamic_mode_switcher
  end

  puts "[ #{$current_definition_c} ]"
  system("./kosan #{$current_probability_c} 0.8 #{$current_probability_c} 0.2 #{$current_probability_c} 0.2 0.8")
end

define_method :en_revanch do | a1_a, a2_a, b1_a, b2_a, c1_a, c2_a, c3_a, c4_a,
                               a1_b, a2_b, b1_b, b2_b, c1_b, c2_b, c3_b, c4_b,
                               a1_c, a2_c, b1_c, b2_c, c1_c, c2_c, c3_c, c4_c |
  2.times do
    get_statistics(:cette_une,               cette(a1_a, a2_a),
                   :maisett_une,          maisette(b1_a, b2_a),
                   :sinon_une,   sinon(c1_a, c2_a, c3_a, c4_a))
                   
                   dynamic_mode_switcher
  end
  
  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")

  2.times do
    get_statistics(:cette_une,               cette(a1_b, a2_b),
                   :maisett_une,          maisette(b1_b, b2_b),
                   :sinon_une,   sinon(c1_a, c2_b, c3_b, c4_b))
                   
                   dynamic_mode_switcher
  end
  
  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")

  2.times do
    get_statistics(:cette_une,               cette(a1_c, a2_c),
                   :maisett_une,          maisette(b1_c, b2_c),
                   :sinon_une,   sinon(c1_c, c2_c, c3_c, c4_c))
                   
                   dynamic_mode_switcher
  end
  
  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")
end

define_method :au_contraire do | a1_a, a2_a, b1_a, b2_a, c1_a, c2_a, c3_a, c4_a,
                                 a1_b, a2_b, b1_b, b2_b, c1_b, c2_b, c3_b, c4_b,
                                 a1_c, a2_c, b1_c, b2_c, c1_c, c2_c, c3_c, c4_c |
  2.times do
    get_neg_statistics(:cette_une,               cette(a1_a, a2_a),
                       :maisett_une,          maisette(b1_a, b2_a),
                      :sinon_une,   sinon(c1_a, c2_a, c3_a, c4_a))
                   
    dynamic_mode_switcher
  end
  
  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")

  2.times do
    get_neg_statistics(:cette_une,               cette(a1_b, a2_b),
                       :maisett_une,          maisette(b1_b, b2_b),
                       :sinon_une,   sinon(c1_a, c2_b, c3_b, c4_b))
                   
    dynamic_mode_switcher
  end
  
  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")

  2.times do
    get_neg_statistics(:cette_une,               cette(a1_c, a2_c),
                       :maisett_une,          maisette(b1_c, b2_c),
                       :sinon_une,   sinon(c1_c, c2_c, c3_c, c4_c))
                   
    dynamic_mode_switcher
  end
  
  puts "[ #{$current_definition} ]"
  system("./kosan #{$current_probability} 0.8 #{$current_probability} 0.2 #{$current_probability} 0.2 0.8")
end

###############################################################################
#                               Psantiago                                     #
###############################################################################
define_method :psantiago do | b1, b2, b3, b4,
                              c1, c2, c3, c4,
                              d1, d2, d3, d4,
                              f1, f2, f3, f4,
                              g1, g2, g3, g4,
                              h1, h2, h3, h4,
                              a1, a2, a3, a4,
                              e1, e2, e3, e4,
                              i1, i2, i3, i4,
                              o1, o2, o3, o4,
                              u1, u2, u3, u4 |
  
  puts "First Round"
  system("./general_auditer '#{b1}' '#{b2}' '#{b3}' '#{b4}' '#{c1}' '#{c2}' '#{c3}' '#{c4}' '#{d1}' '#{d2}' '#{d3}' '#{d4}' '#{f1}' '#{f2}' '#{f3}' '#{f4}' '#{g1}' '#{g2}' '#{g3}' '#{g4}' '#{h1}' '#{h2}' '#{h3}' '#{h4}' '#{a1}' '#{a2}' '#{a3}' '#{a4}' '#{e1}' '#{e2}' '#{e3}' '#{e4}' '#{i1}' '#{i2}' '#{i3}' '#{i4}' '#{o1}' '#{o2}' '#{o3}' '#{o4}' '#{u1}' '#{u2}' '#{u3}' '#{i4}'")

  puts "\nSecond Round"
  system("./general_auditer '#{o1}' '#{o2}' '#{o3}' '#{o4}' '#{u1}' '#{u2}' '#{u3}' '#{i4}' '#{b1}' '#{b2}' '#{b3}' '#{b4}' '#{c1}' '#{c2}' '#{c3}' '#{c4}' '#{d1}' '#{d2}' '#{d3}' '#{d4}' '#{f1}' '#{f2}' '#{f3}' '#{f4}' '#{g1}' '#{g2}' '#{g3}' '#{g4}' '#{h1}' '#{h2}' '#{h3}' '#{h4}' '#{a1}' '#{a2}' '#{a3}' '#{a4}' '#{e1}' '#{e2}' '#{e3}' '#{e4}' '#{i1}' '#{i2}' '#{i3}' '#{i4}'")

  puts "\nThird Round"
  system("./general_auditer '#{a1}' '#{a2}' '#{a3}' '#{a4}' '#{e1}' '#{e2}' '#{e3}' '#{e4}' '#{i1}' '#{i2}' '#{i3}' '#{i4}' '#{o1}' '#{o2}' '#{o3}' '#{o4}' '#{u1}' '#{u2}' '#{u3}' '#{i4}' '#{b1}' '#{b2}' '#{b3}' '#{b4}' '#{c1}' '#{c2}' '#{c3}' '#{c4}' '#{d1}' '#{d2}' '#{d3}' '#{d4}' '#{f1}' '#{f2}' '#{f3}' '#{f4}' '#{g1}' '#{g2}' '#{g3}' '#{g4}' '#{h1}' '#{h2}' '#{h3}' '#{h4}'") 

  puts "\nFourth Round"
  system("./general_auditer '#{f1}' '#{f2}' '#{f3}' '#{f4}' '#{g1}' '#{g2}' '#{g3}' '#{g4}' '#{h1}' '#{h2}' '#{h3}' '#{h4}' '#{a1}' '#{a2}' '#{a3}' '#{a4}' '#{e1}' '#{e2}' '#{e3}' '#{e4}' '#{i1}' '#{i2}' '#{i3}' '#{i4}' '#{o1}' '#{o2}' '#{o3}' '#{o4}' '#{u1}' '#{u2}' '#{u3}' '#{i4}' '#{b1}' '#{b2}' '#{b3}' '#{b4}' '#{c1}' '#{c2}' '#{c3}' '#{c4}' '#{d1}' '#{d2}' '#{d3}' '#{d4}'") 
end

###############################################################################
#                           Obelisk And Hydrolyses                            #
###############################################################################

########################################################################################
#                              Alcaline De Kasui Bunkai                                #
########################################################################################
# Alcakabu - Literally alkaline hydrolises; refers to the method of breaking down      #
# data into basic components / compounds, before using it as seeds for new             #
# algorithms. Still working out whether Procs are worth it for these functions.        #
########################################################################################
define_method :ahucakabu do |b1, b2, b3, b4,
                             c1, c2, c3, c4
                             d1, d2, d3, d4
                             f1, f2, f3, f4,
                             g1, g2, g3, g4,
                             h1, h2, h3, h4,
                             a1, a2, a3, a4,
                             e1, e2, e3, e4,
                             i1, i2, i3, i4,
                             o1, o2, o3, o4,
                             u1, u2, u3, u4|

  symbols = [ b1, c1, d1, f1,
              g1, h1, a1, e1,
              i1, o1, u1 ].sort #.uniq
              
  arg1 = [ b2, c2, d2, f2,
           g2, h2, a2, e2,
           i2, o2, u2 ].sort #.uniq
           
  arg2 = [ b3, c3, d3, f3,
           g3, h3, a3, e3,
           i3, o3, u3 ].sort #.uniq

  arg3 = [ b4, c4, d4, f4,
           g4, h4, a4, e4,
           i4, o4, u4 ].sort #.uniq
           
  symbol_size = symbols.size.to_i
  arg1_size   = arg1.size.to_i
  arg2_size   = arg2.size.to_i
  arg3_size   = arg3.size.to_i
  
  ## If everything passes checks, then procede for analyses.
  b = [  symbols[0],  arg1[0],  arg2[0],  arg3[0] ]
  c = [  symbols[1],  arg1[1],  arg2[1],  arg3[1] ]
  d = [  symbols[2],  arg1[2],  arg2[2],  arg3[2] ]
  f = [  symbols[3],  arg1[3],  arg2[3],  arg3[3] ]
  g = [  symbols[4],  arg1[4],  arg2[4],  arg3[4] ]
  h = [  symbols[5],  arg1[5],  arg2[5],  arg3[5] ]
  a = [  symbols[6],  arg1[6],  arg2[6],  arg3[6] ]
  e = [  symbols[7],  arg1[7],  arg2[7],  arg3[7] ]
  i = [  symbols[8],  arg1[8],  arg2[8],  arg3[8] ]
  o = [  symbols[9],  arg1[9],  arg2[9],  arg3[9] ]
  u = [ symbols[10], arg1[10], arg1[10], arg3[10] ]

  symbols = [
    [b[0], a[0]], [b[0], u[0]], [c[0], o[0]],
    [d[0], i[0]], [f[0], e[0]], [b[0], e[0]],     
    [b[0], o[0]], [c[0], a[0]], [c[0], i[0]],
  ], [
    [c[0], u[0]], [d[0], e[0]], [d[0], o[0]],
    [f[0], a[0]], [f[0], i[0]], [f[0], u[0]],
    [b[0], i[0]], [c[0], e[0]], [d[0], a[0]],
  ], [
    [d[0], u[0]], [f[0], o[0]], [g[0], a[0]],
    [g[0], u[0]], [g[0], e[0]], [g[0], o[0]],
    [g[0], i[0]], [h[0], a[0]], [h[0], e[0]],
  ]

  argument_one = [
    [b[1], a[1]], [b[1], u[1]], [c[1], o[1]],
    [d[1], i[1]], [f[1], e[1]], [b[1], e[1]],
    [b[1], o[1]], [c[1], a[1]], [c[1], i[1]],
  ], [
    [c[1], u[1]], [d[1], e[1]], [d[1], o[1]],
    [f[1], a[1]], [f[1], i[1]], [f[1], u[1]],
    [b[1], i[1]], [c[1], e[1]], [d[1], a[1]],
  ], [
    [d[1], u[1]], [f[1], o[1]], [g[1], a[1]],
    [g[1], u[1]], [g[1], e[1]], [g[1], o[1]],
    [g[1], i[1]], [h[1], a[1]], [h[1], e[1]],
  ]

  argument_two = [
    [b[2], a[2]], [b[2], u[2]], [c[2], o[2]],
    [d[2], i[2]], [f[2], e[2]], [b[2], e[2]],
    [b[2], o[2]], [c[2], a[2]], [c[2], i[2]],
  ], [
    [c[2], u[2]], [d[2], e[2]], [d[2], o[2]],
    [f[2], a[2]], [f[2], i[2]], [f[2], u[2]],
    [b[2], i[2]], [c[2], e[2]], [d[2], a[2]],
  ], [
    [d[2], u[2]], [f[2], o[2]], [g[2], a[2]],
    [g[2], u[2]], [g[2], e[2]], [g[2], o[2]],
    [g[2], i[2]], [h[2], a[2]], [h[2], e[2]],
  ]

  argument_tre = [
    [b[3], a[3]], [b[3], u[3]], [c[3], o[3]],
    [d[3], i[3]], [f[3], e[3]], [b[3], e[3]],
    [b[3], o[3]], [c[3], a[3]], [c[3], i[3]],
  ], [
    [c[3], u[3]], [d[3], e[3]], [d[3], o[3]],
    [f[3], a[3]], [f[3], i[3]], [f[3], u[3]],
    [b[3], i[3]], [c[3], e[3]], [d[3], a[3]],
  ], [
    [d[3], u[3]], [f[3], o[3]], [g[3], a[3]],
    [g[3], u[3]], [g[3], e[3]], [g[3], o[3]],
    [g[3], i[3]], [h[3], a[3]], [h[3], e[3]],
  ]

  probability = [
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
  ], [
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
  ], [
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
  ]

  base_probability = 0.33 * 0.33
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  ## Current Symbol
  current_symbol = symbols[cur_row][cur_col][cur_arr]
  
  ## Current Argument One
  current_arg1 = argument_one[cur_row][cur_col][cur_arr]

  ## Current Argument Two
  current_arg2 = argument_two[cur_row][cur_col][cur_arr]
  
  ## Current Argument Tre
  current_arg3 = argument_tre[cur_row][cur_col][cur_arr]
  
  ## Current Probabbility
  probability_selection = probability[cur_row][cur_col][cur_arr]
  current_probability   = base_probability * 0.5
  
  current_information = ":#{current_symbol}, '#{current_arg1}', '#{current_arg2}', '#{current_arg3}'"
  
  puts current_information
  
  $current_symbol      = current_symbol
  $current_arg1        = current_arg1
  $current_arg2        = current_arg2
  $current_arg3        = current_arg3
  $current_probability = current_probability
  $current_information = current_information
end

define_method :ahucakabu_gain do
  if $current_probability_a > 0.999999999999999999
    $current_probability_a = 0.9 / $current_probability_a
  end
  
  case $current_probability_a
  when 0.003921569000000000..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information_a} ] because it has #{$current_probability_a}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information_a} ] because it has #{$current_probability_a}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information_a} ] because it has #{$current_probability_a}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information_a} ] because it has #{$current_probability_a}."
  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability_a = $current_probability_a + 0.15

  if $current_probability_b > 0.999999999999999999
    $current_probability_b = 0.9 / $current_probability_b
  end
  
  case $current_probability_b
  when 0.003921569000000000..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information_b} ] because it has #{$current_probability_b}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information_b} ] because it has #{$current_probability_b}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information_b} ] because it has #{$current_probability_b}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information_b} ] because it has #{$current_probability_b}."
  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability_b = $current_probability_b + 0.15

  if $current_probability_c > 0.999999999999999999
    $current_probability_c = 0.9 / $current_probability_c
  end
  
  case $current_probability_c
  when 0.003921569000000000..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information_c} ] because it has #{$current_probability_c}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information_c} ] because it has #{$current_probability_c}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information_c} ] because it has #{$current_probability_c}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information_c} ] because it has #{$current_probability_c}."
  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability_c = $current_probability_c + 0.15
end

define_method :ahucakabu_loss do
  if $current_probability_a > 0.999999999999999999
    $current_probability_a = 0.9 / $current_probability_a
  end
  
  case $current_probability_a
  when 0.003921569000000000..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information_a} ] because it has #{$current_probability_a}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information_a} ] because it has #{$current_probability_a}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information_a} ] because it has #{$current_probability_a}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information_a} ] because it has #{$current_probability_a}."
  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability_a = $current_probability_a * 0.95

  if $current_probability_b > 0.999999999999999999
    $current_probability_b = 0.9 / $current_probability_b
  end
  
  case $current_probability_b
  when 0.003921569000000000..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information_b} ] because it has #{$current_probability_b}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information_b} ] because it has #{$current_probability_b}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information_b} ] because it has #{$current_probability_b}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information_b} ] because it has #{$current_probability_b}."
  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability_b = $current_probability_b * 0.95

  if $current_probability_c > 0.999999999999999999
    $current_probability_c = 0.9 / $current_probability_c
  end
  
  case $current_probability_c
  when 0.003921569000000000..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information_c} ] because it has #{$current_probability_c}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information_c} ] because it has #{$current_probability_c}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information_c} ] because it has #{$current_probability_c}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information_c} ] because it has #{$current_probability_c}."
  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability_c = $current_probability_c * 0.95
end

define_method :ahucakabu_info do |b1, b2, b3, b4,
                                  c1, c2, c3, c4
                                  d1, d2, d3, d4
                                  f1, f2, f3, f4,
                                  g1, g2, g3, g4,
                                  h1, h2, h3, h4,
                                  a1, a2, a3, a4,
                                  e1, e2, e3, e4,
                                  i1, i2. i3. i4.
                                  o1, o2, o3, o4,
                                  u1, u2, u3, u4, search_space|

  search_space = search_space.to_i
  
  search_space.times do
    ahucakabu(b1, b2, b3, b4,
              c1, c2, c3, c4
              d1, d2, d3, d4
              f1, f2, f3, f4,
              g1, g2, g3, g4,
              h1, h2, h3, h4,
              a1, a2, a3, a4,
              e1, e2, e3, e4,
              i1, i2. i3. i4.
              o1, o2, o3, o4,
              u1, u2, u3, u4)
              
    ## Present reward structure
    3.times do
      ahucakabu_gain; ahucakabu_loss
    end
  end
end

define_method :obelisk1 do | old_data |
  system("cd Crystal; ./obelisk1 #{old_data}; ./scatter_ashes")
end

define_method :obelisk2 do | old_data1, old_data2 |
  system("cd Crystal; ./obelisk1 #{old_data1} #{old_data2}; ./scatter_ashes")
end

define_method :obelisk3 do | old_data1, old_data2, old_data3 |
  system("cd Crystal; ./obelisk1 #{old_data1} #{old_data2} #{old_data3}; ./scatter_ashes")
end

define_method :obelisk4 do | old_data1, old_data2, old_data3, old_data4 |
  system("cd Crystal; /obelisk1 #{old_data1} #{old_data2} #{old_data3} #{old_data4}; ./scatter_ashes")
end
