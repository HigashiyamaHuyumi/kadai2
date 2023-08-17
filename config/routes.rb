Rails.application.routes.draw do
  get 'books/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'books' => 'books#create'#url=>ｺﾝﾄﾛｰﾗ#ｱｸｼｮﾝ
  get 'books/edit'
  get 'books' => 'books#index'
  # .../lists/1 や .../lists/3 に該当する
  get 'books/:id' => 'books#show'
  resources :books
end
