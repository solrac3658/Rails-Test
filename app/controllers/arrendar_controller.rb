class ArrendarController < ApplicationController
  
  def actualizar
  	usuario = User.find_by(email:params['correo'] )
  	
 	if usuario.blank? 
 		usuario = User.create ({nombre:params['nombre'], email:params['correo']} )
 	end
 	entretenimiento_id= params['entretenimiento'].to_i
 	Rent.create({user:usuario, entretenimiento_id:entretenimiento_id})
  	redirect_to action: 'arrendo'

  end

  def arrendo
  	coleccion = Entretenimiento.where(tipo: "Pelicula")
  	@peliculas = coleccion.map {|actual| [actual.titulo, actual.id]}
  	coleccion = Entretenimiento.where(tipo: "Serie")
  	@series = coleccion.map {|actual| [actual.titulo, actual.id]}
  	@arrendados = Rent.all


  end
end
