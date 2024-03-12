class Game
  def initialize
    @rooms = {
      "Room 1" => 5,
      "Room 2" => 10,
      "Room 3" => 15
    }
    @total_points = 0
  end

  def play
    puts "Welcome to the Adventure Game!"
    puts "You have 0 points."
    loop do
      display_menu
      choice = gets.chomp.downcase
      case choice
      when "1", "2", "3"
        enter_room(choice.to_i)
      when "exit"
        break
      else
        puts "Invalid choice. Please enter a valid room number or 'exit'."
      end
    end
    puts "Game over! You collected a total of #{@total_points}"
  end

  private

  def display_menu
    puts "Choose a room (1-3) to enter or 'exit' to end the game."
  end

  def enter_room(room_number)
    room_name = "Room #{room_number}"
    points = @rooms[room_name]
    puts "You entered #{room_name} and earned #{points}"
    @total_points += points
  end
end

# Start the game
game = Game.new
game.play
