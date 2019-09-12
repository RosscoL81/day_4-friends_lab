require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Shaggy",
      age: 12,
      monies: 1,
      friends: ["Velma","Fred","Daphne", "Scooby"],
      favourites: {
        tv_show: "Friends",
        snacks: ["charcuterie"]
      }
    }

    @person2 = {
      name: "Velma",
      age: 15,
      monies: 2,
      friends: ["Fred"],
      favourites: {
        tv_show: "Baywatch",
        snacks: ["soup","bread"]
      }
    }

    @person3 = {
      name: "Scooby",
      age: 18,
      monies: 20,
      friends: ["Shaggy", "Velma"],
      favourites: {
        tv_show: "Pokemon",
        snacks: ["Scooby snacks"]
      }
    }

    @person4 = {
      name: "Fred",
      age: 18,
      monies: 20,
      friends: ["Shaggy", "Velma", "Daphne"],
      favourites: {
        tv_show: "X-Files",
        snacks: ["spaghetti", "ratatouille"]
      }
    }

    @person5 = {
      name: "Daphne",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "X-Files",
        snacks: ["spinach"]
      }
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  # 1. For a given person, return their name
  def test_getting_name
    result = get_name(@person5)
    assert_equal("Daphne", result)
  end

  # 2. For a given person, return their favourite tv show
  # (e.g. the function favourite_tv_show(@person2) should return the string "Baywatch")
  def test_favourite_tv_show
    result = favourite_tv_show(@person2)
    actual = "Baywatch"
    assert_equal(actual, result)
  end

  # 3. For a given person, check if they like a particular food
  # (e.g. the function likes_to_eat(@person2, "bread") should return true, likes_to_eat(@person3, "spinach") should return false)
  def test_liked_food
    result = likes_to_eat(@person2, "bread")
    actual = true
    assert_equal(actual, result)
  end



  # 4. For a given person, add a new name to their list of friends
  # (e.g. the function add_friend(@person2, "Scrappy-Doo") should add Scrappy-Doo to the friends.)
  # (hint: This function should not return anything. After the function call, check for the length of the friends array to test it!)
  def test_add_friend
    result = add_friend(@person2, "Scrappy-Doo").length
    actual = 2
    assert_equal(actual, result)
  end

  # 5. For a given person, remove a specific name from their list of friends
  # (hint: Same as above, testing for the length of the array should be sufficient)
  def test_remove_friend
    result = remove_friend(@person4, "Shaggy").length
    actual = 2
    assert_equal(actual, result)
  end
  # 6. Find the total of everyone's money
  # (hint: use the @people array, remember how we checked the total number of eggs yesterday?)
  def test_total_money
    result = total_money(@people)
    actual = 143
    assert_equal(actual, result)
  end


  # 7. For two given people, allow the first person to loan a given value of money to the other
  # (hint: our function will probably need 3 arguments passed to it... the lender, the lendee, and the amount for this function)
  # (hint2: You should test if both the lender's and the lendee's money have changed, maybe two assertions?)
  def test_lending_money__returns_lendee_balance
    lending_money(@person5, @person1, 10)
    actual1 = @person1[:monies]
    expected1 = 11
    actual2 = @person5[:monies]
    expected2 = 90
    assert_equal(expected1, actual1)
    assert_equal(expected2, actual2)
  end



  # 8. Find the set of everyone's favourite food joined together
  # (hint: concatenate the favourites/snack arrays together)
  def test_all_favourite_foods
    actual = all_favourite_foods(@people)
    expected = ["charcuterie", "soup","bread","Scooby snacks","spaghetti", "ratatouille","spinach"]
    assert_equal(expected, actual)
  end

  # 9. Find people with no friends
  # (hint: return an array, there might be more people in the future with no friends!)
  def test_no_friends
    
end