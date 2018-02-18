class AddScoreMemberId < ActiveRecord::Migration
  def change
     add_column :scores, :member_id, :integer
  end
end
