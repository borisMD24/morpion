class BoardCase
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    attr_accessor :coord, :value
    def initialize(coord, value)
      @coord = nil
      @value = nil
    end
    def change_value(value)
      if self.value == nil
        @value = value
        return true
      else
        return false
      end
    end
end