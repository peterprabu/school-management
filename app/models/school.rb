class School < ApplicationRecord
  has_many :students
  has_many :courses
  has_many :batches
end
