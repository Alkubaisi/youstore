class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to submitted_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

private
    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:email, :name, :enquiry)
    end
end


