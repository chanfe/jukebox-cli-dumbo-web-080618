#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
<<<<<<< HEAD
 "Go Go GO" => '/home/chanfe/jukebox-cli-dumbo-web-080618/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/home/chanfe/jukebox-cli-dumbo-web-080618/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/home/chanfe/jukebox-cli-dumbo-web-080618/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/home/chanfe/jukebox-cli-dumbo-web-080618/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => '/home/chanfe/jukebox-cli-dumbo-web-080618/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => '/home/chanfe/jukebox-cli-dumbo-web-080618/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/home/chanfe/jukebox-cli-dumbo-web-080618/jukebox-cli/audio/Emerald-Park/07.mp3'
=======
 "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
>>>>>>> 14f5cd44b08dbee9e99554f1e3395ca7864ca5df
 }

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"

end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
<<<<<<< HEAD
  my_songs.collect do |key, value|
    puts "#{key}"
=======
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
>>>>>>> 14f5cd44b08dbee9e99554f1e3395ca7864ca5df
  end
  
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  user_response = gets.chomp
<<<<<<< HEAD
  if my_songs.include?(user_response)
    system "open #{my_songs[user_response]}"
=======
  if songs.include?(user_response)
    puts "Playing #{user_response}"
  elsif user_response.to_i <= songs.length && user_response.to_i > 0
    puts "Playing #{songs[(user_response.to_i)-1]}"
>>>>>>> 14f5cd44b08dbee9e99554f1e3395ca7864ca5df
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  user_response = ""
  loop do
    puts "Please enter a command:"
    user_response = gets.strip
    if user_response == "help"
      help
    elsif user_response == "list"
      list(my_songs)
    elsif user_response == "play"
      play(my_songs)
    elsif user_response == "exit"
    exit_jukebox
      break
    else
      puts "Invalid command, please try again"
    end
  end
end
