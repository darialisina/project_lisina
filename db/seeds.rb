Image.delete_all
Image.reset_pk_sequence
Image.create([

{name: 'BTS', file: 'bts.jpeg', theme_id: 1},
{name: 'Astro', file: 'astro.jpeg', theme_id: 1},
{name: 'Ateez', file: 'ateez.jpeg', theme_id: 1},
{name: 'Enhypen', file: 'enhypen.jpeg', theme_id: 1},
{name: 'EXO', file: 'exo.jpeg', theme_id: 1},
{name: 'Got7', file: 'got7.jpeg', theme_id: 1},
{name: 'MonstaX', file: 'monstaX.jpeg', theme_id: 1},
{name: 'NCT', file: 'nct.jpeg', theme_id: 1},
{name: 'Seventeen', file: 'seventeen.jpeg', theme_id: 1},
{name: 'Shinee', file: 'shinee.jpeg', theme_id: 1},
{name: 'Stray Kids', file: 'straykids.jpeg', theme_id: 1},
{name: 'TXT', file: 'txt.jpeg', theme_id: 1},
{name: 'Aespa', file: 'aespa.jpeg', theme_id: 2},
{name: 'BlackPink', file: 'blackpink.jpeg', theme_id: 2},
{name: '(G)I-dle', file: 'gidle.jpeg', theme_id: 2},
{name: 'Girls Generation', file: 'girlsgeneration.jpeg', theme_id: 2},
{name: 'Itzy', file: 'itzy.png', theme_id: 2},
{name: 'Kepler', file: 'kepler.png', theme_id: 2},
{name: 'New Jeans', file: 'newjeans.jpeg', theme_id: 2},
{name: 'Nmixx', file: 'nmix.png', theme_id: 2},
{name: 'Red Velvet', file: 'redvelvet.jpeg', theme_id: 2},
{name: 'Twice', file: 'twice.jpeg', theme_id: 2},

])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

{name: "Мужские группы"},   
{name: "Женские группы"},
])
