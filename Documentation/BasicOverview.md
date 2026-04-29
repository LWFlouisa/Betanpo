
### Documentation
#### Compare Statements
~~~ruby
require_relative "DSL/ParallelProcessing.rb"
#require "AwasunuDeLingua"

puts "_Positive__"
compare_statements(:stopsigns_red,               "Stopsigns are usually red.",
                   :streetlights_change,      "Street lights usually change.",
                   :asphalt_rads,        "Roads are usually made of asphalt.",
                   
                   :rain_is_wet,         "Rain always wet, but some things are waterproof.",
                   :books_are_paper,                             "Books are usually paper.",
                   :clocks_go_clockwise,                   "Clocks usually turn clockwise.",
                   
                   :pastels_are_dry,     "Soft pastels are usually dry.",
                   :oil_paint_is_wet,     "Oil paint dries very slowly.",
                   :pencil_dry_quickly, "Modern ink dries very quickly.")
                 
puts "\n_Negative__"  
compare_neg_statements(:stopsigns_red,               "Stopsigns are usually red.",
                       :streetlights_change,      "Street lights usually change.",
                       :asphalt_rads,        "Roads are usually made of asphalt.",
                   
                       :rain_is_wet,         "Rain always wet, but some things are waterproof.",
                       :books_are_paper,                             "Books are usually paper.",
                       :clocks_go_clockwise,                   "Clocks usually turn clockwise.",
                   
                       :pastels_are_dry,     "Soft pastels are usually dry.",
                       :oil_paint_is_wet,     "Oil paint dries very slowly.",
                       :pencil_dry_quickly, "Modern ink dries very quickly.")
~~~

#### Nombres And Neg Nombres
This trains the agentic model to predict different prime values up to nine. The negative version predicts reductive versions of said primes.

~~~ruby
require_relative "DSL/ParallelProcessing.rb"

def do_numbers
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
  second_number = new_numbers[cur_row][cur_col][cur_arr]
  third_number  = new_numbers[cur_row][cur_col][cur_arr]

  nombres(first_number,  8, 2,
          second_number, 8, 2,
          third_number,  8, 2)
end

do_numbers
~~~

#### Kosan And Nikosan
This operates similarly to Nombres but on a probabilistic basis: in practice I end up using these for measuring unconfidence rather than confidence.

~~~ruby
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
~~~
