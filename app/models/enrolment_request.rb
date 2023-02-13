class EnrolmentRequest < ApplicationRecord
  belongs_to :course
  belongs_to :batch
end
