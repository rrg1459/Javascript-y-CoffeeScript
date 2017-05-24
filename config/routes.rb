Rails.application.routes.draw do
  get 'entrada/indice'
  root 'entrada#indice'


  get 'alumnos/calificar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
