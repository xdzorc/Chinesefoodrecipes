class Time
    attr_accessor :name
    @@all =[]
  
  
    def time(choice)
      array=[]
      recipes_with_time =Recipe.all.reject {|recipe| recipe.cooking_time.include?("hr")}
      recipes_with_time.each_with_index do |recipe,index|
        if (recipe.cooking_time.split(" ")[0].to_i + recipe.prep_time.split(" ")[0].to_i)<= choice.to_i
          array << recipe
        end
      end
      array.each_with_index do |recipe,index|
        puts ("#{index+1}.  " +"#{recipe.name}").magenta
      end
      array
    end


       
    def self.all
      @@all
    end
end
