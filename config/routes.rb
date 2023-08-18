Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'#url=>ｺﾝﾄﾛｰﾗ#ｱｸｼｮﾝ
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_books'
  resources :books
  resources :show
  resources :index
end
