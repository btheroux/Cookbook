# view
class View




  # INPUT
  # Add one recipe
  # Delete one recipe
  # Exit program


#create

# def ask_recipe_name
#  puts "What is the name of your new recipe?"
#  print ">"
#  return = gets.chomp
# end

  def define_description
    puts "Insert description"
    print ">"
  return = gets.chomp
  end


  # OUTPUT
  def display(repo)
  repo.each_with_index do |recipe, index|
    puts "#{index+1}: #{recipe} "
  end
end
