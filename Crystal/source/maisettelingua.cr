require "./Awasunu/AwasuTest.cr"

discrete_interval = ARGV[0].to_i
max_interval      = ARGV[1].to_i
max_quip          = ARGV[2].to_s

min_interval      = ARGV[3].to_i
min_quip          = ARGV[4].to_s

maybe_quip        = ARGV[5].to_s

evaluate = Processes::GuidelineBasedConstraintLogic.cette_int(discrete_interval > max_interval) do
  puts max_quip
end

evaluate = Processes::GuidelineBasedConstraintLogic.maisette_int(evaluate, discrete_interval < min_interval) do
  puts min_quip
end

evaluate = Processes::GuidelineBasedConstraintLogic.sinon_int(evaluate) do
  puts maybe_quip
end
