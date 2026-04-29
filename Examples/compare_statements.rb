require_relative "DSL/ParallelProcessing.rb"

compare_statements(:stopsigns_red,               "Stopsigns are usually red.",
                   :streetlights_change,      "Street lights usually change.",
                   :asphalt_rads,        "Roads are usually made of asphalt.",
                   
                   :rain_is_wet,         "Rain always wet, but some things are waterproof.",
                   :books_are_paper,                             "Books are usually paper.",
                   :clocks_go_clockwise,                   "Clocks usually turn clockwise.",
                   
                   :pastels_are_dry,     "Soft pastels are usually dry.",
                   :oil_paint_is_wet,     "Oil paint dries very slowly.",
                   :pencil_dry_quickly, "Modern ink dries very quickly.")
