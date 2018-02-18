class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
     t.date :birthday, null: false
     t.string :last_name, null: false
     t.string :lastname_kana, null: false
     t.string :first_name, null: false
     t.string :firstname_kana, null: false
     t.string :contact_information, null: false
     t.string :address, null: false
     t.string :relationship, null: false
    end
  end
end
