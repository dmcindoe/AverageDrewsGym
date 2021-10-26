require "test_helper"
require 'active_support/core_ext/module/delegation'

class AppointmentTest < ActiveSupport::TestCase
  

  module Shoulda
    module Matchers
      module ActiveRecord

        RSpec.describe Appointment, type: :model do
                it { should belong_to(:trainer) }
              end
          
              # Minitest (Shoulda)
              class ApplicationTest < ActiveSupport::TestCase
                should belong_to(:trainer)
              end

              RSpec.describe Appointment, type: :model do
                it { should belong_to(:client) }
              end
          
              # Minitest (Shoulda)
              class ApplicationTest < ActiveSupport::TestCase
                should belong_to(:client)
              end
end
