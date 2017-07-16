# Write your code here!
def game_hash
  game_hash = {
    :home => {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },"Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },"Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },"Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    :away => {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },"DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },"Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },"Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(name)
  game_hash.each do |k1, v1|
    game_hash[k1][:players].each do |k2, v2|
      if name == k2
        return game_hash[k1][:players][name][:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |k1, v1|
    game_hash[k1][:players].each do |k2, v2|
      if name == k2
        return game_hash[k1][:players][name][:shoe]
      end
    end
  end
end

def team_colors(team)
  newary = []
  game_hash.each do |k1, v1|
    if game_hash[k1][:team_name] == team
      newary = game_hash[k1][:colors]
    end
  end
  newary
end

def team_names
  newary = []
  game_hash.each do |k1, v1|
    newary << game_hash[k1][:team_name]
  end
  newary
end

def player_numbers(team)
  newary = []
  game_hash.each do |k1, v1|
    game_hash[k1].each do |k2, v2|
      if v2 == team
        game_hash[k1][:players].each do |k2, v2|
          game_hash[k1][:players][k2].each do |k3, v3|
            if k3 == :number
              newary << v3
            end
          end
        end
      end
    end
  end
  newary
end

def player_stats(player)
  newhash = Hash.new(0)
  game_hash.each do |k1, v1|
    game_hash[k1].each do |k2, v2|
      if k2 == :players
        game_hash[k1][:players].each do |k3, v3|
          if k3 == player
            newhash = game_hash[k1][:players][k3]
          end
        end
      end
    end
  end
  newhash
end

def big_shoe_rebounds
  maxsize = 0
  person = nil
  game_hash.each do |k1, v1|
    game_hash[k1].each do |k2, v2|
      if k2 == :players
        game_hash[k1][:players].each do |k3, v3|
          game_hash[k1][:players][k3].each do |k4, v4|
            if k4 == :shoe && v4 > maxsize
              maxsize = v4
              person = k3
            end
          end
          if k3 == person
            return game_hash[k1][:players][k3][:rebounds]
          end
        end
      end
    end
  end
end
