require './lib/pantry'
require './lib/ingredient'

describe Pantry do

    let(:pantry) { Pantry.new }
    let(:ingredient1) { Ingredient.new({ name: "Cheese", unit: "oz", calories: 50 }) }
    let(:ingredient2) { Ingredient.new({ name: "Macaroni", unit: "oz", calories: 200 }) }

    it 'is an instance of Pantry' do
        expect(pantry).to be_instance_of Pantry
    end

    xit 'can check its stock' do
        expect(pantry.stock).to eq {}
    end

    it 'can check the quantity of a specific ingredient' do

        expect(pantry.stock_check(ingredient1)).to eq 0
    end

    it 'can restock ingredients' do
        pantry.restock(ingredient1, 5)
        pantry.restock(ingredient1, 10)
        pantry.restock(ingredient2, 7)

        expect(pantry.stock_check(ingredient1)).to eq 15
    end
end


