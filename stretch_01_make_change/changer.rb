require 'pry'

class Changer

attr_accessor :change, :total

  def initialize(total = 0, change)
    @change = change
    @total = total
  end

  def self.make_change(total)
    new(total, change = []).counter
    # Must call counter from here not initialize so it returns the array from make_change in order to pass the test
  end

  def counter
    # While there is change to be given out...
    while true
      if self.total >= 25 then
        self.total -= return_change(self.total, 25)
      elsif total >= 10 then
        self.total -= return_change(self.total, 10)
      elsif total >= 5 then
        self.total -= return_change(self.total, 5)
      else
        self.total.times {self.change << 1}
        break
      end
    end
    # binding.pry
    return self.change
  end

  def return_change(total, coin)
    amount_of_coins = (total / coin)
    amount_of_coins.times {self.change << coin}
    return amount_of_coins * coin
  end

end

# Changer.make_change(47)
