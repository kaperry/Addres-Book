class ContactsController < ApplicationController
     def index
      @contacts = Contact.all
      @events = Event.all
      
    end  
    
    def show
      
      @contact = Contact.find(params[:id])
    end
    
    
    def new
      @contact = Contact.new
      @event = @contact.events.build
    end
    
    def create
      
      @contact = Contact.new(contact_params)
      
    
      
      if @contact.save
      redirect_to @contact
      
      else 
        render 'new'
      end
    end

  def edit 
    @contact = Contact.find(params[:id])
  end
  
  def update
    
    @contact = Contact.find(params[:id])
    
    if @contact.update(contact_params)
      redirect_to @contact
    else
      render 'edit'
    end 
    
  end  
  
  def destroy 
    @contact = Contact.find(params[:id])
    @contact.destroy
    
    redirect_to contacts_path
  end
  
end 

private 

 def contact_params
   params.require(:contact).permit(:last,:first,:company,:address,:email,:home,:cell,:work)
 end
