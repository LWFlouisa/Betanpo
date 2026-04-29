require "AwasunuDeLingua"

a = "joshua"
b = "pine"
c = "hickory"

tree_names = [
  [[a, a, a],
   [a, a, b],
   [a, a, c]],

  [[b, b, a],
   [b, b, b],
   [b, b, c]],

  [[c, c, a],
   [c, c, b],
   [c, c, c]],
]

row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1, 2]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

chosen_tree = tree_names[cur_row][cur_col][cur_arr]

nehucakabu(chosen_tree)
