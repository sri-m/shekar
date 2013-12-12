class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  #before_filter :text
  #before_filter :authenticate_user!
  # GET /contacts
  # GET /contacts.json
  #before_filter :login_required, :except => [:index,:show]

     def login_required
       redirect_to root_url
     end
     
  def index
    @contacts = Contact.all
  end
  
  #private
  def text
    redirect_to "/"
    #redirect_to root_url
    #redirect_to "/" unless Contact.count < 0 
    #render :text => 'Hi I am srinivas'
  end
  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    
    respond_to do |format|
      if @contact.save
        UserMailer.registration_confirmation(@contact).deliver
        format.html { redirect_to @contact, notice: 'Record Was Created.' }
        format.json { render action: 'show', status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url }
      format.json { head :no_content }
    end
  end

  private #strong parameters
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :address)
    end

end
