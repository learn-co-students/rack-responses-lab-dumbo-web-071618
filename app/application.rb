class Application
    def call(env)
        response = Rack::Response.new
        if Time.now.hour < 12
            response.write "Good Morning!"
        else
            response.write "Good Afternoon!"
        end
        response.finish
    end
end