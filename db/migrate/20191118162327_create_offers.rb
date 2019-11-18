class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.string :availability
      t.integer :price
      t.boolean :active
      t.string :place
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
