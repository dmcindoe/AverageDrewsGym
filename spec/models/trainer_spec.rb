RSpec.describe Trainer, type: :model do
    it { should have_many(:appointments) }
  end
  
  RSpec.describe Trainer, type: :model do
    it { should have_many(:clients).through(:appointments) }
  end