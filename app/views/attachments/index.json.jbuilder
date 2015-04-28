json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :filename, :filedata, :mime_type, :example_id
  json.url attachment_url(attachment, format: :json)
end
