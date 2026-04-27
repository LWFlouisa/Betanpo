require "./Awasunu/AwasuTest.cr"

a  = ARGV[0]
b  = ARGV[1]
x1 = ARGV[2].to_i
y1 = ARGV[3].to_i
x2 = ARGV[4].to_i
y2 = ARGV[5].to_i

puts Processes::Narrative.local_reality_zone(a, b, x1, y1, x2, y2)
puts Processes::Narrative.non_euclid(a, b)
