Rails.application.routes.draw do
  get 'grades/index', to: 'grades#index'
  
  root 'grades#index'
  
  
  get 'grades/new', to: 'grades#new'
  
  post 'grades', to: 'grades#create'
  
  delete 'grades/:id', to: 'grades#destroy'
  
  get 'grades/:id', to: 'grades#show'
  
  get 'grades/:id/edit', to: 'grades#edit'
  
  patch 'grades/:id', to: 'grades#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
