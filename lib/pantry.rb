class Pantry
    attr_reader :stock

    def initialize
        @stock = {}
    end

    def restock(ingredient, quantity)
        restock_hash = {}
        restock_hash[ingredient.name] = quantity

        @stock.merge!(restock_hash) { | key, val1, val2 | val1 + val2 }
    end

    def stock_check(ingredient)
        name = ingredient.name
        if stock[name].nil?
            0
        else
            stock[name]
        end
    end
end
