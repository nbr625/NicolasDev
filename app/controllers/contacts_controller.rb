class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you, I will contact you soon.'
      redirect_to root_path
    else
      flash.now[:error] = 'Could not send message as is. Please check email and phone fields.'
      render :new
    end
  end
end