class CreateGroupMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :group_memberships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :group, index: true
      t.datetime :creation_date
      t.timestamps
    end
  end
end
