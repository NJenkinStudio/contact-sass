class ContactsController < ApplicationController


  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def edit

  end

  def create
  byebug
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: "Contact was successfully created." }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_params
  
    params.require(:contact).permit(:first_name, :last_name, :number, :email, :user_id, { address:[]})
  end

  def set_contact
    @contact = Contact.find(parma[:id])
  end
end