require "./Awasunu/AwasuTest.cr"

a  = ARGV[0]
b1 = ARGV[1]
c1 = ARGV[2]

b2 = Processes::Narrative.generate_placeholder
c2 = Processes::Narrative.generate_placeholder

combo_one = Processes::Narrative.wander_halls(a, b1, c1)
combo_two = Processes::Narrative.wander_halls(a, b1, c2)
combo_tre = Processes::Narrative.wander_halls(a, b2, c1)

# combo_fro = Processes::Narrative.wander_halls(a, b2, c2)

room_redactions = [
  [[combo_one, combo_one, combo_one],
   [combo_one, combo_one, combo_two],
   [combo_one, combo_one, combo_tre]],

  [[combo_two, combo_two, combo_one],
   [combo_two, combo_two, combo_two],
   [combo_two, combo_two, combo_tre]],

  [[combo_tre, combo_tre, combo_one],
   [combo_tre, combo_tre, combo_two],
   [combo_tre, combo_tre, combo_tre]],
]

row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1, 2]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_redaction = room_redactions[cur_row][cur_col][cur_arr]

puts current_redaction
