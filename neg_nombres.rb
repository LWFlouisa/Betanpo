require_relative "DSL/ParallelProcessing.rb"

def do_negative_numbers
  new_numbers = [
    [[-5, -5, -5],
     [-5, -5, -7],
     [-5, -5, -9]],

    [[-7, -7, 5],
     [-7, -7, 7],
     [-7, -7, 9]],

    [[-9, -9, 5],
     [-9, -9, 7],
     [-9, -9, 9]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  first_number  = new_numbers[cur_row][cur_col][cur_arr]
  second_number = new_numbers[cur_row][cur_col][cur_arr]
  third_number  = new_numbers[cur_row][cur_col][cur_arr]

  neg_nombres(first_number,  -2, -8,
              second_number, -2, -8,
              third_number,  -2, -8)
end

do_negative_numbers
