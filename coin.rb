@combinations = {}

def change_possibilities_top_down(amount_left, denominations_left)
  # base cases:
  # we hit the amount spot on. yes!
  return 1 if amount_left == 0
  # we overshot the amount left (used too many coins)
  return 0 if amount_left < 0
  # we're out of coins
  return 0 if denominations_left.length == 0
  # avoids checking the same combinations
  return 0 if @combinations[amount_left] == denominations_left

  puts "checking ways to make #{amount_left} with #{denominations_left}"

  # choose a current_coin
  current_coin, rest_of_coins = denominations_left[0], denominations_left[1..-1]

  #saving history
  @combinations[current_coin] = denominations_left

  # see how many possibilities we can get
  # for each number of times to use current_coin
  num_possibilities = 0
  while amount_left >= 0  
    num_possibilities += change_possibilities_top_down(amount_left, rest_of_coins)
    amount_left -= current_coin
    # puts
    # puts "This is the amount left: #{amount_left} and the current_coin: #{current_coin}"
    # puts "This is the rest of the coins: #{rest_of_coins}"
  end

  return num_possibilities
end

change_possibilities_top_down(4, [1,2,3])