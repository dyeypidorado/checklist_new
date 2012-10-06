class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers, :id => false do |t|
      t.string :uuid, :limit => 36, :primary => true
      t.string :value
      t.references :list_item
      t.references :inspector

      t.timestamps
    end
    add_index :answers, :list_item_id
    add_index :answers, :inspector_id
  end
end
