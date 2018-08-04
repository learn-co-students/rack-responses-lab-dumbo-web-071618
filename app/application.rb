class Application
  def call (env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(01..24)
    num_2 = Kernel.rand(00..59)

    hour = Time.new(2018,8,4,num_1,num_2)

    if num_2 >= 12
      time = "afternoon"
      resp.write "Good Afternoon!\n\n"
    else
      time = "morning"
      resp.write "Good Morning!\n\n"
    end

    resp.write "The time is #{num_1}:#{num_2} in the #{time}.\n\n"

    resp.write hour

    resp.finish
  end
end
