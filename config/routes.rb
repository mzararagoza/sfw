SobrietyforwomenAdmin::Application.routes.draw do
  #devise_for :admins, :controllers => { registrations: 'admins/registrations',
  #                                     :sessions => "admins/sessions",
  #                                     :passwords => 'admins/passwords',
  #                                     :confirmations => 'admins/confirmations'
  #}
  #authenticate :admin do
  #  namespace :admins do
  #    resources :ui
  #    resources :admins
  #    resources :leads
  #    resources :profile, :only => [:edit, :update]
  #    resources :users
  #    mount Resque::Server.new, :at => "/resque"
  #    get '/dashboard' => 'dashboards#index', as: :dashboard
  #    get '/' => 'dashboards#index'
  #  end
  #end
  root :to => 'pages#index'
end
