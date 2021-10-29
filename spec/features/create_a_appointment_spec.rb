require "rails_helper"

# describe "user makes a new appointment for a customer after logging in", type: :system do

#   it "goes to new appointment form from log in page to create new appointment" do
   
#       visit new_appointment_path
  
#       fill_in "Choose Client", with: "Adam Cole"
#       fill_in "Assign a Trainer", with: "Mike Muscle"
#       fill_in "Enter Workout Notes from Client", with: "Please go easy, I am fat"
#       fill_in "Enter Date of Workout", with: "2021-12-21"
#       fill_in "Select Timeslot", with: "Early Morning: 6 to 8am"

#      \ session: { user_id: 1 }
  
#       expect { click_on "Create Appointment" }.to change(Appointment, :count).by(1)
  
# #       expect(current_path).to eq "/users/1"
#   end
  
#   it "they cannot create a new user if passwords dont match" do
#       visit new_user_path
  
#       fill_in "Name", with: "Jay"
#       fill_in "Email", with: "Bluecollar@yahoo.com"
#       fill_in "Password", with: "password89"
#       fill_in "Password confirmation", with: "password99"
  
#       expect { click_on "Create your employee account" }.to change(User, :count).by(0)
  
#       expect(page).to have_content "User could not be created" 
  
#       expect(current_path).to eq "/users"
#   end 
# end