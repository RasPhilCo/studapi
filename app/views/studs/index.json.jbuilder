json.array!(@studs) do |stud|
  json.extract! stud, :id, :firstname, :lastname, :github, :created_at, :updated_at
  json.url stud_url(stud, format: :json)
end
