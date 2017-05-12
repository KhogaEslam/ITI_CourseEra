json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :description, :video, :course_id
  json.url lecture_url(lecture, format: :json)
end
