# view
class View
  # INPUT
  def define_description
    puts "Insert description"
    print ">"
  return gets.chomp
  end

  def define_name
    puts "Insert name"
    print ">"
  return gets.chomp
  end

  def specify_index
    puts "specify index"
    print ">"
    return gets.chomp
  end

  def specify_destroy
    puts "Which recipe number would you like to delete?"
    specify_index
  end


  # OUTPUT
  def display(repo)
  repo.each_with_index do |recipe, index|
    puts "#{index+1}: #{recipe} "
    end
  end
end
