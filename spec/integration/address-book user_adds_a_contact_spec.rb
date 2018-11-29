require "rails_helper.rb"

feature "Address-Book user adds a contact" do
    scenario "Address-Book user gets to the new contacts page" do
        visit contacts_path
        expect(page). to have_content("Address Book Contacts")
        click_link "New Contact"
        expect(page).to have_content("New Contact")
        expect(page).to have_content("Last Name:")
        expect(page).to have_content("First Name:")
        expect(page).to have_content("Company")
        expect(page).to have_content("Home Address")
        expect(page).to have_content("Email Address")
        expect(page).to have_content("Home Phone")
        expect(page).to have_content("Cell Phone")
        expect(page).to have_content("Work Phone")
    end
end    