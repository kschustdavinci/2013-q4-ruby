require './davinci-sinatra.rb'

get "/" do
  halt erb(:browse)
end

# TODO: GET handler for routes like /year/2011, /year/2007, etc.
get "/year/:year" do
  pub_year = params["year"]
  @books = Book.where(publication_year: pub_year)
  if @books.first == @books.last
    @book = Book.find_by(publication_year: pub_year)
    halt erb(:show)
	else
    @header = "Books published in #{pub_year}"
    halt erb(:search_results)
  end
end

# TODO: GET handler for routes like /author/Olsen,
#       /author/Crockford, etc.
get "/author/:last_name" do
  last_name = params["last_name"]
  @books = Book.where("author like ?", "%#{last_name}")
  if @books.first == @books.last
    @book = Book.find_by(id: @books.first[:id])
    halt erb(:show)
	else
    @header = "Books by #{last_name}"
    halt erb(:search_results)
  end
end

# TODO: GET handler for routes like /topic/jQuery, /topic/CSS, etc.
get "/topic/:keyword" do
  topic = params["keyword"]
  @books = Book.where("title like ?", "%#{topic}%")
  if @books.first == @books.last
    @book = Book.find_by(id: @books.first[:id])
    halt erb(:show)
	else
    @header = "Books about #{topic}"
    halt erb(:search_results)
  end
end

# TODO: GET handler for routes like /isbn/1449397220, 
#       /isbn/1449325947, etc.
get "/isbn/:isbn" do
  isbn = params["isbn"]
  @book = Book.find_by(isbn: isbn)
  halt erb(:show)
end