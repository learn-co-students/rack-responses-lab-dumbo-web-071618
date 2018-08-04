class Application
  def call(env)
    resp = Rack::Response.new
    t = Time.new
    t2 = Time.new + (60*60*10)

    if t.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    if t2.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end


    resp.finish
  end
end
