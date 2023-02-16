class AddAttachedMemberIdsToMembership < ActiveRecord::Migration[7.0]
  def change

    add_column :attached_members, :membership_id, :integer
    
  end
end
