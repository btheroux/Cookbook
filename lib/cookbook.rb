# repository
class Cookbook
  def initialize(csv_file_path)
    @repo = []
    @csv_file_path = csv_file_path
    CSV.foreach(@csv_file_path) do |row|
      @repo << [row[0], row[1]]
    end
  end

  def all
    return @repo
  end

  def add_recipe(recipe)
    @repo << recipe
  end

  def remove_recipe(recipe_id)
    @repo.delete_at(recipe_id)
  end
end
