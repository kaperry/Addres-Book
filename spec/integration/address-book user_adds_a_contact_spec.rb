require "rails_helper.rb"

feature "Address-Book user adds a contact" do
    scenario "Address-Book user gets to the new contacts page" do
        visit contacts_path
        expect(page). to have_content("Address Book Contacts")
        click_link "Add New Contact"
        expect(page).to have_content("New Contact")
        expect(page).to have_field("Last")
        expect(page).to have_field("First")
        expect(page).to have_field("Company")
        expect(page).to have_field("Address")
        expect(page).to have_field("Email")
        expect(page).to have_field("Home")
        expect(page).to have_field("Cell")
        expect(page).to have_field("Work")
    end
    
    scenario "Address-Book user creates a New Contact" do
        visit new_contact_path
        expect(page).to have_content("New Contact")
        fill_in "Last", with: "New Contact"
        fill_in "First", with: "new Contact"
        fill_in "Company", with: "new Contact"
        fill_in "Address", with: "new Contact"
        fill_in "Email", with: "new Contact"
        fill_in "Home", with: "new Contact"
        fill_in "Cell", with: "new Contact"
        fill_in "Work", with: "new Contact"
        click_button "Save Contact"
        expect(page).to have_content("New Contact")
        expect(page).to have_content("New Contact")
    end 
    
end