Rails.application.routes.draw do
  root to: "contacts#index"
  get "/first_contact", to: "contacts#first_contact"
  get "/contacts_form", to: "contacts#new_contact_method"
  post "/contacts_result", to: "contacts#new_contact_result_method"
  
  get "/contacts", to: "contacts#index"
  get "/contacts/new", to: "contacts#new"
  post "/contacts", to: "contacts#create"
  get "/contacts/:id", to: "contacts#show"
  get "/contacts/:id/edit", to: "contacts#edit"
  patch "/contacts/:id", to: "contacts#update"
  delete "/contacts/:id", to: "contacts#destroy"


  # sign up
  get "/signup", to:"users#new"
  post "/users", to:"users#create"

  # Sign In
  get  "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
end
