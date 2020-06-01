require_relative './scraper.rb'
require_relative './difficulty.rb'
require_relative './time.rb'
require_relative './menu_options/random_recipes.rb'
require_relative './menu_options/choose_from_all.rb'
require_relative './menu_options/list_all_dishes.rb'
require_relative './menu_options/menu.rb'
require_relative './menu_options/choose_by_difficulty.rb'
require_relative './menu_options/choose_by_cooking_time.rb'
require 'colorize'
require'pry'
class Clicentral
  
  def start
    Scraper.new.fetch
    Recipe.all.each do |recipe|
      attribute_hash=Scraper.new.add_attributes(recipe.each_url)
      recipe.add_recipe_attributes(attribute_hash)
    end

    puts "Welcome to top 49 Chinese food recipes!"
    input =""
    while input!="exit"
      puts "Please choose an option from the following menu."
      menu
      input =gets.strip    
      
      case input.to_i
        when 1
          choose_from_all
        when 2
          random_recipe
        when 3 
          choose_by_difficulty
        when 4
          choose_by_time
        when 5
        when 6
        when 7

        when 8
          input ="exit"
      end 
   
    end
    puts "Thanks for using,goodbye!"
  end    
end