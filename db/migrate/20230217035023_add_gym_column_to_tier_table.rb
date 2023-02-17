class AddGymColumnToTierTable < ActiveRecord::Migration[7.0]
  def change
    add_column :tiers, :gym_id, :integer
  end
end
