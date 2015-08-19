Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => redirect( 'surveys/question_groups/1/answer_groups/new')
  devise_for :users
  resources :users
  mount Rapidfire::Engine => "/surveys"
end
