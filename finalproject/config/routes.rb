Rails.application.routes.draw do
get "/login", to: "sessions#new"

post "/sessions", to: "sessions#create"

get "/sign_up", to: "teachers#new", as: "sign_up"
resources :teachers
resources :sessions

end
