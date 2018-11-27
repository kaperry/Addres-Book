class EventsController < ApplicationController
   def index
   
   @events = Event.all
   
   end 
   
   def show 
     @contact = Contact.find(params[:id]) 
     @event = Event.find(params[:id])
 end
   
    def create
    
        @contact = Contact.find(params[:contact_id])
        @event = @contact.events.create(event_params)
        redirect_to contact_path(@contact)
    end 
    
    private
    
    def event_params
        params.require(:event).permit(:name, :location, :date, :time)
    end
end
