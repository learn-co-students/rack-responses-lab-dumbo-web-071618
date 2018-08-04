class Application
  def call (env)
    resp = Rack::Response.new

    time = Time.now
    time.hour
    resp.write "#{time}\n"

    if time.hour < 12
      resp.write "\nGood Morning!"
    elsif time.hour > 12
      resp.write "\nGood Afternoon!"
    end

    resp.finish
  end
end
