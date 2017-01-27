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

def index
@contact = Contact.all
render "index.html.erb"
end
  
def new
render "new.html.erb"
end

def create
  address = params[:input_address]
  coordinates = Geocoder.coordinates(address)
  latitude = coordinates[0]
  longitud = coordinates[1]
  @contact = Contact.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], longitud: longitud, latitude: latitude)
@contact.save
redirect_to "/contacts/#{@contact.id}"
end

def show
@contact = Contact.find_by(id: params[:id])
render "show.html.erb"
end

def edit
@contact = Contact.find_by(id: params[:id])
render "edit.html.erb"
end

def update
   address = params[:input_address]
  coordinates = Geocoder.coordinates(address)
  latitude = coordinates[0]
  longitud = coordinates[1]
@contact = Contact.find_by(id: params[:id])
@contact.assign_attributes(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number],  longitud: longitud, latitude:latitude)
@contact.save
redirect_to "/contacts/#{@contact.id}"
end

def destroy
@contact = Contact.find_by(id: params[:id])
@contact.destroy
redirect_to "/contacts"
end

end
