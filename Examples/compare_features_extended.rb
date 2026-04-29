require_relative "DSL/ParallelProcessing.rb"

## Bedroom Features
a = :japanese_futon, "This is a Japanese futon close to the window."
b = :bedside_table,  "This is a bedside table closer to the Japanese futon."
c = :electric_piano, "This is a grey electric keyboard with different settings."

## Kitchen Features
d = :kitchen_sink,  "This is a kitchen sink with warm and cold settings."
e = :refridgerator, "This is a refridgerator with a fridge and a freezer."
f = :stovetop,      "This is a stovetop with ranges of temperature, and a door locker."

## Bathroom Features
g = :powered_toilet, "This is a supercharged toilet that prevents toilet clogging."
h = :alita_curtain,  "This is a Battle Angel Alita curtain from Red Bubble."
i = :mermaid_window, "This mermaid statue sits inside the window."

symbols = [
  [[a[0], a[0], a[0], a[0], a[0], a[0], a[0], a[0], a[0]],
   [a[0], a[0], a[0], a[0], a[0], a[0], a[0], a[0], b[0]],
   [a[0], a[0], a[0], a[0], a[0], a[0], a[0], a[0], c[0]],
   [a[0], a[0], a[0], a[0], a[0], a[0], a[0], a[0], d[0]],
   [a[0], a[0], a[0], a[0], a[0], a[0], a[0], a[0], e[0]],
   [a[0], a[0], a[0], a[0], a[0], a[0], a[0], a[0], f[0]],
   [a[0], a[0], a[0], a[0], a[0], a[0], a[0], a[0], g[0]],
   [a[0], a[0], a[0], a[0], a[0], a[0], a[0], a[0], h[0]],
   [a[0], a[0], a[0], a[0], a[0], a[0], a[0], a[0], i[0]]],

  [[b[0], b[0], b[0], b[0], b[0], b[0], b[0], b[0], a[0]],
   [b[0], b[0], b[0], b[0], b[0], b[0], b[0], b[0], b[0]],
   [b[0], b[0], b[0], b[0], b[0], b[0], b[0], b[0], c[0]],
   [b[0], b[0], b[0], b[0], b[0], b[0], b[0], b[0], d[0]],
   [b[0], b[0], b[0], b[0], b[0], b[0], b[0], b[0], e[0]],
   [b[0], b[0], b[0], b[0], b[0], b[0], b[0], b[0], f[0]],
   [b[0], b[0], b[0], b[0], b[0], b[0], b[0], b[0], g[0]],
   [b[0], b[0], b[0], b[0], b[0], b[0], b[0], b[0], h[0]],
   [b[0], b[0], b[0], b[0], b[0], b[0], b[0], b[0], i[0]]],

  [[c[0], c[0], c[0], c[0], c[0], c[0], c[0], c[0], a[0]],
   [c[0], c[0], c[0], c[0], c[0], c[0], c[0], c[0], b[0]],
   [c[0], c[0], c[0], c[0], c[0], c[0], c[0], c[0], c[0]],
   [c[0], c[0], c[0], c[0], c[0], c[0], c[0], c[0], d[0]],
   [c[0], c[0], c[0], c[0], c[0], c[0], c[0], c[0], e[0]],
   [c[0], c[0], c[0], c[0], c[0], c[0], c[0], c[0], f[0]],
   [c[0], c[0], c[0], c[0], c[0], c[0], c[0], c[0], g[0]],
   [c[0], c[0], c[0], c[0], c[0], c[0], c[0], c[0], h[0]],
   [c[0], c[0], c[0], c[0], c[0], c[0], c[0], c[0], i[0]]],

  [[d[0], d[0], d[0], d[0], d[0], d[0], d[0], d[0], a[0]],
   [d[0], d[0], d[0], d[0], d[0], d[0], d[0], d[0], b[0]],
   [d[0], d[0], d[0], d[0], d[0], d[0], d[0], d[0], c[0]],
   [d[0], d[0], d[0], d[0], d[0], d[0], d[0], d[0], d[0]],
   [d[0], d[0], d[0], d[0], d[0], d[0], d[0], d[0], e[0]],
   [d[0], d[0], d[0], d[0], d[0], d[0], d[0], d[0], f[0]],
   [d[0], d[0], d[0], d[0], d[0], d[0], d[0], d[0], g[0]],
   [d[0], d[0], d[0], d[0], d[0], d[0], d[0], d[0], h[0]],
   [d[0], d[0], d[0], d[0], d[0], d[0], d[0], d[0], i[0]]],

  [[e[0], e[0], e[0], e[0], e[0], e[0], e[0], e[0], a[0]],
   [e[0], e[0], e[0], e[0], e[0], e[0], e[0], e[0], b[0]],
   [e[0], e[0], e[0], e[0], e[0], e[0], e[0], e[0], c[0]],
   [e[0], e[0], e[0], e[0], e[0], e[0], e[0], e[0], d[0]],
   [e[0], e[0], e[0], e[0], e[0], e[0], e[0], e[0], e[0]],
   [e[0], e[0], e[0], e[0], e[0], e[0], e[0], e[0], f[0]],
   [e[0], e[0], e[0], e[0], e[0], e[0], e[0], e[0], g[0]],
   [e[0], e[0], e[0], e[0], e[0], e[0], e[0], e[0], h[0]],
   [e[0], e[0], e[0], e[0], e[0], e[0], e[0], e[0], i[0]]],

  [[f[0], f[0], f[0], f[0], f[0], f[0], f[0], f[0], a[0]],
   [f[0], f[0], f[0], f[0], f[0], f[0], f[0], f[0], b[0]],
   [f[0], f[0], f[0], f[0], f[0], f[0], f[0], f[0], c[0]],
   [f[0], f[0], f[0], f[0], f[0], f[0], f[0], f[0], d[0]],
   [f[0], f[0], f[0], f[0], f[0], f[0], f[0], f[0], e[0]],
   [f[0], f[0], f[0], f[0], f[0], f[0], f[0], f[0], f[0]],
   [f[0], f[0], f[0], f[0], f[0], f[0], f[0], f[0], g[0]],
   [f[0], f[0], f[0], f[0], f[0], f[0], f[0], f[0], h[0]],
   [f[0], f[0], f[0], f[0], f[0], f[0], f[0], f[0], i[0]]],

  [[g[0], g[0], g[0], g[0], g[0], g[0], g[0], g[0], a[0]],
   [g[0], g[0], g[0], g[0], g[0], g[0], g[0], g[0], b[0]],
   [g[0], g[0], g[0], g[0], g[0], g[0], g[0], g[0], c[0]],
   [g[0], g[0], g[0], g[0], g[0], g[0], g[0], g[0], d[0]],
   [g[0], g[0], g[0], g[0], g[0], g[0], g[0], g[0], e[0]],
   [g[0], g[0], g[0], g[0], g[0], g[0], g[0], g[0], f[0]],
   [g[0], g[0], g[0], g[0], g[0], g[0], g[0], g[0], g[0]],
   [g[0], g[0], g[0], g[0], g[0], g[0], g[0], g[0], h[0]],
   [g[0], g[0], g[0], g[0], g[0], g[0], g[0], g[0], i[0]]],

  [[h[0], h[0], h[0], h[0], h[0], h[0], h[0], h[0], a[0]],
   [h[0], h[0], h[0], h[0], h[0], h[0], h[0], h[0], b[0]],
   [h[0], h[0], h[0], h[0], h[0], h[0], h[0], h[0], c[0]],
   [h[0], h[0], h[0], h[0], h[0], h[0], h[0], h[0], d[0]],
   [h[0], h[0], h[0], h[0], h[0], h[0], h[0], h[0], e[0]],
   [h[0], h[0], h[0], h[0], h[0], h[0], h[0], h[0], f[0]],
   [h[0], h[0], h[0], h[0], h[0], h[0], h[0], h[0], g[0]],
   [h[0], h[0], h[0], h[0], h[0], h[0], h[0], h[0], h[0]],
   [h[0], h[0], h[0], h[0], h[0], h[0], h[0], h[0], i[0]]],

  [[i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], a[0]],
   [i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], b[0]],
   [i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], c[0]],
   [i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], d[0]],
   [i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], e[0]],
   [i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], f[0]],
   [i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], g[0]],
   [i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], h[0]],
   [i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0]]],
]

descriptions = [
  [[a[1], a[1], a[1], a[1], a[1], a[1], a[1], a[1], a[1]],
   [a[1], a[1], a[1], a[1], a[1], a[1], a[1], a[1], b[1]],
   [a[1], a[1], a[1], a[1], a[1], a[1], a[1], a[1], c[1]],
   [a[1], a[1], a[1], a[1], a[1], a[1], a[1], a[1], d[1]],
   [a[1], a[1], a[1], a[1], a[1], a[1], a[1], a[1], e[1]],
   [a[1], a[1], a[1], a[1], a[1], a[1], a[1], a[1], f[1]],
   [a[1], a[1], a[1], a[1], a[1], a[1], a[1], a[1], g[1]],
   [a[1], a[1], a[1], a[1], a[1], a[1], a[1], a[1], h[1]],
   [a[1], a[1], a[1], a[1], a[1], a[1], a[1], a[1], i[1]]],

  [[b[1], b[1], b[1], b[1], b[1], b[1], b[1], b[1], a[1]],
   [b[1], b[1], b[1], b[1], b[1], b[1], b[1], b[1], b[1]],
   [b[1], b[1], b[1], b[1], b[1], b[1], b[1], b[1], c[1]],
   [b[1], b[1], b[1], b[1], b[1], b[1], b[1], b[1], d[1]],
   [b[1], b[1], b[1], b[1], b[1], b[1], b[1], b[1], e[1]],
   [b[1], b[1], b[1], b[1], b[1], b[1], b[1], b[1], f[1]],
   [b[1], b[1], b[1], b[1], b[1], b[1], b[1], b[1], g[1]],
   [b[1], b[1], b[1], b[1], b[1], b[1], b[1], b[1], h[1]],
   [b[1], b[1], b[1], b[1], b[1], b[1], b[1], b[1], i[1]]],

  [[c[1], c[1], c[1], c[1], c[1], c[1], c[1], c[1], a[1]],
   [c[1], c[1], c[1], c[1], c[1], c[1], c[1], c[1], b[1]],
   [c[1], c[1], c[1], c[1], c[1], c[1], c[1], c[1], c[1]],
   [c[1], c[1], c[1], c[1], c[1], c[1], c[1], c[1], d[1]],
   [c[1], c[1], c[1], c[1], c[1], c[1], c[1], c[1], e[1]],
   [c[1], c[1], c[1], c[1], c[1], c[1], c[1], c[1], f[1]],
   [c[1], c[1], c[1], c[1], c[1], c[1], c[1], c[1], g[1]],
   [c[1], c[1], c[1], c[1], c[1], c[1], c[1], c[1], h[1]],
   [c[1], c[1], c[1], c[1], c[1], c[1], c[1], c[1], i[1]]],

  [[d[1], d[1], d[1], d[1], d[1], d[1], d[1], d[1], a[1]],
   [d[1], d[1], d[1], d[1], d[1], d[1], d[1], d[1], b[1]],
   [d[1], d[1], d[1], d[1], d[1], d[1], d[1], d[1], c[1]],
   [d[1], d[1], d[1], d[1], d[1], d[1], d[1], d[1], d[1]],
   [d[1], d[1], d[1], d[1], d[1], d[1], d[1], d[1], e[1]],
   [d[1], d[1], d[1], d[1], d[1], d[1], d[1], d[1], f[1]],
   [d[1], d[1], d[1], d[1], d[1], d[1], d[1], d[1], g[1]],
   [d[1], d[1], d[1], d[1], d[1], d[1], d[1], d[1], h[1]],
   [d[1], d[1], d[1], d[1], d[1], d[1], d[1], d[1], i[1]]],

  [[e[1], e[1], e[1], e[1], e[1], e[1], e[1], e[1], a[1]],
   [e[1], e[1], e[1], e[1], e[1], e[1], e[1], e[1], b[1]],
   [e[1], e[1], e[1], e[1], e[1], e[1], e[1], e[1], c[1]],
   [e[1], e[1], e[1], e[1], e[1], e[1], e[1], e[1], d[1]],
   [e[1], e[1], e[1], e[1], e[1], e[1], e[1], e[1], e[1]],
   [e[1], e[1], e[1], e[1], e[1], e[1], e[1], e[1], f[1]],
   [e[1], e[1], e[1], e[1], e[1], e[1], e[1], e[1], g[1]],
   [e[1], e[1], e[1], e[1], e[1], e[1], e[1], e[1], h[1]],
   [e[1], e[1], e[1], e[1], e[1], e[1], e[1], e[1], i[1]]],

  [[f[1], f[1], f[1], f[1], f[1], f[1], f[1], f[1], a[1]],
   [f[1], f[1], f[1], f[1], f[1], f[1], f[1], f[1], b[1]],
   [f[1], f[1], f[1], f[1], f[1], f[1], f[1], f[1], c[1]],
   [f[1], f[1], f[1], f[1], f[1], f[1], f[1], f[1], d[1]],
   [f[1], f[1], f[1], f[1], f[1], f[1], f[1], f[1], e[1]],
   [f[1], f[1], f[1], f[1], f[1], f[1], f[1], f[1], f[1]],
   [f[1], f[1], f[1], f[1], f[1], f[1], f[1], f[1], g[1]],
   [f[1], f[1], f[1], f[1], f[1], f[1], f[1], f[1], h[1]],
   [f[1], f[1], f[1], f[1], f[1], f[1], f[1], f[1], i[1]]],

  [[g[1], g[1], g[1], g[1], g[1], g[1], g[1], g[1], a[1]],
   [g[1], g[1], g[1], g[1], g[1], g[1], g[1], g[1], b[1]],
   [g[1], g[1], g[1], g[1], g[1], g[1], g[1], g[1], c[1]],
   [g[1], g[1], g[1], g[1], g[1], g[1], g[1], g[1], d[1]],
   [g[1], g[1], g[1], g[1], g[1], g[1], g[1], g[1], e[1]],
   [g[1], g[1], g[1], g[1], g[1], g[1], g[1], g[1], f[1]],
   [g[1], g[1], g[1], g[1], g[1], g[1], g[1], g[1], g[1]],
   [g[1], g[1], g[1], g[1], g[1], g[1], g[1], g[1], h[1]],
   [g[1], g[1], g[1], g[1], g[1], g[1], g[1], g[1], i[1]]],

  [[h[1], h[1], h[1], h[1], h[1], h[1], h[1], h[1], a[1]],
   [h[1], h[1], h[1], h[1], h[1], h[1], h[1], h[1], b[1]],
   [h[1], h[1], h[1], h[1], h[1], h[1], h[1], h[1], c[1]],
   [h[1], h[1], h[1], h[1], h[1], h[1], h[1], h[1], d[1]],
   [h[1], h[1], h[1], h[1], h[1], h[1], h[1], h[1], e[1]],
   [h[1], h[1], h[1], h[1], h[1], h[1], h[1], h[1], f[1]],
   [h[1], h[1], h[1], h[1], h[1], h[1], h[1], h[1], g[1]],
   [h[1], h[1], h[1], h[1], h[1], h[1], h[1], h[1], h[1]],
   [h[1], h[1], h[1], h[1], h[1], h[1], h[1], h[1], i[1]]],

  [[i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], a[1]],
   [i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], b[1]],
   [i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], c[1]],
   [i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], d[1]],
   [i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], e[1]],
   [i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], f[1]],
   [i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], g[1]],
   [i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], h[1]],
   [i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1]]],
]

row_options = [0, 1, 2, 3, 4, 5, 6, 7, 8]
col_options = [0, 1, 2, 3, 4, 5, 6, 7, 8]
arr_options = [0, 1, 2, 3, 4, 5, 6, 7, 8]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_symbol1      = symbols[cur_row][cur_col][cur_arr]
current_description1 = descriptions[cur_row][cur_col][cur_arr]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_symbol2      = symbols[cur_row][cur_col][cur_arr]
current_description2 = descriptions[cur_row][cur_col][cur_arr]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_symbol3      = symbols[cur_row][cur_col][cur_arr]
current_description3 = descriptions[cur_row][cur_col][cur_arr]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_symbol4      = symbols[cur_row][cur_col][cur_arr]
current_description4 = descriptions[cur_row][cur_col][cur_arr]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_symbol5      = symbols[cur_row][cur_col][cur_arr]
current_description5 = descriptions[cur_row][cur_col][cur_arr]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_symbol6      = symbols[cur_row][cur_col][cur_arr]
current_description6 = descriptions[cur_row][cur_col][cur_arr]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_symbol7      = symbols[cur_row][cur_col][cur_arr]
current_description7 = descriptions[cur_row][cur_col][cur_arr]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_symbol8      = symbols[cur_row][cur_col][cur_arr]
current_description8 = descriptions[cur_row][cur_col][cur_arr]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_symbol9      = symbols[cur_row][cur_col][cur_arr]
current_description9 = descriptions[cur_row][cur_col][cur_arr]

puts "_Positive__"
compare_statements(current_symbol1, current_description1,
                   current_symbol2, current_description2,
                   current_symbol3, current_description3,
                   current_symbol4, current_description4,
                   current_symbol5, current_description5,
                   current_symbol6, current_description6,
                   current_symbol7, current_description7,
                   current_symbol8, current_description8,
                   current_symbol9, current_description9)

puts "\n_Negative__"
compare_neg_statements(current_symbol1, current_description1,
                       current_symbol2, current_description2,
                       current_symbol3, current_description3,
                       current_symbol4, current_description4,
                       current_symbol5, current_description5,
                       current_symbol6, current_description6,
                       current_symbol7, current_description7,
                       current_symbol8, current_description8,
                       current_symbol9, current_description9)
