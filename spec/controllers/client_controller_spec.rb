require "rails_helper"

describe "GET #show" do
it "renders template of client and has 200 status code", :aggregate_failures do
  get :show
  expect(response.status).to eq(200)
  end
end

# it "assigns @check_in to the correct instance" do

#   get :show, params: { id: check_in.id }

#   expect(assigns[:check_in]).to eq check_in
# end

# it "the response status is a success" do

#   get :show, params: { id: check_in.id }

#   expect(response.status).to eq 200
# end
end
