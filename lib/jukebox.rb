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

def help_method
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list_method(songs)
  songs.each_with_index{|song, i| puts "#{i}+1: #{song}"}
end

def play_method(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if songs.each_with_index.include?(user_response)
    puts "Playing #{songs.select(&:include?(user_response))}"
  else
    puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run_method
  help_method
  puts "Please enter a command:"
  user_response = gets.strip