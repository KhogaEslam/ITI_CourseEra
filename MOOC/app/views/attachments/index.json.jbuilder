json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :file, :lecture_id
  json.url attachment_url(attachment, format: :json)
end
