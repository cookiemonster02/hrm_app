class CreateTimeRecords < ActiveRecord::Migration
  def change
    create_table :time_records do |t|
     t.integer :start_time, null: false
     t.integer :leaving_time, null: false
    end
  end
end
