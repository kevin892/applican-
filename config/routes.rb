Rails.application.routes.draw do
resources :users
resources :resumes
resources :notes
resources :practices
resources :job_trackers

get '/', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
