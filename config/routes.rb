Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "blog#home"
  get 'blog/new'
  post 'blog/create'
  patch 'blog/update'
  get 'blog/list'
  get 'blog/show'
  get 'blog/edit'
  get 'blog/delete'
end
