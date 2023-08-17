Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'#url=>ｺﾝﾄﾛｰﾗ#ｱｸｼｮﾝ

 # get 'books' => 'books#show'.../lists/1 や .../lists/3 に該当する
  get 'books/:id' => 'books#show'
  resources :books
  resources :index
end
