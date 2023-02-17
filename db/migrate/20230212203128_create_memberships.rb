class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.integer :gym_id
      t.integer :tier_id
      t.string :name
      t.string :email
      t.string :phone
    end
  end
end
