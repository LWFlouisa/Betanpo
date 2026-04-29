
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

#### Measure Primes
Psantiago can be similar to the Santiago algorithm which takes inspiration from classical cryptography like Trifid cipher and Railfence:

[Trifid Cipher](https://en.wikipedia.org/wiki/Trifid_cipher)
[Railfence](https://en.wikipedia.org/wiki/Rail_fence_cipher)

Here the graph placements and transpositions are repurposed as a way to map symbols and descriptions into an Evolutionary Reinforced Naive Bayes algorithm.

This implementation is three Santiago algorithms in parallel. The example below uses it for predicting which room in a game you can return do based on their prime factors.

~~~ruby
require_relative "DSL/ParallelProcessing.rb"

## This very slightly prefers 3, 5, 10, and 11 option sets for prime multiplication.
def prime_rooms(first_prime, second_prime)
  multiplicative = first_prime * second_prime

  "If room is number #{multiplicative} this can warp to rooms #{first_prime} and #{second_prime}."
end

b = :set_one,    prime_rooms(3,  3), prime_rooms(5,  3), prime_rooms(7,  3) #, prime_rooms(11,  3)
c = :set_two,    prime_rooms(3,  5), prime_rooms(5,  5), prime_rooms(7,  5) #, prime_rooms(11,  5)
d = :set_three,  prime_rooms(3,  7), prime_rooms(5,  7), prime_rooms(7,  7) #, prime_rooms(11,  7)
f = :set_four,   prime_rooms(3, 11), prime_rooms(5, 11), prime_rooms(7, 11) #, prime_rooms(11, 11)
g = :set_five,   prime_rooms(3, 13), prime_rooms(5, 13), prime_rooms(7, 13) #, prime_rooms(11, 13)
h = :set_six,    prime_rooms(3, 17), prime_rooms(5, 17), prime_rooms(7, 17) #, prime_rooms(11, 17)
a = :set_seven,  prime_rooms(3, 19), prime_rooms(5, 19), prime_rooms(7, 19) #, prime_rooms(11, 19)
e = :set_eight,  prime_rooms(3, 23), prime_rooms(5, 23), prime_rooms(7, 23) #, prime_rooms(11, 23)
i = :set_nine,   prime_rooms(3, 29), prime_rooms(5, 29), prime_rooms(7, 29) #, prime_rooms(11, 29)
o = :set_ten,    prime_rooms(3, 31), prime_rooms(5, 31), prime_rooms(7, 31) #, prime_rooms(11, 31)
u = :set_eleven, prime_rooms(3, 31), prime_rooms(5, 31), prime_rooms(7, 31) #, prime_rooms(11, 31)

psantiago(b[0], b[1], b[2], b[3],
          c[0], c[1], c[2], c[3],
          d[0], d[1], d[2], d[3],
          f[0], f[1], f[2], f[3],
          g[0], g[1], g[2], g[3],
          h[0], b[1], b[2], b[3],
          a[0], a[1], a[2], a[3],
          e[0], e[1], e[2], e[3],
          i[0], i[1], i[2], i[3],
          o[0], o[1], o[2], o[3],
          u[0], u[1], u[2], u[3])
~~~
