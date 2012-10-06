class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items, :id => false do |t|
      t.string :uuid, :limit => 36, :primary => true
      t.string :title
      t.text :description
      t.string :answer_kind
      t.text :selection
      t.references :list

      t.timestamps
    end
    add_index :list_items, :list_id
  end
end
