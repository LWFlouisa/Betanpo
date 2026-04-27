require "./Awasunu/AwasuTest.cr"

a = ARGV[0]
b = ARGV[1]

puts Processes::Narrative.twirl_baton(a, b)
