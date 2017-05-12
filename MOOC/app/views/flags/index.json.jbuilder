json.array!(@flags) do |flag|
  json.extract! flag, :id, :lecture_id, :user_id
  json.url flag_url(flag, format: :json)
end
