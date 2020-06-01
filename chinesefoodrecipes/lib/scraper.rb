require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative './recipe.rb'
class Scraper

  def fetch
    url ="https://food.ndtv.com/recipes/chinese-recipes"
    html =open(url)
    body =Nokogiri::HTML(html)
    recipes =body.css("li.main_image").slice(0,49)

    recipes.each do |recipe|
      recipe_hash={}
      recipe_hash[:name]=recipe.css("h2.recipe-image-header").text.strip
      recipe_hash[:each_url]=recipe.css("a").attribute("href").value
      Recipe.new(recipe_hash)
    end
  end 
  
  
  def add_attributes(url)
    profile=Nokogiri::HTML(open(url))
      attribute_hash={}
      attribute_hash[:description]=profile.css("div.recipe-details p").text.strip
      attribute_hash[:prep_time]=profile.css("time")[0].text.strip
      attribute_hash[:cooking_time]=profile.css("time")[1].text.strip
      attribute_hash[:difficulty_level]=profile.css("div.recipe-details").text
        if attribute_hash[:difficulty_level].include?("Easy")
           attribute_hash[:difficulty_level]="Easy"
        elsif attribute_hash[:difficulty_level].include?("Medium")
           attribute_hash[:difficulty_level]="Medium"
        elsif attribute_hash[:difficulty_level].include?("Difficult")
           attribute_hash[:difficulty_level]="Difficult"
        end
      attribute_hash[:ingredients]=profile.css("div.ingredients li").collect {|ingredient| ingredient.text.strip}
      attribute_hash[:steps]=profile.css("div.method.stylNew span").collect {|procedure| procedure.text.strip}
    attribute_hash

  end
end


       




