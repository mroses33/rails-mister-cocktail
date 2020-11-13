require 'json'
require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
text = JSON.parse(open(url).read)
ingredients = text["drinks"]

ingredients.each do |ingredient|
  Ingredient.create!(
    name: ingredient["strIngredient1"]
  )
end

