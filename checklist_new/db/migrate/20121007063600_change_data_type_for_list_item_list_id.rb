class ChangeDataTypeForListItemListId < ActiveRecord::Migration
  def up
    change_table :list_items do |t|
      t.change :list_id, :string
    end
  end

  def down
    change_table :list_items do |t|
      t.change :list_id, :integer
    end
  end
end
