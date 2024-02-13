Rails.application.routes.draw do
  # get 'students/new'
  # get 'students/index'
  # get 'students/show'
  # get 'students/:id/update'
  # get 'students/delete'
  # get 'students/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :students

  get 'teachers/new', to: 'teachers#new'
  get 'teachers', to: 'teachers#index'
  post 'teachers', to: 'teachers#create'
  get 'teachers/:id', to: 'teachers#show'
  put 'teachers/:id', to: 'teachers#update'
  get 'teachers/:id/edit', to: 'teachers#edit'
  delete 'teachers/:id', to: 'teachers#delete'

  # Defines the root path route ("/")
  root "students#index"
end
