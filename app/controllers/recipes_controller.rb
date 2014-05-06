class RecipesController < ApplicationController


  def yummly_search_result(user_pantry, max_results)
    result = Yummly.search(user_pantry, max_results)
    result.matches
  end

  def show
    @user = current_user
    @top_recipes = current_user.sort_recipes_by_ingredients(10) #=> hard coded, changes number of recipes
    @recipe_objects = current_user.sort_recipes_by_percentage(@top_recipes)
  end

  def create
    api_result = yummly_search_result('cake', {maxResult: 1000}) #=> hard coded, change ingredient and number of recipes
    api_result.length.times do
      Recipe.create(new_recipe_from_yummly(api_result))
      new_recipe_from_yummly(api_result)[:components].each do |ingredient|
        Ingredient.create(name: ingredient)
      end
      api_result.pop
    end
    # @top_recipes = current_user.sort_recipes_by_ingredients
    # redirect_to user_

     render nothing: true #REMEMBER TO TAKE THIS OUT; ONLY FOR TEST PURPOSES
  end

end
