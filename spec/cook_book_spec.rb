require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'
require './lib/pantry'

describe CookBook do
    let(:cookbook) { CookBook.new }
    let(:recipe1) { Recipe.new("Mac and Cheese") }
    let(:recipe2) { Recipe.new("Cheese Burger")}

    it 'is a CookBook' do
        expect(cookbook).to be_instance_of CookBook
    end

    it 'can store recipes' do
        expect(cookbook.recipes).to eq []

        cookbook.add_recipe(recipe1)
        cookbook.add_recipe(recipe2)

        expect(cookbook.recipes).to eq [recipe1, recipe2]
    end
end
