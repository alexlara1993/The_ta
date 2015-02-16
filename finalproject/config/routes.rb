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
resources :class_rooms

end
#            Prefix Verb   URI Pattern                     Controller#Action
# class_rooms_index GET    /class_rooms/index(.:format)    class_rooms#index
#  class_rooms_show GET    /class_rooms/show(.:format)     class_rooms#show
#   class_rooms_new GET    /class_rooms/new(.:format)      class_rooms#new
#  class_rooms_edit GET    /class_rooms/edit(.:format)     class_rooms#edit
#    students_index GET    /students/index(.:format)       students#index
#     students_show GET    /students/show(.:format)        students#show
#      students_new GET    /students/new(.:format)         students#new
#     students_edit GET    /students/edit(.:format)        students#edit
#             login GET    /login(.:format)                sessions#new
#          sessions POST   /sessions(.:format)             sessions#create
#           sign_up GET    /sign_up(.:format)              teachers#new
#          teachers GET    /teachers(.:format)             teachers#index
#                   POST   /teachers(.:format)             teachers#create
#       new_teacher GET    /teachers/new(.:format)         teachers#new
#      edit_teacher GET    /teachers/:id/edit(.:format)    teachers#edit
#           teacher GET    /teachers/:id(.:format)         teachers#show
#                   PATCH  /teachers/:id(.:format)         teachers#update
#                   PUT    /teachers/:id(.:format)         teachers#update
#                   DELETE /teachers/:id(.:format)         teachers#destroy
#                   GET    /sessions(.:format)             sessions#index
#                   POST   /sessions(.:format)             sessions#create
#       new_session GET    /sessions/new(.:format)         sessions#new
#      edit_session GET    /sessions/:id/edit(.:format)    sessions#edit
#           session GET    /sessions/:id(.:format)         sessions#show
#                   PATCH  /sessions/:id(.:format)         sessions#update
#                   PUT    /sessions/:id(.:format)         sessions#update
#                   DELETE /sessions/:id(.:format)         sessions#destroy
#          students GET    /students(.:format)             students#index
#                   POST   /students(.:format)             students#create
#       new_student GET    /students/new(.:format)         students#new
#      edit_student GET    /students/:id/edit(.:format)    students#edit
#           student GET    /students/:id(.:format)         students#show
#                   PATCH  /students/:id(.:format)         students#update
#                   PUT    /students/:id(.:format)         students#update
#                   DELETE /students/:id(.:format)         students#destroy
#       class_rooms GET    /class_rooms(.:format)          class_rooms#index
#                   POST   /class_rooms(.:format)          class_rooms#create
#    new_class_room GET    /class_rooms/new(.:format)      class_rooms#new
#   edit_class_room GET    /class_rooms/:id/edit(.:format) class_rooms#edit
#        class_room GET    /class_rooms/:id(.:format)      class_rooms#show
#                   PATCH  /class_rooms/:id(.:format)      class_rooms#update
#                   PUT    /class_rooms/:id(.:format)      class_rooms#update
#                   DELETE /class_rooms/:id(.:format)      class_rooms#destroy
