# #Instructions
# Your application should only accept the /items/<ITEM NAME> route. Everything else should 404

# If a user requests /items/<Item Name> it should return the price of that item

# IF a user requests an item that you don't have, then return a 400 and an error message
require 'pry'
class Application 

    @@items = []

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path=="/items/" 
            item_name = req.params["items"]
            binding.pry
            item_name

        end# if ender


        
        
        
        
        
        
    end#def ender

end#class ender