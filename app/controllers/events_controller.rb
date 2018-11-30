class EventsController < ApplicationController
   def index

   @events = Event.all
   
   end 
   
   def show 
       
       @vontact = COntact.find 1
@contact.contacts.each do |contact|
   puts contact.last & contact.first
end
       
    
     @event = Event.find(params[:id])
 end
   
    def create
    
        @contact = Contact.find(params[:contact_id])
        @event = @contact.events.create(event_params)
        redirect_to contact_path(@contact)
    end 
    
      def destroy 
    @event = Event.find(params[:id])
    @event.destroy
    
    redirect_to contacts_path
  end
  
    
    private
    
    def event_params
        params.require(:event).permit(:name, :location, :date, :time)
    end
end
