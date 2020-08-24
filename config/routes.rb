Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'

  # CREATE add at task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # READ all tasks
  get 'tasks', to: 'tasks#index'

  # READ one task details
  get 'tasks/:id', to: 'tasks#show', as: :task # still don't quite understand the as: re_named url?

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task# takes to your form edit page
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end


# need to add an edit and destroy icon that redirects to corresponding pages
