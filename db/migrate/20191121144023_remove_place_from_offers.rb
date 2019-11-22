class RemovePlaceFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :place, :string
  end
end
