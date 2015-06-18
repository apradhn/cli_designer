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