class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists, :id => false do |t|
      t.string :uuid, :limit => 36, :primary => true
      t.string :name
      t.text :description
      t.references :admin

      t.timestamps
    end
    add_index :lists, :admin_id
  end
end
