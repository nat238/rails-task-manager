Rails.application.routes.draw do
  #For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root                     to: 'tasks#index'
  get    'tasks/new',      to: 'tasks#new'
  get    'tasks/:id/edit', to: 'tasks#edit',    as: :edit
  get    'tasks/:id',      to: 'tasks#show',    as: :task
  post   'tasks/',         to: 'tasks#create'
  patch  'tasks/:id',      to: 'tasks#update'
  delete 'tasks/:id',      to: 'tasks#destroy', as: :destroy
end
