require './page.rb'

$book = []

$page_0 = Page.new(
    ''"Welcome to \"Finding My Past\".  To get started,
    type 1.  To abort type q."'',
    1)

$book << $page_0

$page_1 = Page.new(
    ''"\"Bobby, have you finished getting dressed\", my wife called up

the stairs.  It was 15 minutes until guests would start arriving for

my Sunday night dinner.  I was running a bit behind schedule.

    To set up snacks and drinks by the TV type 2.

    To fire up the grill type 3."'',
    2,
    3)
$book << $page_1

$page_2 = Page.new(
    ''"If I learned anything growing up, it was that you can't watch football

without snacks and some Alamo beer.  For the beer, I was covered by the

kegerator in the den, but I forgot the potato chips that my insufferable

father in law insists upon.

    To go to the store to pick up chips type 4.

    To tell off my father in law type 5."'',
    4,
    5)
$book << $page_2

$page_3 = Page.new(
    ''"Ever since my father lost his vision due to propane poisoning, I've

taken over as my family's grill master.  Despite all this, he still

insists that I cook with propane and in fact, even blames himself and

not propane nor the shoddy equipment his boss used that slowly took his

vision away over the last many years.  As I fire up the grill, my wife

calls in saying that my old friend Joseph will be showing up on short

notice.  I haven't spoken to Joseph in years, not since my wife, Connie,

decided to marry me over him.  He didn't even attend wedding. If Joseph

comes to dinner tonight I'd be one steak short.

    To go to the store to buy an extra steak type 4.

    To continue working on the bbq type 6."'',
    4,
    6)
$book << $page_3

$page_4 = Page.new(
    ''"I only had 10 minutes for guests to arrive so I gunned it down to the

Mega-Lo-Mart.  My heart stopped when I saw that the greeter was my childhood

bully Clark Peters.  \"Hey Bobby\" he snarled.  Just what

I'd always hear before he'd knock me over and shove dirt in my face.  Clark

only continued making poor life choices as he entered and dropped out of

high school. \"Oh hey Clark\" I said, hoping I could end this encounter

as quickly as possible. Before I knew it, he punched me in the face

and had me pinned to the ground. My last thoughts were of my guests and

their empty plates tonight at dinner"''
)
$book << $page_4

$page_5 = Page.new(
  ''"My father in law always treated me terribly.  Ever since I was a

chlid.  Tonight would be a great time to finally stand up to him.  Well it looks

like the first guests are arriving.

  To let them in type 7.

  To put on a silly outfit type 8."'',
  7,
  8)

$book << $page_5

$page_6 = Page.new(
  ''"I salivate as the propane cooks the steaks to the

appropriate doneness. The smell takes me back to my childhood.

The first knocks on the door happen as the meat gets that perfect

rare quality that we love in Texas.

  To let the guests in type 9.

  To try to eat all the steaks before dinner type 10."'',

  9,
  10)

$book << $page_6

$page_7 = Page.new(
  ''"Oh great.  The first guests are the in laws.  My father in law

never liked me and he was always against the wedding.  I think he was forced

by his somewhat more even tempered wife to continue to associate with us

so that they'd at least be able to see their grandchild. He walked

towards the couch expecting to see his favorite Sriracha flavored potato

chips.  As he notices their absence he begins to shout

\"Bobby you redneck.  You never respect your elders.  I can't believe I

let my daughter marry this fat hick.\" It was just too much.  I wanted

to be strong, but instead I ran to my room in tears."'')

$book << $page_7

$page_8 = Page.new(
  ''"No party is complete without my old Donald Duck costume.  That

costume even got me through high school as \"Sailor Bobby\".  I put on my

costume and head downstairs.  My wife let in my cousin Luanne and her husband

Lucky.  I always like seeing Lucky because no 50 year old can party quite

like him. I leave the hosting duties to my wife as we sit down for our

first of many beers for the evening.  It will be someone elses problem to

get this passed out 400 pound sailor off the couch."'')

$book << $page_8

$page_9 = Page.new(
  ''"Just as I feared, the first guest was Joseph.  We both knew this

was going to be awkward.  \"Bobby, I have to apologize.  We both loved Connie,

but your friendship has always been the most important part of my life.\"  We

both started crying and then hugged.  This display of emotion would have been

uncommon among my parents generation, but in 2030, Texas men have embraced

their sensative side. Joseph and I catch up as the other guests arrive.  At

the dinner table I gave Joseph my steak.  We eat on a picnic table under

the stars.  My parents are there as are some of our oldest childhood friends.

The music of Chuck Mangione can be heard distantly in the background."'')

$book << $page_9

$page_10 = Page.new(
  ''"The steak is too much for me to resist.  Just so juicy.

My family looks on in disgust as I chow down the final steak.  I've

successfully ruined another dinner party"'')

$book << $page_10
