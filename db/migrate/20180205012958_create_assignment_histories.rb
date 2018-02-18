class CreateAssignmentHistories < ActiveRecord::Migration
  def change
    create_table :assignment_histories do |t|
     t.integer :assignment
     t.date :start_date
    end
  end
end

