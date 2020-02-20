	# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

peliculas = Entretenimiento.create([
	{ titulo: 'Star Wars', genero: "Ciencia Ficcion", precio:3000, tipo:"Pelicula", duracion: 2.35}, 
	{ titulo: 'Lord of the Rings' , genero: "Ciencia Ficcion", precio:3000, tipo:"Pelicula", duracion: 2.15},
	{ titulo: 'Batman Dark Night' , genero: "Ciencia Ficcion", precio:3000, tipo:"Pelicula", duracion: 2.00},
	{ titulo: 'Prison Breack' , genero: "Ciencia Ficcion", precio:7000, tipo:"Serie", temporada:4},
	{ titulo: 'Sherlock' , genero: "Ciencia Ficcion", precio:7000, tipo:"Serie", temporada:4},
	{ titulo: 'Dr House' , genero: "Ciencia", precio:9000, tipo:"Serie", temporada:8},
])

