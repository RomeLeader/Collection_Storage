movies = {
    'Goodfellas' => 5
    
}

puts "Choose what to do!"
choice = gets.chomp.downcase    

case choice
when "add"
    puts "Movie title to add: "
    title = gets.chomp
    puts "Rating? "
    rating = gets.chomp
    if (movies[title.to_sym] == nil)
        movies = {}
        movies[title.to_sym] = rating.to_i
    else
        puts "Movie already added!"
    end    
when "update"
    puts "Movie title to update?"
    title = gets.chomp
    if (movies[title] == nil)
        puts "That movie is not in the list!"
    else
        puts "Rating? "
        rating = gets.chomp 
        movies = {}
        movies[title.to_sym] = rating.to_i
    end    
when "display" 
    movies.each do |movie,rating|
        puts "#{movies}: #{rating}"
    end    
when "delete"
    puts "Movie to delete?"
    title = gets.chomp
    if (movies[title.to_sym] == nil)
        puts "That movie doesn't exist!"
    else
        movies.delete(title)
    end    
else
    puts "Error!"
end    
