Rails.application.routes.draw do
  get 'department/index'

  get 'sessions/new'

  get 'users/new'
  get 'login' => 'sessions#new', as: :log_in
  get 'logout' => 'sessions#destroy', as: :log_out
  resources :sessions, :users, :staffs, :departments, :loans, :sabbaticals, :attendances, :preferences
  get 'dashboard/user' => 'dashboard#user', as: :dashboard_user
  get 'dashboard/company' => 'dashboard#company', as: :dashboard_company
  get 'dashboard/preferences' => 'dashboard#preferences', as: :dashboard_setting
  get 'dashboard/records' => 'dashboard#records', as: :dashboard_records
  get 'dashboard' => 'dashboard#index', as: :dashboard
  get 'login' => 'sessions#new'

  root 'sessions#new'
end
