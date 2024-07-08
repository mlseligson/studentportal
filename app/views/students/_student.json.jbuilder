json.extract! student, :id, :first_name, :last_name, :email, :phone_number, :short_bio, :linkedin_url, :twitter, :resume_url, :blog, :github, :created_at, :updated_at
json.url student_url(student, format: :json)
