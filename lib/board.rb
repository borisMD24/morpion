
class Board
    #DONE TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  
    attr_accessor :cases, :players

    def initialize
      @turn = true
      #DONE TO DO :
      @cases = []
      #DONE Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      for i in 0..2 do
        @cases.push([])
        for j in 0..2 do
          @cases[i].push(BoardCase.new([i,j], "k"))
        end
      end
      #DONE Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    end
  
    def play_turn(value)
      valid = false
      #DONE TO DO : une méthode qui :
      #1) demande au bon joueur ce qu'il souhaite faire
      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
      while valid == false
        puts "au tour du joueur #{value.name} (les #{value.value})"
        puts "ou veux-tu jouer?"
        print "en x   >   "
        x = gets.to_i
        puts "\n"
        print "en y   >   "
        y = gets.to_i
        valid = @cases[x-1][y-1].change_value(value.value)
      end
    end
  
    def victory
      #DONE TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
      filled = 0
      for i in 0..2 do
        buffX = ""
        buffY = ""
        #contre les vampires
        countX = 0
        countY = 0
        for j in 0..2 do
          if @cases[i][j].value == buffX && @cases[i][j].value != nil
            countX += 1
          else
            buffX = @cases[i][j].value
          end
          if @cases[j][i].value == buffY && @cases[j][i].value != nil
            countY += 1
          else
            buffY = @cases[j][i].value
          end
          if @cases[i][j].value != nil
            filled += 1
          end
        end
        puts filled
        if countX == 2 
          return buffX
        elsif countY == 2 
          return buffY
        elsif filled == 9
          return "draw"
        end
      end
      buffX = ""
      buffY = ""
      countX = 0
      countY = 0
      for i in 0..2 do
        if @cases[i][i].value == buffX && @cases[i][i].value != nil
          countX += 1
        else
          buffX = @cases[i][i].value
        end
      end
      for h in 2..0 do
        if @cases[-h][h].value == buffY && @cases[-h][h].value != nil
          countY += 1
        else
          buffY = @cases[-h][h].value
        end
      end
      if countX == 2
        return buffX
      elsif countY == 2
      
        return buffY
      end
      return false
    end
  end