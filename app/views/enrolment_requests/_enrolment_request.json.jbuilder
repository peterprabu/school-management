json.extract! enrolment_request, :id, :course_id, :batch_id, :status, :created_at, :updated_at
json.url enrolment_request_url(enrolment_request, format: :json)
