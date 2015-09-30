class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.valid?
      ContactMe.contact_email(@contact).deliver
      redirect_to root_path
      flash[:notice] = "Message sent from {@contact.name}"
    else     
      render :new
      flash.now[:error] = 'Could not send message as is. Please check email and phone fields.'
    end
  end
end