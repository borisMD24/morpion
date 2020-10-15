class Game
    #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor :current_player, :status, :board
    def initialize
      #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
      @players = []
      @players.push Player.new("X"), Player.new("O")
      @current_player
      @status = "on_going"
      @turn = true
      @board = Board.new()
    end
    def turn
      #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
      if @turn
        @current_player = @players[0]
        @turn = false
      else
        @current_player = @players[1]
        @turn = true
      end
      @board.play_turn(@current_player)
    end
    def status_changer
        victory = @board.victory
        if @board.victory != false
            if victory == @players[0].value
                @status = @players[0]
            elsif victory == @players[1].value
                @status = @players[1]
            else
                @status = nil
            end
        end
    end
    def new_round
      @board = Board.new()
    end
  
    def game_end
      if @status == nil
        puts "personne n'a gagne :/"
      else
        puts "le joueur #{@status.name} (les #{@status.value}) a gagne!"
      end
    end    
  
end