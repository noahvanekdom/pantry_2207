class Recipe
    attr_reader :name, :ingredients_required, :ingredients

    def initialize(name)
        @name = name
        @ingredients_required = Hash.new(0)
        @ingredients = []
    end

    def add_ingredient(ingredient, quantity)
        @ingredients_required[ingredient] += quantity
        @ingredients << ingredient
        @ingredients = @ingredients.uniq
    end

    def total_calories
        @ingredients_required.reduce(0) do |total, (ingredient, quantity)|
          total + (ingredient.calories * quantity)
        end
    end
end
