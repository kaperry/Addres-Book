class EventsController < ApplicationController
    def create
    
        @contact = Contact.find(params[:contact_id])
        @event = @contact.events.create(event_params)
        redirect_to contact_path(@contact)
    end 
    
    private
    
    def event_params
        params.require(:event).permit(:location, :date, :time)
    end
end
