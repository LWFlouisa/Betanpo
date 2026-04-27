require "./Awasunu/AwasuTest.cr"

a = ARGV[0]
b = ARGV[1]

puts Processes::Narrative.try_on_shoes(a, b)
