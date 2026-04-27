require "./Awasunu/AwasuTest.cr"

a = ARGV[0]
b = ARGV[1]
c = ARGV[2]
d = ARGV[3]
e = ARGV[4]
f = ARGV[5]

puts Processes::Narrative.non_uniform_anomaly(a, b, c, d, e, f)
