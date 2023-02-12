json.extract! enrolment, :id, :number, :date, :student_id, :course_id, :created_at, :updated_at
json.url enrolment_url(enrolment, format: :json)
