def choose_by_difficulty
    choice=""
    while choice!="exit"
      puts "Please type in difficulty level: Easy or Medium, or tpye exit to return to the menu."
      choice=gets.strip
      
      if choice.downcase.capitalize=="Easy" 
        Difficulty.new.difficulty(choice.downcase.capitalize)
        number=""
        while number!="exit"
          puts "Please choose the dish number of your interest(1~36),or type exit to return to choose difficulty."
          number=gets.strip
          while (number.to_i-1).between?(0,35)
            puts "#{Difficulty.all[number.to_i-1].name}".magenta
            puts "Description:  "+ "#{Difficulty.all[number.to_i-1].description}"
            puts "------------------------------------"
            puts "------------------------------------"
            puts "Ingredients:"
            Difficulty.all[number.to_i-1].ingredients.each_with_index do |ingredient, index|
              puts "         " + "#{index+1}.  #{ingredient}"
            end
            puts "------------------------------------"
            puts "------------------------------------"
            puts "Cooking steps:  "
            Difficulty.all[number.to_i-1].steps.each_with_index do |step, index|
              puts "         " + "#{index+1}.  #{step}"
            end
            puts "Would you like another one?(1~36) or type exit to return to choose difficulty."
            number =gets.strip
          end
        end
      end

      if choice.downcase.capitalize=="Medium" 
        Difficulty.new.difficulty(choice.downcase.capitalize)
        number=""
        while number!="exit"
          puts "Please choose the dish number of your interest(1~13),or type exit to return to choose difficulty."
          number=gets.strip
          while (number.to_i-1).between?(0,12)
            puts "#{Difficulty.all[number.to_i-1].name}".magenta
            puts "Description:  "+ "#{Difficulty.all[number.to_i-1].description}"
            puts "------------------------------------"
            puts "------------------------------------"
            puts "Ingredients:"
            Difficulty.all[number.to_i-1].ingredients.each_with_index do |ingredient, index|
              puts "         " + "#{index+1}.  #{ingredient}"
            end
            puts "------------------------------------"
            puts "------------------------------------"
            puts "Cooking steps:  "
            Difficulty.all[number.to_i-1].steps.each_with_index do |step, index|
              puts "         " + "#{index+1}.  #{step}"
            end
            puts "Would you like another one?(1~13) or type exit to return to choose difficulty."
            number =gets.strip
          end
        end
      end
    end
end