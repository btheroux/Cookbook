require_relative "recipe"
# repository
class Cookbook
  def initialize(csv_file_path)
    @repo = []
    @csv_file_path = csv_file_path
    CSV.foreach(@csv_file_path) do |row|
      @repo << Recipe.new(row[0], row[1])
    end
  end

  def all
    @repo
  end

  def add_recipe(recipe)
    @repo << recipe
    store_csv
  end

  def store_csv
    csv_options = {col_sep: ',', force_quotes: true, quote_char: '"' }
    CSV.open(@csv_file_path, "wb", csv_options) do |csv|
      @repo.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end

  def remove_recipe(recipe_id)
    @repo.delete_at(recipe_id)
    store_csv
  end
end

