Rails.application.routes.draw do
  get 'finder/index', to:'finder#index', as: '/'

  get 'finder/alphabetized', to: 'finder#alphabetized',controller:'finder', as: 'customers/alphabetized'

  get 'finder/missing_email', to:'finder#missing_email',controller:'finder', as: 'customers/missing_email'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'alphabetized' => 'finder#alphabetized' , as:'alphabetized'
  get 'missing_email'=> 'finder#missing_email', as: 'missing_email'

  root 'finder#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
