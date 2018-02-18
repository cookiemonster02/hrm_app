class Score < ActiveRecord::Base
  belongs_to :member

  validates :plan, presence: true
  validates :design, presence: true,numericality: true
  validates :clerk, presence: true,numericality: true
end