require_relative 'cookbook'
# controller
class Controller
  def initialize(cookbook)
    @cookbook = Cookbook.new
  end

  def list
    return @cookbook
  end

  def create
    # get name & descript from user (view method)
    # push it into cookbook
  end

  def destroy
    # list recipes
    # select a recipe
    # destroy
  end

# maybe write privat method (display shit)

end
