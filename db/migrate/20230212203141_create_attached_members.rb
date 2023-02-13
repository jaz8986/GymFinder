class CreateAttachedMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :attached_members do |t|
      t.string :name
      t.integer :phone
    end
  end
end
