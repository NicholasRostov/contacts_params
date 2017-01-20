Rails.application.routes.draw do
  
  get "/first_contact", to: "contacts#first_contact"

  get "/contacts_form", to: "contacts#new_contact_method"
  post "/contacts_result", to: "contacts#new_contact_result_method"
  
end
