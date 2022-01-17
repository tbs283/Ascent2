Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "top#home"

  #ITパスポート
  resources :it_passports, only: [:index]
  get "it_passports/1" => "it_passports#first"

  #サーバー
  resources :servers, only: [:index]
end
