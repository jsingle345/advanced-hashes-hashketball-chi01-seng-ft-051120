# Write your code below game_hash
require "pry"

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(name)
  game_hash.each do |team_name, value|

  value[:players].each do |player_hash|
      if player_hash[:player_name] == name
         return player_hash[:points]
      end
  end
 end
end


def shoe_size(name) 
  
 game_hash.each do |team_name, value|
   value[:players].each do |player_hash|
     if player_hash[:player_name] == name
       return player_hash[:shoe]
     end 
  end 
 end
end

          
def team_colors(name)
  
  game_hash.each do |place, team|
    if team[:team_name] == name
    return team[:colors]
    end
  end
end

def team_names 
  pair_ofteams = []
  
  game_hash.each do |team_hash, place|
  pair_ofteams << place[:team_name]
  end
  pair_ofteams
end


def player_numbers(name)
  jerseys_num = []
  
  game_hash.each do |location, teams|
    teams.each do |team_info, data|
      if data == name 
      game_hash[location][:players].each do |player|
        jerseys_num << player[:number]
      end
      end
    end
  end 
  jerseys_num
end


def player_stats(player_name)
player_stats = {}

 game_hash.each do |location, team|
   team.each do |team_info, info_data|
    if team_info == :players 
      game_hash[location][team_info].each do |player_data|
        
       if player_data[:player_name] == player_name
        #player_stats = player_data.delete_if {|key, value| key == :player_name }   
        player_stats = player_data
       end  
      end  
    end 
   end 
 end 
 player_stats
end 


def big_shoe_rebounds 
  large_shoe = 0
  get_boards = 0
  
  game_hash.each do |location, team|
    team[:players].each do |player|
      
      if player[:shoe] > large_shoe
      large_shoe = player[:shoe]
      end
      
      if player[:shoe] == large_shoe
      get_boards = player[:rebounds]
      end
    end
  end
  get_boards
end



 