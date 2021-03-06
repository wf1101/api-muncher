class Recipe
  attr_reader :name, :uri, :image, :ingridients, :calories, :dietlabels, :url

  def initialize(raw_recipe)
    if raw_recipe.nil? || raw_recipe["uri"].nil? || raw_recipe["label"].nil?
      raise ArgumentError.new("Not enough info")
    end

    @name = raw_recipe["label"]
    @uri = raw_recipe["uri"]
    @image = raw_recipe["image"]
    @ingredients = raw_recipe["ingredientLines"]
    @calories = raw_recipe["calories"]
    @dietlabels = raw_recipe["dietLabels"]
    @url = raw_recipe["url"]
  end



end
