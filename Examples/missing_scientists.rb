#require "AwasunuDeLingua"
require_relative "DSL/ParallelProcessing.rb"

puts "_Positive__"
compare_statements(:missing_scientists,    "Top American scientists with ties to military go missing in Midwest.",
                   :contract_disputes,     "Frequently such missing scientists are involved with contradict disputes.",
                   :hiking_and_wilderness, "Such scientists frequently go missing after hiking without belongings.",
                   
                   :ice_kidnappers,         "Scientists are of ethnic backgrounds are often kidnapped by Ice.",
                   :federal_employees,      "Missing scientists are frequently American Federal employees.",
                   :other_contrersies,      "Missing scientists frequently go along with other recent controveries.",
                   
                   :american_wars,          "When there is a war, a missing scientists is soon to follow.",
                   :american_brain_drain,   "There is a recurring brain drain of American scientists to Canada..",
                   :ghosting_family,        "Such scientsts will often prefer a life in Canada than capture.")

puts "\n_Negative__"
compare_neg_statements(:missing_scientists,    "Top American scientists with ties to military go missing in Midwest.",
                       :contract_disputes,     "Frequently such missing scientists are involved with contradict disputes.",
                       :hiking_and_wilderness, "Such scientists frequently go missing after hiking without belongings.",
                   
                       :ice_kidnappers,         "Scientists are of ethnic backgrounds are often kidnapped by Ice.",
                       :federal_employees,      "Missing scientists are frequently American Federal employees.",
                       :other_contrersies,      "Missing scientists frequently go along with other recent controveries.",
                   
                       :american_wars,          "When there is a war, a missing scientists is soon to follow.",
                       :american_brain_drain,   "There is a recurring brain drain of American scientists to Canada..",
                       :ghosting_family,        "Such scientsts will often prefer a life in Canada than capture.")
