class Ingredient
    attr_reader :name, :unit, :calories

    def initialize(details)
        @details = details
    end

    def name
        @details[:name]
    end

    def unit
        @details[:unit]
    end

    def calories
        @details[:calories]
    end
end
