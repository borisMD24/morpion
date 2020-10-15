class Application
    def initialise()
      
    end
    def perform
      #DONE TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
        self.new_round
    end

    def new_round
      # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
      @game = Game.new()
      @show = Show.new()
      while @game.status == "on_going"
        @game.turn
        @game.status_changer
        @show.show_board(@game.board.cases)
      end
      self.game_end
    end
  
    def game_end
        # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
        @game.game_end
        puts "que voulez-vous faire?"
        puts "1 : une nouvelle partie"
        puts "2 : quitter"
        print "   >"
        a = gets.chomp
        if a == "1"
            self.new_round
        end
    end    
  
  
  end