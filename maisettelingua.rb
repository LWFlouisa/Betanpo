def positive_maisette(max_label, min_mabel, maybe)
  new_numbers = [
    [[5, 5, 5],
     [5, 5, 7],
     [5, 5, 9]],

    [[7, 7, 5],
     [7, 7, 7],
     [7, 7, 9]],

    [[9, 9, 5],
     [9, 9, 7],
     [9, 9, 9]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  first_number  = new_numbers[cur_row][cur_col][cur_arr]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  second_number = new_numbers[cur_row][cur_col][cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  third_number  = new_numbers[cur_row][cur_col][cur_arr]

  maisettelingua(first_number,  8, max_label, 2, min_label, maybe,
                 second_number, 8, max_label, 2, min_label, maybe,
                 third_number,  8, max_label, 2, min_label, maybe)
end

def negative_maisette
  new_numbers = [
    [[-5, -5, -5],
     [-5, -5, -7],
     [-5, -5, -9]],

    [[-7, -7, -5],
     [-7, -7, -7],
     [-7, -7, -9]],

    [[-9, -9, -5],
     [-9, -9, -7],
     [-9, -9, -9]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  first_number  = new_numbers[cur_row][cur_col][cur_arr]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  second_number = new_numbers[cur_row][cur_col][cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  third_number  = new_numbers[cur_row][cur_col][cur_arr]

  nemaisettelingua(first_number, -2, max_label, -8, min_label, maybe,
                   second_number, -2, max_label, -8, min_label, maybe,
                   third_number, -2, max_label, -8, min_label, maybe)
end

p = "positive"
n = "negative"

possible_modes = [
  [[p, p], [p, n]],
  [[n, p], [n, n]],
]

row_options = [0, 1]
col_options = [0, 1]
arr_options = [0, 1]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_mode = possible_modes[cur_row][cur_col][cur_arr]

if    not current_mode == p; positive_maisette("You have reached the maximum", "You are below minimum", "Youre middling it.")
elsif not current_mode == n; negative_maisette("You have reached the maximum", "You are below minimum", "Youre middling it.")
else
  positive_maisette("You have reached the maximum", "You are below minimum", "Youre middling it.")
end
