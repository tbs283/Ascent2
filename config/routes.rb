Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "homes#top"

  #ITパスポート
  resources :it_passports, only: [:index]
  get "it_passports/1" => "it_passports#corpolation"
  get "it_passports/1com" => "it_passports#cop_com"
  get "it_passports/2" => "it_passports#legal"
  get "it_passports/3" => "it_passports#strategy"

  #サーバー
  resources :servers, only: [:index]
end
