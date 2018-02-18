class AssignmentHistory < ActiveRecord::Base
  belongs_to :member

  extend Enumerize

  enumerize :assignment, in: {humanresourcesdepartment: 0, financedepartment: 1, businessdepartment: 2} ,scope: true
end
