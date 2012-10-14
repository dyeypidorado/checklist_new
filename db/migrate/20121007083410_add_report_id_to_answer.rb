class AddReportIdToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :report_id, :string
  end
end
