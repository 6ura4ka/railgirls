json.array!(@books) do |book|
  json.extract! book, :name, :description, :picture, :author, :published_on
  json.url book_url(book, format: :json)
end
