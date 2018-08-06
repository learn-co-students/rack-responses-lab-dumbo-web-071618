# require 'pry'

class Time

  def morning?
    hour < 12
  end

  def afternoon?
    hour >= 12
  end
end

# binding.pry
#
