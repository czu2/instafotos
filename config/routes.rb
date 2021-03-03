Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :posts, except:[:destroy]

root 'posts#index'
delete 'posts/:id', to: 'posts#destroy',  as: 'post_destroy'

end
