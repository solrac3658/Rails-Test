Rails.application.routes.draw do
  get 'arrendar/arrendo'

  root 'arrendar#arrendo'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
