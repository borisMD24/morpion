class Show

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    system("clear")
    for i in 0..board.length-1 do
      puts "|-----------|".colorize(:black).colorize( :background => :white)
      self.print_line board[i]
    end
    puts "|-----------|".colorize(:black).colorize( :background => :white)
  end
  def print_line(line)
    for i in 0..line.length-1 do
      print "|".colorize(:black).colorize( :background => :white)
      if line[i].value == nil
        print "   ".colorize( :background => :white)
      else
        if line[i].value == "X"
          print (" " + line[i].value + " ").colorize(:red).colorize( :background => :white)
        else
          print (" " + line[i].value + " ").colorize(:green).colorize( :background => :white)
        end
      end
    end
    print "|".colorize(:black).colorize( :background => :white)
    print "\n"
  end
end
  
