require "rails_helper.rb"

feature "Address-Book user create a event" do
    scenario "Address-Book user gets to the Contact Info page" do
        visis contact_path(@contact)
        
        expect(page).to have_content("Contact Info")
        expect(page).to have_field("Last")
        expect(page).to have_field("First")
        expect(page).to have_field("Company")
        expect(page).to have_field("Address")
        expect(page).to have_field("Email")
        expect(page).to have_field("Home")
        expect(page).to have_field("Cell")
        expect(page).to have_field("Work")
        click_link "Create New Event"
        expect(page).to have_content("Add an Event")
        expect(page).to have_field("Name")
        expect(page).to have_field("Location")
        expect(page).to have_field("Date")
        expect(page).to have_content("Time")
        
    end
    
    scenario "Address-Book user creates a New Event" do
        visit new_contact_path
        expect(page).to have_content("New Contact")
        fill_in "Name", with: "Enter a Name"
        fill_in "Location", with: "Enter a Location"
        fill_in "Date", with: "Enter a Date"
        fill_in "Time", with: "Enter a Time"
        click_button "Save Event"
        expect(page).to have_content("Enter a Name")
        expect(page).to have_content("Enter a Location")
         expect(page).to have_content("Enter a Date")
        expect(page).to have_content("Enter a Time
        ")
    end 
    
end