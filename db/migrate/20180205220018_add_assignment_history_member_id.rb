class AddAssignmentHistoryMemberId < ActiveRecord::Migration
  def change
     add_column :assignment_histories, :member_id, :integer
  end
end
