# Add your code here
require 'pry'

def help 
  first_line="I accept the following commands:"
  second_line="- help : displays this help message"
  third_line="- list : displays a list of songs you can play"
  fourth_line = "- play : lets you choose a song to play"
  fifth_line = "- exit : exits this program"
  puts first_line+"\n"
  puts second_line+"\n"
  puts third_line+"\n"
  puts fourth_line+"\n"
  puts fifth_line
end

#=============
def list(songs)
  #def summon_captain_planet(planeteer_calls)
  #planeteer_calls.map{|item|item.capitalize+"!"}
  songs.each_with_index{|item,index| 
  puts (index+1).to_s+". "+item}
end

#=============
def prompt_user
  # code #prompt_user here
  puts "Please enter a song name or number:"
end

def play(songs) 
  prompt_user
  user_input = gets.strip
  name_of_the_song_requested=nil
  songs.each_with_index{|item,index| 
  if (user_input.to_i == index+1) || (user_input==item)
    name_of_the_song_requested=item
  end
  }
  if name_of_the_song_requested==nil
    puts "Invalid input, please try again"
  else
    puts "Playing "+name_of_the_song_requested
  end
end

#=============
def exit_jukebox
  puts "Goodbye"
end

#MAIN=====

def prompt_user_from_run
  # code #prompt_user here
  puts "Please enter a command:"
end

def run(songs)
  prompt_user_from_run
  user_input=gets.strip
  #binding.pry
  if user_input=="help"
    help
    user_input=nil
    run(songs)
    elsif user_input=="play"
    play(songs)
    run(songs)
    elsif user_input=="list"
    list(songs)
    run(songs)
    elsif user_input=="exit"
    exit_jukebox
    else
      puts "Invalid command, please try again"
      run(songs)
  end
end

#Basri tests - remove before running learn/tests/rspec
#songs = ["Phoenix - 1901","Tokyo Police Club - Wait Up","Sufjan Stevens - Too Much","The Naked and the Famous - Young Blood","(Far From) Home - Tiga","The Cults - Abducted","Phoenix - Consolation Prizes","Harry Chapin - Cats in the Cradle","Amos Lee - Keep It Loose, Keep It Tight"]
#help
#list(songs)
#play(songs)
#exit_jukebox
#run(songs)