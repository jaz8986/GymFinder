class CreateTiers < ActiveRecord::Migration[7.0]
  def change
    create_table :tiers do |t|
      t.belongs_to :gym
      t.string :name_of_tier
      t.string :description
    end
  end
end
