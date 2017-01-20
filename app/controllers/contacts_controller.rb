class ContactsController < ApplicationController

def first_contact

  @contact1 = Contact.first
  render "contact_names.html.erb"
  end

  def new_contact_method
    render "contact_test.html.erb"
  end

  def new_contact_result_method
    @contact = Contact.new(first_name: params[:input_first_name], last_name: params[:input_last_name], email: params[:input_email], phone_number: params[:input_phone_number])
    @contact.save
    render "contacts_result.html.erb"
  end
end
