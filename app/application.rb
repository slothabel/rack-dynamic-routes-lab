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

        if req.path.match(/items/)
            # path = req.path
            # binding.pry
            item_name = req.path.split("/items/").last 
            check_item(item_name, resp)
        else
            resp.write "Route not found"
            resp.status = 404
        end# if ender
        resp.finish
        
    end#def ender

    def check_item(item, resp)

        if found_item = @@items.find{|i| i.name == item}
            resp.write found_item.price
        else
            resp.write "Item not found"
            resp.status = 400
        end
    end


end#class ender