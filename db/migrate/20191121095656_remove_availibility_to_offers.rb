class RemoveAvailibilityToOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :availability, :string
  end
end
