class Family < ActiveRecord::Base
     belongs_to :member

     validates :birthday, presence: true
     validates :last_name, presence: true,length: { maximum: 20 }
     validates :lastname_kana, presence: true,length: { maximum: 50 }
     validates :first_name, presence: true,length: { maximum: 20 }
     validates :firstname_kana, presence: true,length: { maximum: 50 }
     validates :contact_information, presence: true
     validates :address, presence: true,length: { minimum: 5 }
     validates :relationship, presence: true,length: { maximum: 10 }
end