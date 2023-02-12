class Student < ApplicationRecord
  belongs_to :school
  has_many :courses, through: :enrolments
  has_many :registrations
  has_many :batches, through: :courses

  validates :email, presence: true
end
