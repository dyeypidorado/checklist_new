class ChangeDataTypeForListAdminId < ActiveRecord::Migration
  def up
    change_table :lists do |t|
      t.change :admin_id, :string
    end
  end

  def down
    change_table :lists do |t|
      t.change :admin_id, :integer
    end
  end
end
