
class Game
  def initialize
    @score = 0
    @rooms = [
      {name: "Room 1", points: 5},
      {name: "Room 2", points: 10},
      {name: "Room 3", points: 15}
    ]
  end

  def play
    puts "Welcome to the Text-Based Game!"
    puts "Collect points by entering rooms. Exit anytime by typing 'exit'.\n\n"

    loop do
      display

      input = gets.chomp.downcase

      case input
      when "1", "2", "3"
        enter_room(input.to_i)
      when "exit"
        break
      else
        puts "Invalid input. Please enter a valid room number or exit."
      end
    end

  private

  def display_menu
    puts "Choose a room to enter: "
    @rooms.each_with_index do |room, index|
      puts "#{index + 1}. #{room[:name]} (#{room[:points]} points)"
    end
    print ">"
  end

  def enter_room(room_number)
    room_index = room_number - 1
    room = @rooms[room_index]

    puts "\nEntering #{room[:name]}..."
    puts "You've collected #{room[:points]} points!\n\n"

    @score += room[:points]
  end
end

Game.new.play
end
