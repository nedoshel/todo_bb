TodoBb::Application.routes.draw do
  #resources :tasks
  scope 'api' do
    resources :tasks
  end
  root to: 'tasks#index'
   match '*path', to: 'tasks#index', via: [:get, :post]
end
