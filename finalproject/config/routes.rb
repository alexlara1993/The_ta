Rails.application.routes.draw do
  get 'class_rooms/index'

  get 'class_rooms/show'

  get 'class_rooms/new'

  get 'class_rooms/edit'

  get 'students/index'

  get 'students/show'

  get 'students/new'

  get 'students/edit'

get "/login", to: "sessions#new"

post "/sessions", to: "sessions#create"

get "/sign_up", to: "teachers#new", as: "sign_up"
resources :teachers
resources :sessions
resources :students

end
