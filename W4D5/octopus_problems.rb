
def sluggish_octopus(array)

    fishes.each_with_index do |fish_1, i|
        max_length = true
        
        fishes.each_with_index do |fish_2, j|
          if i == j
            next
          end
          if fish_2.length > fish_1.length
            max_length = false 
          end
        end
        
        if max_length
            return fis_1 
        end
    end
end 



# def dominant_octopus(fishes)

#     return fishes if fishes.length <=1 

#     middle = fishes.length / 2
#     left = fishes[0...middle]


# end



def clever_octopus(fishes)
    longest_fish = fishes[0]

    fishes.each do |fish|
      if fish.length > longest_fish.length
        longest_fish = fish
      end
    end
  
    longest_fish
end


# array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
#  'fiiiissshhhhhh']
# => "fiiiissshhhhhh"



def slow_dance(direction, tiles)
    tiles.each_with_index do |dir, i|
        if dir == direction
            return i 
        end
    end
end

p slow_dance("up", tiles_array)
#> 0

p slow_dance("right-down", tiles_array)
#> 3

#tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def constant_dance!(direction, tiles_hash)
    tiles_hash[direction]
end

p fast_dance("up", new_tiles_data_structure)
#> 0

p fast_dance("right-down", new_tiles_data_structure)
#> 3

