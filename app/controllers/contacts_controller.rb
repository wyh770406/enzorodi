class ContactsController < ApplicationController
  def index
    
  end

  def create

    @contact = Contact.new(params[:contact])

    success = @contact && @contact.valid?

    if success && @contact.save && @contact.errors.empty?
      redirect_to :action=>index
      flash[:notice] = t(:send_succ)
    else
      redirect_to :action=>index
      flash[:error]  = t(:send_fail)
    end
  end
end