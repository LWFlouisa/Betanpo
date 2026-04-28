require_relative "DSL/ParallelProcessing.rb"

p = "contrast pomme"
b = "contrast banane"

contrasts = [
  [[p, p],
   [p, b]],

  [[b, p],
   [b, b]],
]

row_options = [0, 1]
col_options = [0, 1]
arr_options = [0, 1]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_contrast = contrasts[cur_row][cur_col][cur_arr]

if not current_contrast == p
  contrastif("banane", "rouge",
             "banane", "vert",
             "banane", "rouge", "vert", "jaune")

elsif not current_contrast == b
  contrastif("pomme", "rouge",
             "pomme", "vert",
             "pomme", "rouge", "vert", "jaune")
else
  contrastif("pomme", "rouge",
             "pomme", "vert",
             "pomme", "rouge", "vert", "jaune")
end
