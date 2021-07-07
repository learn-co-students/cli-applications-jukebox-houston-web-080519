# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, place|
    place = place + 1
    puts "#{place}. #{song}"
  end
end

def play(songs)
    puts "Please enter a song name or number:"
    selection = gets.chomp
    songs.each.with_index do |title, index|
      track = "#{index+1}"
      if selection == title || selection == track
        puts "Playing #{title}"
      else
        puts "Invalid input, please try again"
      end
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  answer = ""
  until answer == "exit"
    answer = gets.chomp
    if answer == "list"
      list(songs)
    elsif answer == "play"
      play(songs)
    elsif answer == "exit"
      exit_jukebox
    end
  end
end