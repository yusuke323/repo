Rails.application.routes.draw do
  resources :task_items
  resources :kadais
  root 'task_items#index'
end