json.array!(@students) do |student|
  json.extract! student, :firstname, :lastname, :github
  json.url student_url(student, format: :json)
end