require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'

describe Recipe do
    let(:ingredient1) { Ingredient.new({name: "Cheese", unit: "C", calories: 100}) }
    let(:ingredient2) { Ingredient.new({name: "Macaroni", unit: "oz", calories: 30}) }
    let(:recipe1) { Recipe.new("Mac and Cheese") }
    it 'exists' do
        expect(recipe1).to be_instance_of Recipe
    end

    it 'has a name' do
        expect(recipe1.name).to eq "Mac and Cheese"
    end

    it 'knows what ingredients are required' do
        expect(recipe1.ingredients_required).to eq {}
    end

    it 'can add ingredients' do
        recipe1.add_ingredient(ingredient1, 2)
        recipe1.add_ingredient(ingredient1, 4)
        recipe1.add_ingredient(ingredient2, 8)

        expect(recipe1.ingredients_required).to eq {ingredient1: 6, ingredient: 8}
        expect(recipe1.ingredients).to eq {ingredient1, ingredient2}
    end