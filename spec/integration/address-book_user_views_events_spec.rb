require "rails_helper.rb"

feature "Address-Book user views events" do
    scenario "Successfully" do
        
    
      
        visit root_path
        expect(page).to have_content("Welcome to Your Address Book")
        visit(contacts_path)
        expect(page).to have_content("Address Book Contacts")
        expect(page).to have_content("Last")
        expect(page).to have_content("First")
        expect(page).to have_content("Event")
        page.find(:xpath, "//a[contains(@href, 'contacts/:contact_id/events')]").click
         expect(page).to have_content("Events")
        expect(page).to have_content("Name of Event")
        expect(page).to have_content("Date")
      
       
        
 
    end
    
    scenario "Address-Book user creates a New Event" do
        visit ( new_contact_event_path(@contact))
        
        expect(page).to have_content("Add an Event")
         expect(page).to have_content("Type of Event")
        expect(page).to have_content("Location")
        expect(page).to have_content("Date")
        expect(page).to have_content("Time")

        click_button "Save Event"
        expect(page).to have_content("Enter a Name")
        expect(page).to have_content("Enter a Location")
         expect(page).to have_content("Enter a Date")
        expect(page).to have_content("Enter a Time
        ")
    end 
    
end