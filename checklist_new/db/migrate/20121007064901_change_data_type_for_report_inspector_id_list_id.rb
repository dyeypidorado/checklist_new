class ChangeDataTypeForReportInspectorIdListId < ActiveRecord::Migration
  def up
    change_table :reports do |t|
      t.change :list_id, :string
      t.change :inspector_id, :string
    end
  end

  def down
    change_table :reports do |t|
      t.change :list_id, :integer
      t.change :inspector_id, :integer
    end
  end
end
