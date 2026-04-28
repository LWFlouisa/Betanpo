require_relative "DSL/ParallelProcessing.rb"

pre_trained = [
  [ :phrase_two,
    'Lanos oiseau tsines ne deverrouillage lentement.',
    'Le cabin tsines serrure lentement.',
    'Le cabin petitees ne coupe tranquillement.',
    0.6650775, 0.5, 0.3349225 ],
 
  ## Composure is feminine. Ojijaku is derived from "Uncle Jack", or Jean Jacquez Waltz.
  [ :phrase_fro,
    'Ana grandpere petitees ne deverrouillage tranquillement.',
    'Anos ojijaku sageses deverrouillage tranquillement.',
    'Anu ojijaku roudyes ne coupe rapidement.',
    0.94053591, 0.5, 0.05946409 ],

  # Maison is feminine.
  [ :phrase_fiv,
    'Ana ecole sageses ne avoir assurement.',
    'Anos ne ojijaku petitees ne serrure assurement.',
    'Anu maison sucrees ne avoir tranquillement.',
    0.868735983 ],

  # Chat is masculine
  [ :phrase_sev,
    'La maison sucrees ne deverrouillage tranquillement.',
    'La souris tsines serrure rapidement.',
    'Lana chat roudyes ne deverrouillage rapidement.',
    0.561761569 ],

  ## Composure ( Ojijaku ) is feminine. Ojijaku is derived from "Uncle Jack", or Jean Jacquez Waltz.
  [ :phrase_nin,
    'Ana souris sucrees deverrouillage rapidement.',
    'La oiseau petitees deverrouillage tranquillement.',
    'Anu ojijaku roudyes ne coupe rapidement.',
    0.04668406875 ],

  ## School is masculine
  [ :phrase_ten,
    'La ojijaku roudyes deverrouillage assurement.',
    'Lana cousinfille petitees ne serrure assurement.',
    'Lanos ecole sucrees ne avoir assurement.',
    0.103455 ],

  ## Chien is feminine.
  [ :phrase_elv,
    'Ana chien tsines ne deverrouillage assurement.',
    'Anos grandpere petitees ne avoir lentement.',
    'Ana ecole sageses ne avoir assurement.',
    0.310773375 ],
]

b = ":phrase_one", "Ana souris sucrees deverrouillage rapidement.",            "La oiseau petitees deverrouillage tranquillement.",   "Anu ojijaku roudyes ne coupe rapidement."
c = ":phrase_two", "Ana ecole sageses ne avoir assurement.",                   "Anos ojijaku sageses deverrouillage tranquillement.", "Le cabin petitees ne coupe tranquillement."
d = ":phrase_tre", "La ojijaku roudyes deverrouillage assurement.",            "La souris tsines serrure rapidement.",                "Lanos ecole sucrees ne avoir assurement."
f = ":phrase_fro", "Anu ne ojijaku sageses avoir assurement.",                 "Ana cabin petitees coupe lentement.",                 "Ana ecole sageses ne avoir assurement."
g = ":phrase_fiv", "Lanos oiseau tsines ne deverrouillage lentement.",         "Anos grandpere petitees ne avoir lentement.",         "Lanu chien sucrees ne avoir assurement."
h = ":phrase_six", "La oiseau petitees ne deverrouillage rapidement.",         "Le cabin tsines serrure lentement.",                  "La oiseau petitees ne deverrouillage rapidement."
a = ":phrase_sev", "Lanos oiseau tsines ne deverrouillage lentement.",         "Les chien sucrees coupe assurement.",                 "Le cabin tsines serrure lentement."
e = ":phrase_eit", "Ana chien tsines ne deverrouillage assurement.",           "Le cabin tsines serrure lentement.",                  "Le cabin tsines serrure lentement"
i = ":phrase_nin", "Ana grandpere petitees ne deverrouillage tranquillement.", "Lanu ojijaku sucrees ne serrure lentement.",          "Anu maison sucrees ne avoir tranquillement."
o = ":phrase_ten", "Le chien roudyes ne serrure lentement.",                   "Lana cousinfille petitees ne serrure assurement.",    "Lana chat roudyes ne deverrouillage rapidement."
u = ":phrase_elv", "La maison sucrees ne deverrouillage tranquillement.",      "Anos ne ojijaku petitees ne serrure assurement.",     "Ana chat tsines serrure assurement."

ahucakabu_info_ext(b[0], b[1], b[2], b[3],
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
