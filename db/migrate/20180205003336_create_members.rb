class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
     t.string :lastname, null: false
     t.string :lastname_kana, null: false
     t.string :firstname, null: false
     t.string :firstname_kana, null: false
     t.date   :birthday, null: false
     t.date   :hire_date, null: false
     t.integer :sex, null: false
     t.integer :assignment, null: false
     t.integer :employee_attributes, null: false
     t.integer :position, null: false
     t.integer :grade, null: false
     t.integer :years_of_attendance,null: true
     t.integer :character_judgment, null: false

     t.timestamps
    end
  end
end
