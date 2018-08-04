class Application

  def call(env)
    time = Time.now
    resp = Rack::Response.new

    if time.hour < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

    resp.finish
  end

end
