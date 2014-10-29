def wonky_coins(n)

  result = 0

  if n == 0
    return 1
  else
    coins = [n/2,n/3,n/4]
  end

  result = coins.inject(0) {|sum, item| sum + wonky_coins(item)}

end
