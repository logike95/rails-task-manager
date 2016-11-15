Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete '/tasks/:id', to: 'tasks#destroy' #delete an existing tasks
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task #get the form to edit an existing task
  get '/tasks', to: 'tasks#index'#, as: :tasks #get all your tasks.
  get '/tasks/new', to: 'tasks#new', as: :new_task #get the form to create a new task
  get '/tasks/:id', to: 'tasks#show', as: :task #get a precise task, e.g GET '/tasks/33' get task with id=3
  post '/tasks', to: 'tasks#create' #post a new task
  patch '/tasks/:id', to: 'tasks#update' #update an existing task
end
