require 'colorize'
require'pry'
class Clicentral
  def start
    Scraper.new.fetch
    Recipe.all.each do |recipe|
      attribute_hash=Scraper.new.add_attributes(recipe.each_url)
      recipe.add_recipe_attributes(attribute_hash)
    end

    puts "Welcome to top 49 Chinese food recipes!".bold.magenta
    puts "---------------------------------------".green
    puts "---------------------------------------".green
    input =""
    while input!="exit"
      puts "Please choose an option(1~6) from the following menu.".bold.magenta
      menu
      input =gets.strip    
      
      case input.to_i
        when 1
          random_recipe
        when 2
          choose_from_all
        when 3 
          choose_from_veggie_options
        when 4
          choose_by_cooking_time
        when 5
          choose_by_difficulty
        when 6
          input ="exit"
      end 
    end
    puts "Thanks for using,happy cooking!".bold.magenta
  end    
end