require "./Awasunu/AwasuTest.cr"

probability  = ARGV[0].to_f
max_interval = ARGV[1].to_f
max_quip     = ARGV[2].to_s

min_interval = ARGV[3].to_f
min_quip     = ARGV[4].to_s

maybe_quip   = ARGV[5].to_s

evaluate = Processes::GuidelineBasedConstraintLogic.sore_float(probability > max_interval) do
  puts max_quip
end

evaluate = Processes::GuidelineBasedConstraintLogic.shikashi_float(evaluate, probability < min_interval) do
  puts min_quip
end

evaluate = Processes::GuidelineBasedConstraintLogic.sinon_int(evaluate) do
  puts maybe_quip
end
