require_relative "../lib/cli_designer.rb"

cli_designer = CLIDesigner.new

puts "Returns default width:"
puts cli_designer.width

puts "Returns default padding:"
puts cli_designer.padding

puts "Returns default horizontal character:"
puts cli_designer.h_char

puts "prints a horizontal rule"
puts cli_designer.divider

puts "prints a header"
puts cli_designer.header("CLI Designer")

array = ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon",
"Charizard", "Squirtle", "Wartortle", "Blastoise"]

puts "prints an ordered list"
cli_designer.ordered_list(array)

puts "prints an unordered list"
cli_designer.unordered_list(array)

movie_json = {
  "Title" => "Raiders of the Lost Ark",
  "Year" => "1981",
  "Rated" => "PG", 
  "Released" => "12 June 1981",
  "Runtime" => "115 min",
  "Genre" => "Action, Adventure",
  "Director" => "Steven Spielberg",
  "Plot"  => "Archaeologist and adventurer Indiana Jones is hired by the US government to find the Ark of the Covenant before the Nazis.",
  "tomatoRating" => "9.1",
  "tomatoConsensus" => "Featuring bravura set pieces, sly humor, and white-knuckle action, Raiders of the Lost Ark is one of the most consummately entertaining adventure pictures of all time."
}

cli_designer.json(movie_json)