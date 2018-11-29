require "rails_helper.rb"

feature "Address-Book user adds a contact" do
    scenario "Address-Book user gets to the new contacts page" do
        visit contacts_path
        expect(page). to have_content("Address Book Contacts")
        click_link "New Contact"
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
end    