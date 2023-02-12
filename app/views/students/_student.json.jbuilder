json.extract! student, :id, :name, :id_card_number, :age, :sex, :created_at, :updated_at
json.url student_url(student, format: :json)
