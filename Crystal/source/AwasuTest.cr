module Processes
  class Strings
    def self.awasunu
      bot_name = "BIANCA"

      awasunu = Proc(String, String, String, String).new { | cette, maisette, sinon |
        "C'est #{cette}, mais cette est #{maisette}. Sinon c'est #{sinon}."
      }
      
      puts awasunu.call(ARGV[0], ARGV[1], ARGV[2])
    end
    
    def self.nombres
      bot_name = "BIANCA"

      cette_nombre = Proc(Int32, Int32, String).new { | x, interval |
        x > interval ? "#{bot_name}: #{x} has reached the upper limit in growth." : "#{bot_name}: #{x} has reached the upper limit in growth."
      }

      maisette_nombre = Proc(Int32, Int32, String).new { | x, interval |
        x < interval ? "#{bot_name}: #{x} has reached the lower limit in growth." : "#{bot_name}: #{x} has not reached the limit in growth."
      }

      sinon_nombre = Proc(Int32, Int32, Int32, String).new { | x, first_interval, second_interval |
        x > first_interval && x < second_interval ? "#{bot_name}: #{x} is floating between growth intervals #{first_interval} and #{second_interval}." : "#{bot_name}: #{x} is not floating between growth intervals #{first_interval} and #{second_interval}."
      }

      puts cette_nombre.call(ARGV[0].to_i, ARGV[1].to_i)
      puts maisette_nombre.call(ARGV[2].to_i, ARGV[3].to_i)
      puts sinon_nombre.call(ARGV[4].to_i, ARGV[5].to_i, ARGV[6].to_i)
    end
    
    def self.neg_nombres
      bot_name = "BIANCA"

      necette_nombre = Proc(Int32, Int32, String).new { | x, interval |
        x > interval ? "#{bot_name}: #{x} has reached the upper limit in shrinkage." : "#{bot_name}: #{x} has reached the upper limit in shrinkage."
      }

      nemaisette_nombre = Proc(Int32, Int32, String).new { | x, interval |
        x < interval ? "#{bot_name}: #{x} has reached the lower limit in shrinkage." : "#{bot_name}: #{x} has not reached the lower limit in shrinkage."
      }

      nesinon_nombre = Proc(Int32, Int32, Int32, String).new { | x, first_interval, second_interval |
        x > first_interval && x < second_interval ? "#{bot_name}: #{x} is floating between shrinkage intervals of #{first_interval} and #{second_interval}." : "#{bot_name}: #{x} is not floating between shrinkage intervals #{first_interval} and #{second_interval}"
      }

      puts necette_nombre.call(ARGV[0].to_i, ARGV[1].to_i)
      puts nemaisette_nombre.call(ARGV[2].to_i, ARGV[3].to_i)
      puts nesinon_nombre.call(ARGV[4].to_i, ARGV[5].to_i, ARGV[6].to_i)
    end
    
    def self.kosan
      bot_name = "BIANCA" 
    
      sore_kosan = Proc(Float64, Float64, String).new { | x, probability |
        x > probability ? "#{bot_name}: #{x} has reached the highest limit in probability." : "#{bot_name}: #{x} has not reached the highest limit in probability."
      }

      shikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
        x < probability ? "#{bot_name}: #{x} has reached the lowest limit in probability." : "#{bot_name}: #{x} has not reached the lowest limit in probability."
      }

      matawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
        x > first_probability && x < second_probability ? "#{bot_name}: #{x} is floating around medium probability." : "#{bot_name}: #{x} is not floating around medium probability."
      }
      
      puts sore_kosan.call(ARGV[0].to_f, ARGV[1].to_f)
      puts shikashi_kosan.call(ARGV[2].to_f, ARGV[3].to_f)
      puts matawa_kosan.call(ARGV[4].to_f, ARGV[5].to_f, ARGV[6].to_f)
    end
    
    def self.nikosan
      bot_name = "BIANCA"

      nisore_kosan = Proc(Float64, Float64, String).new { | x, probability |
        x > probability ? "#{bot_name}: #{x} has reached the limit in negative probability." : "#{bot_name}: #{x} has not reached the limit in negative probability."
      }

      nishikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
        x < probability ? "#{bot_name}: #{x} has reached the limit in negative probability." : "#{bot_name}: #{x} has not reached the limit in negative probability."
      }

      nimatawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
  x > first_probability && x < second_probability ? "#{bot_name}: #{x} is floating around medium negative probability." : "#{bot_name}: #{x} is not floating around medium negative probability."
      }

      puts nisore_kosan.call(ARGV[0].to_f, ARGV[1].to_f)
      puts nishikashi_kosan.call(ARGV[2].to_f, ARGV[3].to_f)
      puts nimatawa_kosan.call(ARGV[4].to_f, ARGV[5].to_f, ARGV[6].to_f)
    end

    def self.kosan_interpreter(x, first_probability, second_probability)
      bot_name = "BIANCA" 
    
      sore_kosan = Proc(Float64, Float64, String).new { | x, probability |
        x > probability ? "#{bot_name}: #{x} has reached the highest limit in probability." : "#{bot_name}: #{x} has not reached the highest limit in probability."
      }

      shikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
        x < probability ? "#{bot_name}: #{x} has reached the lowest limit in probability." : "#{bot_name}: #{x} has not reached the lowest limit in probability."
      }

      matawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
        x > first_probability && x < second_probability ? "#{bot_name}: #{x} is floating around medium probability." : "#{bot_name}: #{x} is not floating around medium probability."
      }
      
      puts sore_kosan.call(x, first_probability)
      puts shikashi_kosan.call(x, second_probability)
      puts matawa_kosan.call(x, second_probability, first_probability)
    end
    
    def self.nikosan_interpreter(x, probability)
      bot_name = "BIANCA"

      nisore_kosan = Proc(Float64, Float64, String).new { | x, probability |
        x > probability ? "#{bot_name}: #{x} has reached the limit in negative probability." : "#{bot_name}: #{x} has not reached the limit in negative probability."
      }

      nishikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
        x < probability ? "#{bot_name}: #{x} has reached the limit in negative probability." : "#{bot_name}: #{x} has not reached the limit in negative probability."
      }

      nimatawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
  x > first_probability && x < second_probability ? "#{bot_name}: #{x} is floating around medium negative probability." : "#{bot_name}: #{x} is not floating around medium negative probability."
      }

      puts nisore_kosan.call(x, probability)
      puts nishikashi_kosan.call(x, probability)
      puts nimatawa_kosan.call(x, probability)
    end
    
    def self.ampoules_dehors(a, b, c, d)
      taste   = [ :taste,   a, 0.25 ]
      smell   = [ :smell,   b, 0.25 ]
      sight   = [ :sight,   c, 0.25 ]
      hearing = [ :hearing, d, 0.25 ]
  
      senses = [[
        [[taste[0], taste[0], taste[0],   taste[0]],
         [taste[0], taste[0], taste[0],   smell[0]],
         [taste[0], taste[0], taste[0],   sight[0]],
         [taste[0], taste[0], taste[0], hearing[0]]],
     
        [[smell[0], smell[0], smell[0],   taste[0]],
         [smell[0], smell[0], smell[0],   smell[0]],
         [smell[0], smell[0], smell[0],   sight[0]],
         [smell[0], smell[0], smell[0], hearing[0]]],

        [[sight[0], sight[0], sight[0],   taste[0]],
         [sight[0], sight[0], sight[0],   smell[0]],
         [sight[0], sight[0], sight[0],   sight[0]],
         [sight[0], sight[0], sight[0], hearing[0]]],

        [[hearing[0], hearing[0], hearing[0],   taste[0]],
         [hearing[0], hearing[0], hearing[0],   smell[0]],
         [hearing[0], hearing[0], hearing[0],   sight[0]],
         [hearing[0], hearing[0], hearing[0], hearing[0]]],
      ], [
        [[taste[1], taste[1], taste[1],   taste[1]],
         [taste[1], taste[1], taste[1],   smell[1]],
         [taste[1], taste[1], taste[1],   sight[1]],
         [taste[1], taste[1], taste[1], hearing[1]]],
     
        [[smell[1], smell[1], smell[1],   taste[1]],
         [smell[1], smell[1], smell[1],   smell[1]],
         [smell[1], smell[1], smell[1],   sight[1]],
         [smell[1], smell[1], smell[1], hearing[1]]],

        [[sight[1], sight[1], sight[1],   taste[1]],
         [sight[1], sight[1], sight[1],   smell[1]],
         [sight[1], sight[1], sight[1],   sight[1]],
         [sight[1], sight[1], sight[1], hearing[1]]],

        [[hearing[1], hearing[1], hearing[1],   taste[1]],
         [hearing[1], hearing[1], hearing[1],   smell[1]],
         [hearing[1], hearing[1], hearing[1],   sight[1]],
         [hearing[1], hearing[1], hearing[1], hearing[1]]],
      ], [
        [[0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25]],
     
        [[0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25]],

        [[0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25]],

        [[0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25],
         [0.25, 0.25, 0.25, 0.25]],
      ]]
  
      current_symbols      = senses[0]
      current_descriptions = senses[1]
      probability_set      = senses[2]
  
      row_options = [0, 1, 2, 3]
      col_options = [0, 1, 2, 3]
      arr_options = [0, 1, 2, 3]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      selection_probability = 0.50 * 0.50
      base_probability      = probability_set[cur_row][cur_col][cur_arr]
  
      current_probability = selection_probability * 0.25
  
      this_symbol      = current_symbols[cur_row][cur_col][cur_arr]
      this_description = current_descriptions[cur_row][cur_col][cur_arr]
  
      current_information = [ this_symbol, this_description, current_probability ]
  
      puts current_information
      
      Processes::Strings.kosan_interpreter(current_probability, 0.8, 0.2)
    end
    
    def self.statistiques ## Supports parallelism
      cette_statistique, maisette_statistique, sinon_statistique = Proc.new { |a1, a2, b1, b2, c1, c2|
        a = a1, a2
        b = b1, b2
        c = c1, c2

        matrix = [
          [[a[0], a[0], a[0]],
           [a[0], a[0], b[0]],
           [a[0], a[0], c[0]]],
     
          [[b[0], b[0], a[0]],
           [b[0], b[0], b[0]],
           [b[0], b[0], c[0]]],
     
          [[c[0], c[0], a[0]],
           [c[0], c[0], b[0]],
           [c[0], c[0], c[0]]],
        ], [
          [[a[1], a[1], a[1]],
           [a[1], a[1], b[1]],
           [a[1], a[1], c[1]]],
     
          [[b[1], b[1], a[1]],
           [b[1], b[1], b[1]],
           [b[1], b[1], c[1]]],
     
          [[c[1], c[1], a[1]],
           [c[1], c[1], b[1]],
           [c[1], c[1], c[1]]],
        ], [
          [[0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33]],
     
          [[0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33]],
     
          [[0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33]],
        ]

        label_type       = matrix[0]
        definition_type  = matrix[1]
        probability_type = matrix[2]
  
        row_probability = 0.33
        col_probability = 0.33
  
        graph_selection = row_probability * col_probability

        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1, 2]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample
  
        current_label       = label_type[cur_row][cur_col][cur_arr]
        current_definition  = definition_type[cur_row][cur_col][cur_arr]
        current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
        puts "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
      }, Proc.new { |a1, a2, b1, b2, c1, c2|
        a = a1, a2
        b = b1, b2
        c = c1, c2

        matrix = [
          [[a[0], a[0], a[0]],
           [a[0], a[0], b[0]],
           [a[0], a[0], c[0]]],
     
          [[b[0], b[0], a[0]],
           [b[0], b[0], b[0]],
           [b[0], b[0], c[0]]],
     
          [[c[0], c[0], a[0]],
           [c[0], c[0], b[0]],
           [c[0], c[0], c[0]]],
        ], [
          [[a[1], a[1], a[1]],
           [a[1], a[1], b[1]],
           [a[1], a[1], c[1]]],
     
          [[b[1], b[1], a[1]],
           [b[1], b[1], b[1]],
           [b[1], b[1], c[1]]],

          [[c[1], c[1], a[1]],
           [c[1], c[1], b[1]],
           [c[1], c[1], c[1]]],
        ], [
          [[0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33]],
     
          [[0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33]],
     
          [[0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33]],
        ]

        label_type       = matrix[0]
        definition_type  = matrix[1]
        probability_type = matrix[2]
  
        row_probability = 0.33
        col_probability = 0.33
  
        graph_selection = row_probability * col_probability

        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1, 2]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample
  
        current_label       = label_type[cur_row][cur_col][cur_arr]
        current_definition  = definition_type[cur_row][cur_col][cur_arr]
        current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
        "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
      }, Proc.new { |a1, a2, b1, b2, c1, c2|
        a = a1, a2
        b = b1, b2
        c = c1, c2

        matrix = [
          [[a[0], a[0], a[0]],
           [a[0], a[0], b[0]],
           [a[0], a[0], c[0]]],
     
          [[b[0], b[0], a[0]],
           [b[0], b[0], b[0]],
           [b[0], b[0], c[0]]],
     
          [[c[0], c[0], a[0]],
           [c[0], c[0], b[0]],
           [c[0], c[0], c[0]]],
        ], [
          [[a[1], a[1], a[1]],
           [a[1], a[1], b[1]],
           [a[1], a[1], c[1]]],
     
          [[b[1], b[1], a[1]],
           [b[1], b[1], b[1]],
           [b[1], b[1], c[1]]],
     
          [[c[1], c[1], a[1]],
           [c[1], c[1], b[1]],
           [c[1], c[1], c[1]]],
        ], [
          [[0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33]],
     
          [[0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33]],
     
          [[0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33],
           [0.33, 0.33, 0.33]],
        ]

        label_type       = matrix[0]
        definition_type  = matrix[1]
        probability_type = matrix[2]
  
        row_probability = 0.33
        col_probability = 0.33
  
        graph_selection = row_probability * col_probability

        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1, 2]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample
  
        current_label       = label_type[cur_row][cur_col][cur_arr]
        current_definition  = definition_type[cur_row][cur_col][cur_arr]
        current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
        "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
      }
    end
  end
  
  class GuidelineBasedConstraintLogic
    ## That time
    def self.cette_int(condition)    
      if condition
        if yield && yield.is_a?(Int32)      
          return true
        else
          return "Error: Sore_float is not a Float."
        end
      end
  
      false
    end

    def self.maisette_int(already_done, condition)
      return true if already_done
  
      if condition
        if yield && yield.is_a?(Int32)      
          return true
        else
          return "Error: Shikashi_float is not a Float."
        end
      end
    end

    def self.sinon_int(already_done)
      value = yield unless already_done

      if value && value.is_a?(Int32)
        return true
      else
        return "Error: Shikashi_float is not a Float."
      end
  
      unless already_done
        otherwise = already_done
      
        if defined?(otherwise)
          puts otherwise
        end
      else
        puts "Otherwise is not defined."
      end
    end
    
    ## That time
    def self.sore_float(condition)    
      if condition
        if yield && yield.is_a?(Float64)
          return true
        else
          return "Error: Sore_float is not a Float."
        end
      end
  
      false
    end

    def self.shikashi_float(already_done, condition)
      return true if already_done
  
      if condition
        if yield && yield.is_a?(Float64)
          return true
        else
          return "Error: Shikashi_float is not a Float."
        end
      end
    end

    def self.matawa_float(already_done)
      value = yield unless already_done

      if value && value.is_a?(Float64)
        return true
      else
        return "Error: Shikashi_float is not a Float."
      end
  
      unless already_done
        otherwise = already_done
      
        if defined?(otherwise)
          puts otherwise
    
          #puts "#{$otherwise_not[0]} is 'THAT'"
          #puts "#{$otherwise_not[1]} is 'WHAT'"
        end
      else
        puts "Otherwise is not defined."
      end
    end
  end
  
  class Reasoning
    #######################################################################################
    #                                    Medusahoseki                                     #
    #######################################################################################
    def self.proximity_de_medusahoseki(a, b)
      maximum_distance     = b
      distance_probability = a
  
      calculation = maximum_distance - ( maximum_distance * distance_probability )
      calculation = calculation.round
  
      "Distance from Medusahoseki: #{calculation}"
    end

    def self.proximity_de_nemedusahoseki(a, b)
      maximum_distance     = b
      distance_probability = 1 - a
  
      calculation = maximum_distance - ( maximum_distance * distance_probability )
      calculation = calculation.round
  
      "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
    end

    def self.proximity_de_memorie(a)
      year_period = 12
  
      calculation = 12 - ( 12 * a )
      calculation = calculation.round
  
      "this memory was from a prior #{calculation} year period"
    end

    def self.mperiod_sprox(a, b)
      "#{a} over #{b}"
    end
    
    def self.life_stage(a1, a2, b1, b2)
      "#{a1} is premature #{a2}, therefore #{b1} is a premature #{b2}"
    end
  end
  
  class Quantiffirm
    #######################################################################################
    #                                Maisette Quantiffirm                                 #
    #######################################################################################
    def self.quantiffirm(p, q, probability)
      case probability
      when 0.00010..0.1250
        "#{p} therefore #{q} is false."
      when 0.1251..0.3625
        "#{p} therefore #{q} is largely false."
      when 0.3626..0.5125
        "#{p} therefore #{q} is partially true."
      when 0.5126..0.7563
        "#{p} therefore #{q} is largely true."
      when 0.7564..0.9999
        "#{p} therefore #{q} is true."
      else
        "#{p} therefore #{q} is not quantifiable."
      end
    end
    
    def self.risk_factor(risk)
      case risk
      when 0.750..1.000; print "Maximum Risk";      puts quantiffirm(": Such activities carry Maximum Risk", "this activity probably has Maximum risk", risk)
      when 0.500..0.749; print "High Risk";         puts quantiffirm(": Such activities carry High Risk", "this activity probably has High risk",    risk)
      when 0.250..0.499; print "Medium Risk";       puts quantiffirm(": Such activities carry Medium Risk", "this activity probably has Medium risk",  risk)
      when 0.125..0.249; print "Mild Risk";         puts quantiffirm(": Such activities carry Mild Risk", "this activity probably has Mild risk",    risk)
      when 0.010..0.124; print "Minimal Risk";      puts quantiffirm(": Such activities carry Minimal Risk", "this activity probably has Minimal risk", risk)
      else
        puts "The risk factor is unquantifiable."
      end
    end
    
    def self.thresholding(a, y, x)
      cognitive_threshold = 100
      probability         = a
      odds                = probability / ( 1 - probability )
      charted_assessment  = cognitive_threshold * probability
    
      size_of_map_y = y
      size_of_map_x = x
    
      map_cognitive_y = ( size_of_map_y * charted_assessment ) % size_of_map_y
      map_cognitive_x = ( size_of_map_x * charted_assessment ) % size_of_map_x

      puts "LEARNING ASSESSMENT"
      puts "The current map size is: #{x} by #{y}"
      puts "The current cognitive threshold is #{cognitive_threshold}"
      puts "The current odds of learning this word is #{odds}"
      puts "Therefore the approximate location of cognitive loading is the tile of #{map_cognitive_y.to_i} and #{map_cognitive_x.to_i}."
      puts quantiffirm("The cognitive threshold is #{cognitive_threshold}", "the approximate location of cognitive loading is the tile of #{map_cognitive_y} and #{map_cognitive_x}", probability)  
      puts " "
    end
  end
  
  class Narrative    
    ## Locale Reality Zones
    def self.local_reality_zone(a, b, y1, x1, y2, x2)
      "#{a} is a local reality zone of #{b}, with #{a} having a local y of #{y1} and x of #{x1}. But #{b} itself only has a y of #{y2} and an x of #{x2}."
    end

    def self.non_euclid(a, b)
      "You can fit #{a} inside of #{b} because its exact dimensions aren't defined outside of its parent context."
    end

    def self.non_uniform_anomaly(a, b, c, d, e, f)
      "You can fit #{a} inside of #{b} although top floors y is #{c}, and the top floors x is #{d}. The bottom floor is y of #{e} and x of #{f}."
    end

    ## Standard Mechanics
    def self.try_on_shoes(a, b)
      "#{a} tries on #{b}."
    end

    def self.wander_halls(a, b, c)
      "#{a} wanders from #{b} to #{c}."
    end

    def self.evil_laugh(a, b)
      "#{a} evil laughed in hallway of #{b}"
    end

    def self.is_haunted(a, b, c)
      "#{a} thinks #{c} is haunted, but not #{b}."
    end

    def self.twirl_baton(a, b)
      "#{a} twirls #{b} like a baton."
    end

    def self.plant_tree(a, b)
      "Tree #{a} is planted on plot in #{b}."
    end

    def self.talk_to_tree(a, b)
      "#{a} chats with tree #{b} about its day."
    end

    def self.plant_evidence(a, b, c)
      "#{a} murders student #{c}, telling #{b} they framed them for their murder."
    end

    def self.ravenauka(a, b)
      "#{a} is chased off to the nevermore of #{b} by a demonic raven."
    end

    def self.tree_yard(a, b, c)
      d = a
      e = b
      f = c
  
      "#{d} #{e} #{f}"
    end

    def self.spot_rainbow_elephant(a, b)
      "#{a} is featured in #{b} is a rainbow elephant."
    end

    def self.argue_purpose(a, b, c)
      "#{a} has elements of #{b}, but #{c} is primarily composed of #{b}."
    end

    def self.generate_placeholder
      alpha = ["A", "B", "C", "D", "E",
               "F", "G", "H", "I", "J",
               "K", "L", "M", "N", "O",
               "P", "Q", "R", "S", "T",
               "U", "V", "W", "X", "Y",
               "Z"].shuffle
           
      a = "#{alpha.sample}#{alpha.sample}#{alpha.sample}"
      b  = "#{alpha.sample}#{alpha.sample}#{alpha.sample}#{alpha.sample}#{alpha.sample}"
      c = "#{alpha.sample}#{alpha.sample}#{alpha.sample}#{alpha.sample}#{alpha.sample}#{alpha.sample}#{alpha.sample}"
  
      chosen_word = [
        [[a, a, a], [a, a, b], [a, a, c]],
        [[b, b, a], [b, b, b], [b, b, c]],
        [[c, c, a], [c, c, b], [c, c, c]],
      ]
  
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      generated_placeholder = chosen_word[cur_row][cur_col][cur_arr]
  
      "#{generated_placeholder}"
    end
  end
  
  class OtherNarrative
    def self.embrace_stone(a, b)
      "Your embrace the entrance of #{a}, by wielding #{b} as your weapon of choice."
    end
    
    ## Transfer blood from monster to maid. [ Allied Blood Transfer ]
    def self.morsurenekku(a, b)
      "Vous manger ana nekku #{a}, souhaitez-vous transferer a #{b}?"
    end
    
    def self.munch_neck(a, b)
      "You munch the neck of #{a}, and transfer blood to #{b}."
    end
    
    ## Merci kill a specific dying monster.
    def self.coup_de_grace(a)
      "Vous coupe un coupe de grace sur #{a}."
    end
    
    ## Disarm trap at desired location.
    def self.busokaijoplege(a, b)
      "Vous busokaiplege un plege #{a} #{b}."
    end
    
    def self.disarm_traps(a, b)
      "You disarm the trap of #{a} at the location of #{b}."
    end
    
    ## Exit current menu and switch to desired menu.
    def self.viola(a, b)
      "Viola cette menu #{a}, ouvert #{b}."
    end
    
    ## Play example scenes ahead of time to know what wrong paths are without risking MC's life.
    def self.appel_du_vide
      "En cette vide, vous mort en #{a}, par #{b}."
    end
    
    def self.call_the_void
      "In that video, you died in #{a} by #{b}."
    end

    # Double stillbirth, but can also mean twins that died at a young age.
    def self.doubleshizan(a, b)
      "Le bebes #{a} et #{b} sont en mort pour quelque temps."
    end

    def self.double_stillbirth(a, b)
      "The baby #{a} and #{b} are dead for some time."
    end

    # Attend podcast about twins
    def self.podcast_de_tsuin(a, b)
      "Vous sont en un podcast avec le nom 'podcast de tsuin' en memorie de #{a} and #{b}."
    end

    def self.attend_podcast(a, b)
      "You are in a podcast with the name 'podcast de tsuin' in memory of #{a} and #{b}."
    end

    # Leave podcast
    def self.partircosse(a, b)
      "Vous appuyez le record pour le sortie pour #{a} and #{b}."
    end
    
    def self.leave_podcast(a, b)
      "#{a} has left the podcast of #{b}."
    end

    # Purchase at baby robot at a specific location
    def self.bebelerobo(a, b, c)
      "Vous achetant un bebe robo #{a} en le supe en le coords #{a} and #{b}." # This possibly refers to a television.
    end

    def self.purchase_baby_robot(a, b, c)
      "You purchase a baby robot #{a} in the coodinates of #{a} and #{b}."
    end

    # Plant a robot at a specific location
    def self.roboplat(a, b, c)
      "Le roboe #{a} est plat en le jardin de #{b} and #{c}."
    end

    def self.flatten_robot(a, b, c)
      "The robot #{a} is planted in the garden of #{b} and #{c}."
    end

    # Plant a tree of for haunted houses.
    def self.abrependre(a, b, c)
      "Le abre en le plat es: [ #{a}, #{b}, #{c} ]"
    end

    def self.plant_tree(a, b, c)
      "The tree in the plate is: [ #{a}, #{b}, #{c} ]"
    end
    
    # Find an encyclopedia about politicians unfaithful relationships.
    def self.amour_de_encyclopedie(a, b, c)
    end
    
    def self.love_dictionary(a, b) # Liquid memories, or to liquidify a memory
      "Politician #{a} is in a relationship with #{b}."
    end
    
    ## Research open pasture or field.
    def self.recherche_ouvirbokuso(a, b)
    end
    
    def self.research_open_field(a, b, c)
      "Assistant #{a} is researching the circumstances of #{b} in the canton / prefecture of #{c}."
    end
    
    def self.bulk_research
    end

    ############################################################################################################
    #                                          Maisettelingua Autre                                            #
    ############################################################################################################
    # These are the rest of the functions for the main portion of Maisettelingua.                              #
    ############################################################################################################
    ## Specify the person traveling, amount of miles, and where they're eating and sleeping.
    def self.bedohabaxiros(a, b, c)
      "#{a} traveled #{b} miles to eat and sleep at #{c}."
    end

    ## Inquire as to the impact of ones travels.
    def self.nebedohabaxiros(a, b, c, d)
      "Traveling to #{a} that was #{b} miles to sleep and eat at #{c} was #{d}."
    end

    ## Describe what is being cooked
    def self.flambemange(a, b, c)
      "#{a} is #{b} on the #{c}."
    end

    ## Inquire as to the impact of something being cooked
    def self.neflambemange(a, b, c)
      "The impact of #{a} being #{c} on the #{c}."
    end

    ## Request a device at a specific location
    def self.tirersecour(a, b, c)
      "I want #{a} from {b} to {c}."
    end

    def self.netirersecour(a, b, c)
      "The impact of acquiring #{a} from #{b} to #{c}."
    end

    def self.bastion_de_lune(a, b, c)
      "Le bastion #{a} est geolocalise a #{b} en le lune region de #{c}."
    end
  end
  
  class BurialCustoms
    def self.obelisk(old_data)
      old_graveyard = File.readlines("graveyard/urn.txt").shuffle

      File.open("graveyard/urn.txt", "w") { |f|
        f.puts old_data
        f.puts old_graveyard
      }
    end

    def self.three_plot_burial(father, mother, child)
      buried_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort
      buried_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort
      buried_children = File.readlines("graveyard/family/child.txt").uniq.sort

      File.open("graveyard/family/father.txt", "w") { |f|
        f.puts father
        f.puts buried_fathers
      }
  
      File.open("graveyard/family/mother.txt", "w") { |f|
        f.puts mother
        f.puts buried_mothers
      }
  
      File.open("graveyard/family/child.txt", "w") { |f|
        f.puts child
        f.puts buried_children
      }
    end

    def self.four_plot_burial(father, mother, brother, sister)
      buried_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort
      buried_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort
      buried_brothers = File.readlines("graveyard/family/brother.txt").uniq.sort
      buried_sister   = File.readlines("graveyard/family/sister.txt").uniq.sort

      File.open("graveyard/family/father.txt", "w") { |f|
        f.puts father
        f.puts buried_fathers
      }
  
      File.open("graveyard/family/mother.txt", "w") { |f|
        f.puts mother
        f.puts buried_mothers
      }
  
      File.open("graveyard/family/brother.txt", "w") { |f|
        f.puts brother
        f.puts buried_brothers
      }

      File.open("graveyard/family/sister.txt", "w") { |f|
        f.puts sister
        f.puts buried_sisters
      }
    end

    def self.scatter_ashes
      old_graveyard = File.readlines("graveyard/urn.txt").uniq.sort.shuffle
      size_limit    = old_graveyard.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_graveyard[index]
  
        index = index + 1
      end
    end

    def self.scatter_three_ashes
  old_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort.shuffle
  old_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort.shuffle
  old_children = File.readlines("graveyard/family/child.txt").uniq.sort.shuffle

  size_limit    = old_fathers.size.to_i
  index         = 0
  
  ## Scatters fathers ashes in the wind.
  size_limit.times do
    puts old_fathers[index]
  
    index = index + 1
  end
  
  ## Scatters mothers ashes in the wind
  size_limit    = old_mothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_mothers[index]
  
    index = index + 1
  end

  ## Scatters childrens ashes in the wind.
  size_limit    = old_children.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_children[index]
  
    index = index + 1
  end
end

def yonagumi(current_year)
  age_of_yonagumi = 11000.0
  
  age_percent = current_year / age_of_yonagumi
  
  "For a point of comparison: Yonagumi is #{age_of_yonagumi} years old as of #{current_year}."
end

def age_comparison(current_year, age_historical, specific_event)
  age_percent = age_historical / current_year
  
  puts "The current year is #{current_year}, #{specific_event} is #{age_percent} in age. #{yonagumi(2026.0)}"
end

def example_comparisons
  age_comparison(2026.0, 1793.0, "Charlotte's Beheading")
end

  end
end
