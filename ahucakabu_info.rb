require_relative "DSL/ParallelProcessing.rb"

b = :phrase_set_one,    Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase
c = :phrase_set_two,    Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase
d = :phrase_set_three,  Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase
f = :phrase_set_four,   Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase
g = :phrase_set_five,   Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase
h = :phrase_set_six,    Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase
a = :phrase_set_seven,  Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase
e = :phrase_set_eight,  Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase
i = :phrase_set_nine,   Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase
o = :phrase_set_ten,    Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase
u = :phrase_set_eleven, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase, Ahuzacos::MainModel.generate_phrase

ahucakabu_info(b[0], b[1], b[2], b[3],
               c[0], c[1], c[2], c[3],
               d[0], d[1], d[2], d[3],
               f[0], f[1], f[2], f[3],
               g[0], g[1], g[2], g[3],
               h[0], h[1], h[2], h[3],
               a[0], a[1], a[2], b[3],
               e[0], e[1], e[2], e[3],
               i[0], i[1], i[2], i[3],
               o[0], o[1], o[2], o[3],
               u[0], u[1], u[2], u[3],
               
               7)
