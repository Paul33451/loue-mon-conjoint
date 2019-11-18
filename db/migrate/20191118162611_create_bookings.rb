class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :date
      t.string :adress
      t.boolean :status
      t.references :offer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
