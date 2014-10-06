class Page
    attr_accessor :content, :links
    def initialize(content, *links)
        self.content = content
        self.links = *links
    end
end
book = Array.new

page_0 = Page.new(
    """Welcome to \"Finding My Past\".  To get started,
    type 1.  To abort type q.""",
    1)
book << page_0

page_1 = Page.new(
    """\"Bobby, have you finished getting dressed\", my wife called up the stairs.

It was 15 minutes until guests would start arriving for my Sunday night

dinner.  I was running a bit behind schedule.

    To set up snacks and drinks by the TV type 2.
    
    To fire up the grill type 3.""",
    2,
    3)
book << page_1


page_2 = Page.new(
    """If I learned anything growing up, it was that you can't watch football
    
without snacks and some Alamo beer.  For the beer, I was covered by the
    
kegerator in the den, but I forgot the potato chips that my insufferable
    
father in law insists upon.

    To go to the store to pick up chips type 4.
    
    To tell off my father in law type 5.""",
    4,
    5)
book << page_2

page_3 = Page.new(
    """Ever since my father lost his vision due to propane poisoning, I've
    
taken over as my family's grill master.  Despite all this, he still
    
insists that I cook with propane and in fact, even blames himself and
    
not propane nor the shoddy equipment his boss used that slowly took his
    
vision away over the last many years.  As I fire up the grill, my wife
    
calls in saying that my old friend Joseph will be showing up on short
    
notice.  I haven't spoken to Joseph in years, not since my wife, Connie,
    
decided to marry me over him.  He didn't even attend wedding. If Joseph
    
comes to dinner tonight I'd be one steak short.

    To go to the store to buy an extra steak type 4.
    
    To continue working on the bbq type 6.""",
    4,
    6)
book << page_3

page_4 = Page.new(
    """I only had 10 minutes for guests to arrive so I gunned it down to the
    
Mega-Lo-Mart.  Fortunately, most people had already settled in for dinner
    
and the game by now so there wasn't much traffic and I was able to get
    
through the store quickly.  My heart stopped moved towards the cashier and
    
saw my childhood bully Clark Peters.  \"Hey Bobby\" he snarled.  Just what
    
I'd always hear before he'd knock me over and shove dirt in my face.  Clark
    
only continued making poor life choices as he entered and dropped out of
    
high school. \"Oh hey Clark\" I said, hoping I could end this encounter
    
as quickly as possible. Before I knew it, he leaped over the cash register
    
and had me pinned to the ground. My last thoughts were of my guests and
    
their empty plates tonight at dinner"""
)
book << page_4

page_5 = Page.new("Under construction\n")
book << page_5

page_6 = Page.new("Sorry not done\n")

page = page_0

while 1
    puts "\e[H\e[2J"
    puts page.content
    if page.links.empty?
        puts """To restart type r.

To quit type q"""
        dec = $stdin.gets.chomp
        if dec == "r"
            page = page_0
            puts "\e[H\e[2J"
            puts page.content
        end
        abort("Goodbye!") if dec == "q"
    end
    to_page = $stdin.gets.chomp
    abort("Goodbye!") if to_page == "q"
    until page.links.include?(to_page.to_i)
        puts "Please enter a valid page number. "
        to_page = $stdin.gets.chomp
    end
    page = book[to_page.to_i]
end




