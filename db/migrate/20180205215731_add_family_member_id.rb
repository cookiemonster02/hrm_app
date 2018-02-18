class AddFamilyMemberId < ActiveRecord::Migration
  def change
    add_column :families, :member_id, :integer
  end
end