class ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit ]
  
  def index
    @contacts = Contact.where(user_id: current_user)
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
    1.times { @contact.addresses.build }
  end

  def edit

  end

  def create
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
  
    params.require(:contact).permit(:first_name, :last_name, :number, :email, :user_id, address_attributes:[:id, :address1, :address2, :city, :state, :zip])
  end   

  def set_contact
    @contact = Contact.find(params[:id])
  end

end