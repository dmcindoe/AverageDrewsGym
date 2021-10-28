RSpec.describe User, type: :model do
    it { should validate_presence_of(:email) }
  end

RSpec.describe User, type: :model do
  it { should validate_presence_of(:password) }
end

RSpec.describe User, type: :model do
  it do
    should validate_length_of(:password).
      is_at_least(8).
      on(:create)
    end
end

RSpec.describe User, type: :model do
  it { should validate_uniqueness_of(:email) }
end