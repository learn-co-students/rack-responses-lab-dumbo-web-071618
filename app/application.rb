class Application
  def call env
    resp = Rack::Response.new
    # https://ruby-doc.org/core-2.1.5/Time.html#method-i-hour
    time = Time.now.hour

    if time < 12 # time between midnight and noon
      resp.write "Good Morning!"
    elsif time > 11 && time < 18 # time between noon and 6 PM
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
