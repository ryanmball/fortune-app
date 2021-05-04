Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/fortune", controller: "my_examples", action: "fortune_method"

  get "/lotto", controller: "my_examples", action: "lotto_method"

  get "/lyrics", controller: "my_examples", action: "lyrics_method"

end
