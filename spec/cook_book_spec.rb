require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'
require './lib/pantry'

describe CookBook do
    let(:cookbook) { CookBook.new }
    let(:recipe1) { Recipe.new("Mac and Cheese") }
    let(:recipe2) { Recipe.new("Cheese Burger")}
    let(:ingredient1) { Ingredient.new({name: "Cheese", unit: "C", calories: 100}) }
    let(:ingredient2) { Ingredient.new({name: "Macaroni", unit: "oz", calories: 30}) }
    let(:ingredient3) { Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})}
    let(:ingredient4) { Ingredient.new({name: "Bun", unit: "g", calories: 75})}

    describe 'status' do

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

    describe 'ingredients' do

        before do

        recipe1.add_ingredient(@ingredient1, 2)
        recipe1.add_ingredient(@ingredient2, 8)
        recipe2.add_ingredient(@ingredient1, 2)
        recipe2.add_ingredient(@ingredient3, 4)
        recipe2.add_ingredient(@ingredient4, 1)
        cookbook.add_recipe(@recipe1)
        cookbook.add_recipe(@recipe2)

        end

        it 'can return the ingredients of all recipes' do
            cookbook.add_recipe(recipe1)
            cookbook.add_recipe(recipe2)

            expect(cookbook.ingredients).to eq ["Cheese", "Macaroni", "Ground Beef", "Bun"]
        end

        xit 'can return the highest calorie recipe' do
            expect(cookbook.highest_calorie_meal).to eq recipe1
        end

        xit 'knows if the pantry has enough ingredients for a recipe' do
            pantry.restock(ingredient1, 5)
            pantry.restock(ingredient1, 10)

            expect(pantry.enough_ingredients_for?(recipe1)).to eq false

            pantry.restock(ingredient2, 7)

            expect(pantry.enough_ingredients_for?(recipe1)).to eq false

            pantry.restock(ingredient2, 1)

            expect(pantry.enough_ingredients_for?(recipe1)).to eq true
        end
    end
end
