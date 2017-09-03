Rails.application.routes.draw do
  resources :activities

  get "/stat_medium", to: "stat#medium"
  get "/stat_activity", to: "stat#activity"
  get "/stat_activity_medium", to: "stat#activity_medium"
end
