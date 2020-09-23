class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    names = []
    @recipes.each do |recipe|
      recipe.ingredients_required.each do |ingredient|
        names << ingredient[0].name
      end
    end
    names.uniq
  end

  def highest_calorie_meal
    @recipes.max_by do |recipe|
      recipe.total_calories
    end
  end
end
