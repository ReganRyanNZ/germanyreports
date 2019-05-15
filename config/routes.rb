Rails.application.routes.draw do
  resources :reports, except: [:show]
  get ':category_id/:report_id' => 'reports#show'
  root 'reports#index'
end
