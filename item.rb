# File describing item class
#
# Slavisa Djukic <Slavisa.Djukic15@myhunter.cuny.edu>
# Oct. 1, 2014.

class Item

  attr_accessor :type

  def initialize args
    @type = {args["Type"] => {attack: args["Attack"], defense: args["Defense"], weigh: args["Weight"]} }
  end

end
