Lunar::Application.routes.draw do
  root to: "application#index"
  get '/images', to: "application#index"
end