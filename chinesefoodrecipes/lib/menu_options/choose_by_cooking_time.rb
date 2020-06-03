def choose_by_cooking_time
  choice = ""
  while choice != "exit"
    puts "Please type in maximum mins(10~60) you are willing to spend, or tpye exit to return to the menu.".green
    choice = gets.strip
    if choice.to_i.between?(10,60)
      recipes = Time.new.time(choice)
      number = ""
      while number != "exit"
        puts "Please choose the dish number of your interest as listed,or type exit to return to choose time.".green
        number = gets.strip
        while (number.to_i-1).between?(0,recipes.size-1)
          puts "#{recipes[number.to_i-1].name}".bold.magenta.on_light_blue
          puts ""
          puts "Description:".bold.magenta.on_light_blue + "  " + "#{recipes[number.to_i-1].description}"
          puts "------------------------------------".green
          puts "------------------------------------".green
          puts "Ingredients:".bold.magenta.on_light_blue
          recipes[number.to_i-1].ingredients.each_with_index do |ingredient, index|
            puts "         " + "#{index+1}.  #{ingredient}"
          end
          puts "------------------------------------".green
          puts "------------------------------------".green
          puts "Cooking steps:".bold.magenta.on_light_blue
          recipes[number.to_i-1].steps.each_with_index do |step, index|
            puts "         " + "#{index+1}.  #{step}"
          end
          puts "------------------------------------".green
          puts "------------------------------------".green
          puts ""
          puts "Would you like another one? or type exit to return to choose time.".green
          puts ""
          Time.new.time(choice)
          number = gets.strip
        end
      end
    end
  end
end
