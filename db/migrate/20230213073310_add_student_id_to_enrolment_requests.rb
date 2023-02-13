class AddStudentIdToEnrolmentRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :enrolment_requests, :student_id, :integer
  end
end
