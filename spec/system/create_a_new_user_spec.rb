require "rails_helper"

describe "user arrival to app before logging in", type: :system do
  it "goes to new user form from log in page to create new user" do
   
    visit new_user_path

    fill_in "Name", with: "Jay"
    fill_in "Email", with: "Bluecollar@yahoo.com"
    fill_in "Password", with: "password89"
    fill_in "Password confirmation", with: "password89"

    expect { click_on "Create your employee account" }.to change(User, :count).by(1)

    expect(page).to redirect_to show_user_path

#    end
#   end
end

#   it "they cannot create a new account if passwords dont match" do
#     visit sign_up_path

#     fill_in "Username", with: "professorSteve"
#     fill_in "Password", with: "password"
#     fill_in "Password Confirmation", with: "notthesamepassword"

#     expect { click_on "Sign Up" }.to change(User, :count).by(0)

#     expect(page).to have_content "Somethings wrong, try again"

#     expect(current_path).to eq "/users"
#   end
end 