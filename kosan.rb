require_relative "DSL/ParallelProcessing.rb"

def do_continuous
  new_numbers = [
    [[0.5, 0.5, 0.5],
     [0.5, 0.5, 0.7],
     [0.5, 0.5, 0.9]],

    [[0.7, 0.7, 0.5],
     [0.7, 0.7, 0.7],
     [0.7, 0.7, 0.9]],

    [[0.9, 0.9, 0.5],
     [0.9, 0.9, 0.7],
     [0.9, 0.9, 0.9]],
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

  kosan(first_number,  0.8, 0.2,
        second_number, 0.8, 0.2,
        third_number,  0.8, 0.2)
end

do_continuous
