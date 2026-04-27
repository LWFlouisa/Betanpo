require "./Awasunu/AwasuTest.cr"

a = ARGV[0]
b = ARGV[1]
c = ARGV[2]

puts Processes::Narrative.is_haunted(a, b, c)
