class Course < ApplicationRecord
  belongs_to :school
  has_many :students, through: :enrolments
  has_many :batches
  has_many :enrolments
end
