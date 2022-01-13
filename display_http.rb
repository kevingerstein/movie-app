require 'http'
system("clear")

puts "All movies: "
response = HTTP.get("http://localhost:3000/movies")
movies = response.parse(:json)
pp movies
puts
puts "Please input an id for a movie you would like to find"
id = gets.chomp.to_i
response = HTTP.get("http://localhost:3000/movies/#{id}")
movie = response.parse(:json)
pp movie