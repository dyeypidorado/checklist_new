class ChangeDataTypeForAnswerInspectorIdListId < ActiveRecord::Migration
  def up
    change_table :answers do |t|
      t.change :list_item_id, :string
      t.change :inspector_id, :string
    end
  end

  def down
    change_table :answers do |t|
      t.change :list_item_id, :integer
      t.change :inspector_id, :integer
    end
  end
end
