class Recipe
    attr_reader :name, :ingredients_required, :ingredients

    def initialize(name)
        @name = name
        @ingredients_required = {}
        @ingredients = []
    end

    def add_ingredient(ingredient, quantity)
        ingredient_hash = {}
        ingredient_hash[ingredient] = quantity

        @ingredients_required.merge!(ingredient_hash) { |ingredient, quantity1, quantity2 | quantity1 + quantity2 }
        @ingredients = @ingredients_required.keys
    end
end
