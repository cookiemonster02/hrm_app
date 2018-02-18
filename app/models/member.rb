class Member < ActiveRecord::Base
extend Enumerize

  has_many :families, dependent: :destroy, autosave: true
  has_one  :score, dependent: :destroy, autosave: true
  has_many :assignment_histories, dependent: :destroy, autosave: true
  has_many :time_records, dependent: :destroy, autosave: true

  enumerize :sex, in: {unknown: 0, man: 1, woman: 2} ,scope: true
  enumerize :assignment, in: {human_resources_department: 0, finance_department: 1, business_department: 2} ,scope: true
  enumerize :employee_attributes, in:{comprehensive_work: 0, general_staff: 1, officer: 2} ,scope: true
  enumerize :position,in: {employee: 0,sectionhief: 1, manager: 2} ,scope: true
  enumerize :grade, in: {s1: 0, s2: 1, s3: 2} ,scope: true
  enumerize :character_judgment, in: {A: 0, B: 1, C: 2, D: 3, E: 4, A1: 5, B1: 6, C1: 7, D1: 8, E1: 9, A2: 10, B2: 11, C2: 12, D2: 13, E2: 14}, scope: true

  validates :lastname, presence: true,length: { maximum: 20 }
  validates :lastname_kana, presence: true,length: { maximum: 20 }
  validates :firstname, presence: true,length: { maximum: 20 }
  validates :firstname_kana, presence: true,length: { maximum: 20 }
  validates :birthday, null: false
  validates :hire_date, null: false
  validates :sex, presence: true,numericality: true
  validates :assignment, null: false
  validates :employee_attributes, presence: true,numericality: true
  validates :position, presence: true,numericality: true
  validates :grade, presence: true,numericality: true
  validates :character_judgment, presence: true,numericality: true

end
