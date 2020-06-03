def choose_by_difficulty
  choice = ""
  while choice != "exit"
    puts "Please type in difficulty level: Easy or Medium, or tpye exit to return to the menu.".green
    choice = gets.strip
    if choice.downcase.capitalize == "Easy" 
      difficulties = Difficulty.new.difficulty(choice.downcase.capitalize)
      number = ""
      while number != "exit"
        puts "Please choose the dish number of your interest(1~36),or type exit to return to choose difficulty.".green
        number = gets.strip
        while (number.to_i-1).between?(0,35)
          puts "#{difficulties[number.to_i-1].name}".bold.magenta.on_light_blue
          puts ""
          puts "Description:".bold.magenta.on_light_blue + "  " + "#{difficulties[number.to_i-1].description}"
          puts "------------------------------------".green
          puts "------------------------------------".green
          puts "Ingredients:".bold.magenta.on_light_blue
          difficulties[number.to_i-1].ingredients.each_with_index do |ingredient, index|
            puts "         " + "#{index+1}.  #{ingredient}"
          end
          puts "------------------------------------".green
          puts "------------------------------------".green
          puts "Cooking steps:".bold.magenta.on_light_blue
          difficulties[number.to_i-1].steps.each_with_index do |step, index|
            puts "         " + "#{index+1}.  #{step}"
          end
          puts ""
          puts "Would you like another one?(1~36) or type exit to return to choose difficulty.".green
          puts ""
          Difficulty.new.difficulty(choice.downcase.capitalize)
          number = gets.strip
        end
      end
    end
    if choice.downcase.capitalize == "Medium" 
      difficulties = Difficulty.new.difficulty(choice.downcase.capitalize)
      number = ""
      while number != "exit"
        puts "Please choose the dish number of your interest(1~13),or type exit to return to choose difficulty.".green
        number = gets.strip
        while (number.to_i-1).between?(0,12)
          puts "#{difficulties[number.to_i-1].name}".bold.magenta.on_light_blue
          puts ""
          puts "Description:".bold.magenta.on_light_blue + "  " + "#{difficulties[number.to_i-1].description}"
          puts "------------------------------------".green
          puts "------------------------------------".green
          puts "Ingredients:".bold.magenta.on_light_blue
         difficulties[number.to_i-1].ingredients.each_with_index do |ingredient, index|
            puts "         " + "#{index+1}.  #{ingredient}"
          end
          puts "------------------------------------".green
          puts "------------------------------------".green
          puts "Cooking steps:".bold.magenta.on_light_blue
          difficulties[number.to_i-1].steps.each_with_index do |step, index|
            puts "         " + "#{index+1}.  #{step}"
          end
          puts ""
          puts "Would you like another one?(1~13) or type exit to return to choose difficulty.".green
          puts ""
          Difficulty.new.difficulty(choice.downcase.capitalize)
          number =gets.strip
        end
      end
    end
  end
end