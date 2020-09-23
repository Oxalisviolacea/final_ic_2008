class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def enough_ingredients_for?(recipe)
    enough = []
    @stock.each do |stock|
      recipe.ingredients_required.each do |ingredient|
        if stock[1] >= ingredient[1]
          enough << true
        end
      end
    end
    return enough.all?(true)
  end
end
