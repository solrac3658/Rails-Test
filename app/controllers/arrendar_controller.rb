class ArrendarController < ApplicationController
  
  def createFormPelicula 
  	@peliculas = [["Rapidos y_furiosos",1]]
  end

  def createFormSerie
  	@series = [["naruto", 2]]
  end

  def arrendo
  end
end
