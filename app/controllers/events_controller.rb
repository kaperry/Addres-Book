class EventsController < ApplicationController
  
  def new
      
      @event = Event.new
 end
   def index

   @events = Event.all
   
   end 
   
   def show 
       
     @contact = Contact.find 
  @contact.each do |contact|
   puts contact.last & contact.first
end
       
    
     @event = Event.find(params[:id])
 end
   
    def create
        
         @contact = Contact.find(params[:contact_id])
         @event = Event.new(event_params)
        @event = @contact.events.create(event_params)
        redirect_to contact_path(@contact)
    end 
    
      def destroy 
    @contact = Contact.find(params[:contact_id])     
    @event = Event.find(params[:id])
    @event.destroy
    
    redirect_to contact_path(@contact)
  end
  
    
    private
    
    def event_params
        params.require(:event).permit(:name, :location, :date, :time, contacts_attributes:[:id])
    end
end
