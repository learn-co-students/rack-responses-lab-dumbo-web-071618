class Application

  def call(env)
    resp = Rack::Response.new

    if  Time.now == Time.new(2015,11,27,9,30)
      resp.write "Morning"
    elsif Time.new(2015,11,27,14,30)
      resp.write "Afternoon"
  end
resp.finish
  end

end
