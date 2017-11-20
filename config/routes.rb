Rails.application.routes.draw do

  post 'api/flights/find', to: 'flights#find'

  post 'api/flights/status', to: 'flights#status'

  post 'api/reservations', to: 'reservations#create'

  post 'api/reservations/find', to: 'reservations#find'

  get 'api/airports', to: 'airports#index'

  get 'api/airports/:id/destinations', to: 'airports#destinations'

end
