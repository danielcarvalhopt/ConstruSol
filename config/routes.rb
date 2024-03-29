Rails.application.routes.draw do
  resources :construsolutions
  resources :base_materials
  resources :material_compositions
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  get 'compare', to: 'construsolutions#compare'
  post 'compare', to: 'construsolutions#compareStep2'
  post 'compare-results', to: 'construsolutions#compareResults'
  get 'compare-results', to: 'construsolutions#compare'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
