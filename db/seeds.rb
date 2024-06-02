# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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

{name: "Мужские группы"},      # 1 Нет темы
{name: "Женские группы"},
])
