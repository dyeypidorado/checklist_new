class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports, :id => false do |t|
      t.string :uuid, :limit => 36, :primary => true
      t.references :list
      t.references :inspector

      t.timestamps
    end
    add_index :reports, :list_id
    add_index :reports, :inspector_id
  end
end
