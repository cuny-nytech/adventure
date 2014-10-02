# File that defines locations in our game world.
# It will read configuration file in conf directory.
#
# Slavisa Djukic <Slavisa.Djukic15@myhunter.cuny.edu>
# Sep. 28, 2014.


class Location
  
  attr_reader :position, :description, :connections
  attr_accessor :items

  def initialize params
    @position = params["position"]
    @description = params["description"]
    @connections = params["connections"]
    @items = []
    @items.concat params["items"] if params["items"]
  end

end




