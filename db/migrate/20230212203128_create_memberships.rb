class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.belongs_to :gym
      t.belongs_to :tier 
      t.string :name
      t.string :email
      t.integer :phone
      t.belongs_to :attached_member
    end
  end
end
