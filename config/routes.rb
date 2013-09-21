Library101::Application.routes.draw do
  resources :users, only: [:new, :create, :show,
                           :index]
end
