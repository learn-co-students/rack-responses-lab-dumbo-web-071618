# require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new

    # def morning?
    #   Time.hour < 12
    # end
    #
    # def afternoon?
    #   Time.hour >= 12
    # end
    time = Time.now.morning?
    # binding.pry
    if time
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon"
    end
    resp.finish
  end
end
