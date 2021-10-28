RSpec.describe Appointment, type: :model do
  it { should belong_to(:trainer) }
end

RSpec.describe Appointment, type: :model do
  it { should belong_to(:client) }
end

RSpec.describe Appointment, type: :model do
  it { should validate_presence_of(:timeslot) }
end

RSpec.describe Appointment, type: :model do
  it { should validate_presence_of(:workout) }
end

RSpec.describe Appointment, type: :model do
  it do
    should validate_length_of(:workout).
      is_at_most(500).
      on(:create)
    end
  end
