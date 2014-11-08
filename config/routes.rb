Lunar::Application.routes.draw do
  root to: "application#index"
  get '/images', to: "application#index"
  get '/videos', to: "application#index"
  get '/web', to: "application#index"
end