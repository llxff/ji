Ji::Application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'

  devise_for :users

  resources :stories
  resources :story_categories, only: [:new, :create]

  root to: 'stories#index'
end
