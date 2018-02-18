class AddTimeRecordMemberId < ActiveRecord::Migration
  def change
     add_column :time_records, :member_id, :integer
  end
end
