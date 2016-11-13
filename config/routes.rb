Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :groups
  get 'page/home'

  get 'page/about'

  get 'page/contact'

  get 'page/works'

  get 'page/ptt'

  devise_for :users
  get '/prestatutecho' => 'groups#new'
  post '/prestatutecho' => 'groups#create'

  get '/groups/:id/join' => 'groups#add_member', as: 'join_group'


  root 'page#ptt'

  get '/home' => "page#home"
  get '/about' => "page#about"
  get '/contact' => "page#contact"
  get '/works'=> "page#works"
  get '/ptt' => "page#ptt"

  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new" # custom path to sign_up/registration
  end
  get '/groups' => "group#index"

end
