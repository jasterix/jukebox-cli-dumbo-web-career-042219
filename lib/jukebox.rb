songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}"
# end
# puts "Enter your name:"
# username= gets.chomp

# puts say_hello(username)

def help
  puts "(I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program)"
end

def list(songs)
  songs.each_with_index{|song, index|
    puts "#{index+1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  
  if (1..9).include?(response.to_i)
    song = songs[response.to_i-1]
    puts "Playing #{song}"
    elsif songs.include?(response)
      puts "Playing #{response}"
    else
    puts "Invalid input, please try again"  
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs)
  # should call on the help method to show the user the available commands
  command = "" 
  while command  
  puts "Please enter a command:"
  command = gets.chomp
  case command
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "help"
    help
  when "exit"
    exit_jukebox
    break
  end
end
  end