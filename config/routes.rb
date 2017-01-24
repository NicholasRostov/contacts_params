Rails.application.routes.draw do
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
end
