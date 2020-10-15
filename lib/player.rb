class Player
    #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  
    attr_reader  :name, :value
    def initialize(value)
      #DONE TO DO : doit régler son nom et sa valeur
      @name = self.getName
      @value = value
      puts "le joueur #{@name} a les #{@value}"
    end
    def getName
        puts "quel est ton nom"
        r = gets.chomp
        r[0] = r[0].upcase
        return r
    end

end