Rails.application.routes.draw do
  resources :reports, except: [:show]
  get ':category_id/:report_id' => 'reports#show'
  root 'reports#index'
  get 'archives' => 'reports#archives'
  get 'archives/:date_id/:archive_id' => 'reports#show_archive'
end
