require './lib/ingredient'

describe Ingredient do
    let(:ingredient1) { Ingredient.new({ name: "Cheese", unit: "oz", calories: 50 }) }
    let(:ingredient2) { Ingredient.new({ name: "Maraconi", unit: "oz", calories: 200 }) }

    it 'has a name' do
        expect(ingredient1.name).to eq "Cheese"
    end

    it 'has a unit' do
        expect(ingredient1.unit).to eq "oz"
    end

    it 'has calories' do
        expect(ingredient1.calories).to eq 50
    end
end