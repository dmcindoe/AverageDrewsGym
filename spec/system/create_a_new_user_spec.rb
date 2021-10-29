require "rails_helper"

describe "user arrival to app before logging in", type: :system do
  it "goes to new user form from log in page to create new user" do
   
    visit new_user_path

    fill_in "Name", with: "Jay"
    fill_in "Email", with: "Bluecollar@yahoo.com"
    fill_in "Password", with: "password89"
    fill_in "Password confirmation", with: "password89"

    expect { click_on "Create your employee account" }.to change(User, :count).by(1)

    expect(current_path).to eq "/users/1"


end

it "they cannot create a new user if passwords dont match" do
    visit new_user_path

    fill_in "Name", with: "Jay"
    fill_in "Email", with: "Bluecollar@yahoo.com"
    fill_in "Password", with: "password89"
    fill_in "Password confirmation", with: "password99"

    expect { click_on "Create your employee account" }.to change(User, :count).by(0)

    expect(page).to have_content "User could not be created" 

    expect(current_path).to eq "/users"
end 

#   it "go back to log in path from user page to sign in" do
    
#     visit new_session_path

#     fill_in "Email", with: "Bluecollar@yahoo.com"
#     fill_in "Password", with: "password89"

#     expect { click_on "Log in" }.to change(User, :count).by(0)

#     expect(page).to have_content "Somethings wrong, try again"

#     expect(current_path).to eq "/users"
#   end
end 