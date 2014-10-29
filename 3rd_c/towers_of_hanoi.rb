class Towers_of_Hanoi

  def collum_1
    collum_1 = []
    @level.times do |i|
      collum_1 << i+1
    end
    collum_1
  end

  def initialize(level)
    @level = level
    @board = {
      1 => collum_1,
      2 => [],
      3 => []
    }
  end

  def print_board(collum_1, collum_2, collum_3,level)

    def fill_printable(level, collum)

      p_collum = Array.new(level,' ')

      i = collum.count
      collum.each do |item|
        p_collum[level-i] = item
        i -= 1
      end
      p_collum
    end

    p_collum_1 = fill_printable(level,collum_1)
    p_collum_2 = fill_printable(level,collum_2)
    p_collum_3 = fill_printable(level,collum_3)


    level.times do |i|
      puts "| #{p_collum_1[i].to_s} | #{p_collum_2[i].to_s} | #{p_collum_3[i].to_s} |"
      #i += 1
    end

  end

  def option(options, board)

    puts 'Enter no option to exit'
    print "Choose a collum #{options.compact} to make a move: "
    option_player = gets.chomp

    if options.include?(option_player)
      return option_player.to_i
    elsif option_player == ''
      puts 'Bye bye!'
      return false
    else
      puts '*************************************************'
      puts '*   ivalid movement! try with another collum    *'
      puts '*************************************************'
      puts
      print_board(board[1], board[2], board[3], @level)
      puts
      option(options, board)
    end

  end

  def start

  puts
  puts '**** Towers of Hanoi ****'
  puts 'the game consists in pass'
  puts 'all the elements of the first collum'
  puts 'to the las collum.'
  puts 'you can only put an small element'
  puts 'over a big one'
  puts
  puts 'This is your board. Let\'s begin'
  puts

    while true

      puts
      print_board(@board[1], @board[2], @board[3], @level)
      puts

      options = []
      3.times do |i|
        options[i] = (i+1).to_s if @board[i+1] != []
      end

      key_from = option(options, @board)
      if key_from == false
        break
      end

      options = []
      3.times do |i|
        options[i] = (i+1).to_s unless (i+1) == key_from
      end

      key_to = option(options,@board)
      if key_to == false
        break
      end

      collum_from = @board[key_from]
      collum_to = @board[key_to]

      item = collum_from.first
      if (collum_to == [] or item < collum_to.first) && collum_to.count < @level
        collum_from.shift
        collum_to.unshift(item)
      else
        puts '*************************************************'
        puts '*   ivalid movement! try with another collum    *'
        puts '*************************************************'
        puts
      end

      @board[key_from] = collum_from
      @board[key_to] = collum_to

      if @board[3].count == @level
        puts
        puts '    *************'
        puts '    * You won!! *'
        puts '    *************'
        puts
        print_board(@board[1], @board[2], @board[3], @level)
        puts
        puts 'Try with the next level'
        break
      end
    end
  end
end
