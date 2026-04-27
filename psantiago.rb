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
