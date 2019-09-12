def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  index = 0
  # for snack in person[:favourites][:snacks]
  # if person[:favourites][:snacks][index] == food
  #   p person[:favourites][:snacks][index]
  #   return true
  #   index +=1
  # end
  while index < person[:favourites][:snacks].length
    if person[:favourites][:snacks][index] == food
      return true
    end
  index +=1
end
return false
end

def add_friend(person, name)
  person[:friends].push(name)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  person[:friends]
end

def total_money(people)
  index = 0
  total = 0
  while index < people.length

      total += people[index][:monies]
      index +=1
    end
  return total
end

def lending_money(lender, lendee, amount)
  lendee[:monies] += amount
  lender[:monies] -= amount
end

def all_favourite_foods(people)
  index = 0
  new_array = []
  while index < people.length()
    new_array.concat(people[index][:favourites][:snacks])
    index += 1
  end
  # new_array2 = []
  # index = 0
  # while index < new_array.length()
  #   new_array2.push (new_array.delete(index))
  #   index +=1
  # end
  # p new_array2
  #  new_array3 = []
  #  index = 0
  #  while index < new_array2.length()
  #    new_array3.push( new_array2.delete(index))
  #    index +=1
  #  end
   return new_array

end
