### ARRAYS ###
# 1st team
@arr1 = Array.new(10, 1)
# 2nd team
@arr2 = Array.new(10, 1)

### Atack ###
# using array
def attack(arr)
  sleep 1 # to slow down our app
  i = rand(0..9)
  if arr[i] == 1
    arr[i] = 0
    puts "Robot ##{i} is terminated!"
  else
    puts "Cell ##{i} is empty."
  end
  sleep 1 # to slow down our app
end

### check victory

def victory?
  robots_left1 = @arr1.count { |x| x == 1 }
  robots_left2 = @arr2.count { |x| x == 1 }

  if robots_left1 == 0
    puts "Team 2 won, #{robots_left2} robots letf:\t#{@arr2.inspect}"
    return true
  end

  if robots_left2 == 0
    puts "Team 1 won, #{robots_left1} robots letf:\t#{@arr1.inspect}"
    return true
  end

  false
end

### statistics ###
def stats
  # robots that are still alive
  cnt1 = @arr1.count { |x| x == 1 }
  cnt2 = @arr2.count { |x| x == 1 }
  puts "Team #1: #{cnt1} robots:\t#{@arr1.inspect}"
  puts "Team #2: #{cnt2} robots:\t#{@arr2.inspect}"
end

### main cycle ###

loop do
  puts "\tTeam #1 atacks..."
  attack(@arr2)
  exit if victory?
  stats
  sleep 1
  puts # пустая строка

  puts "\tTeam #2 atacks..."
  attack(@arr1)
  exit if victory?
  stats
  sleep 1
  puts
end