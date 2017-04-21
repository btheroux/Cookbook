require_relative 'recipe'
require_relative 'view'
# controller
class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def create
    description = @view.define_description
    name = @view.define_name
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
    # get name & descript from user (view method)
    # push it into cookbook
  end

  def destroy
    display_recipes
    index = @view.specify_destroy
    recipe = @cookbook.remove(index)

    # list recipes
    # select a recipe
    # destroy
  end

  private

  def display_recipes
    recipes = @cookbook.all
    @view.display(repo)
  end

# maybe write privat method (display shit)

end
