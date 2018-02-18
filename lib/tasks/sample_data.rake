namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_user
    make_member
  end
end

    def make_user
     User.create!(name: "takei kenta",
                  email: "takei@kenta.jp",
                  password: "foobar")
    end

    def make_member
      2.times do |n|
       require 'active_support/core_ext/date/calculations'
       d = Date.today
       lastname = Faker::Name.name
       lastname_kana = Faker::Name.name
       firstname = Faker::Name.name
       firstname_kana = Faker::Name.name

       Member.create!(lastname: lastname,
        lastname_kana: lastname_kana,
        firstname: firstname,
        firstname_kana: firstname_kana,
        birthday: d,
        hire_date: d,
        sex: [*0..2].sample,
        assignment: [*0..2].sample,
        employee_attributes: [*0..2].sample,
        position: [*0..2].sample,
        grade: [*0..2].sample,
        years_of_attendance: nil,
        character_judgment: [*0..14].sample)
     end






    end
