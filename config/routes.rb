Rails.application.routes.draw do

   root to: 'pages#home'

  get 'about' , to: "pages#about"
  get 'contact', to: 'pages#contact'

  resources :blogs do 
    member do
      get :toggle_status
    end
  end


  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: "portfolios#show", as: 'portfolio_show'
  get 'angular-items', to: 'portfolios#angular'

end


#, path '', path_names: {sign_in: 'login', sign_out: 'logout'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


