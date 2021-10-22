class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :trainer

  validates :timeslot, presence: true
  validates :workout, presence: true 
  validates :workout, length: {maximum: 500}
end
