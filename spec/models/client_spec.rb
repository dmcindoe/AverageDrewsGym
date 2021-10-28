RSpec.describe Client, type: :model do
  it { should have_many(:appointments) }
end

RSpec.describe Client, type: :model do
  it { should have_many(:trainers).through(:appointments) }
end
    