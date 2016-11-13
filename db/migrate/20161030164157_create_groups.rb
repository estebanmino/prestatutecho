class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :host_id
      t.string :street, null: false
      t.string :number, null: false
      t.string :commune, null: false
      t.string :address

      t.float :longitude
      t.float :latitude


      t.timestamps
    end
  end
end
