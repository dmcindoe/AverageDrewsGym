class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :trainer_id
      t.text    :workout
      t.date    :date
      t.string  :timeslot

      t.timestamps
    end
  end
end
