Rails.application.routes.draw do


  get 'users/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
    
  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'  

end
