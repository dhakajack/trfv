"TRFV" by Opsizsoft

The story headline is "Two rooms for Veeder".
The story genre is "horror".
The release number is 1.
The story creation year is 2018.

Include Cragne Suite by Ryan Veeder.

[Naming & Scoping Convention Proposal

Everything we generate needs to be prefixed by "benjack".

Some similar items occuring in both locations will additionally need the room name appended to distinguish them, e.g., "benjack-dan8-sky" to distinguish the sky backdrop for the hillside from that seen out the window of Carol's room.

Grammar definitions need to be scoped for fixed items, to the room in which they occur. 

Grammar definitions of possible conversation topics need to be scoped to location as well to prevent weird responses to ask/tell in the rooms of other players.  Some might need to be scoped to two rooms when the quip is shared.

If you want grammer to apply to both rooms, you can say "when the location is in the benjack-realm".
]

Book 1 - Set Up

Part 1 - New Kinds

[Used in the Nursery, where objects evolve over 3 different scenes.
Note that this is basically a special type of scener that has multiple descriptions, can't be touched/taken (like all scenery), and isn't automatically described as being present in the room (like all scenery).  This is good -- we're counting on the general room description and multiple examinations to reveal these objects.
]
A benjack-shadow is a kind of thing and scenery.
A benjack-shadow has some text called N1-desc, the N2-desc, and the N3-desc.
The N1-desc of a benjack-shadow is usually "Error: N1 description not defined."
The N2-desc of a benjack-shadow is usually "Error: N2 description not defined."
The N3-desc of a benjack-shadow is usually "Error: N3 description not defined."
Instead of examining a benjack-shadow (called the shadow):
	if benjack-N1 is happening:
		say N1-desc of the shadow;
	otherwise if benjack-N2 is happening:
		say the N2-desc of the shadow;
	otherwise if benjack-N3 is happening:
		say the N2-desc of the shadow;
	otherwise:
		say "Error: no description available.";
	say "[paragraph break]".
	
[TODO:  rules about trying to touch or take shadows, or do anything other than examine them]
Instead of doing something to a benjack-shadow:
	if the current action is examining or smelling:
		continue the action;
	if the current action is quizzing or implicit-quizzing or informing or implicit-informing:
		continue the action;
	say "Your hand goes right through it!". [TODO: expand this text to include Carol's first reaction]

A benjack-clipping is a kind of thing. 
Benjack-clippings have some text called title.
Benjack-clippings have a list of text called content.
The printed name of a Benjack-clipping is "the clipping entitled [quotation mark][title][quotation mark]". Understand "clipping/clippings/article/articles/printout/paper/cutting/cuttings" as a benjack-clipping.

A benjack-runebook is a kind of opaque openable container. 
A benjack-runebook can be either open or closed. A benjack-runebook is usually closed.
The examine containers rule does nothing when examining a benjack-runebook.

[Paralleling the project's use of read, but scoped down for this special case]
Understand "read [a benjack-runebook]" as reading when the location is M2F3.
Instead of opening a benjack-runebook, try reading the noun.

Part 2 - Conversation Disambiguation

[If we run into ambiguation prompts, this is a quick way to resolve them.

A thing can be conversation-preferred. A thing is usually not conversation-preferred.

Does the player mean quizzing about something conversation-preferred: it is likely.

Does the player mean informing about something conversation-preferred: it is likely.

Does the player mean implicit-quizzing something conversation-preferred: it is likely.

Does the player mean implicit-informing something conversation-preferred: it is likely.

Definition: a thing is conversation-preferred:
	if it is xxxx, decide yes;
	decide no.
	
]

Part 3 - The Player

The player has a number called benjack-times_bestowed. The benjack-times_bestowed of the player is 0. [number of cups of tea consumed]

Yourself can be benjack-spell_enabled. Yourself is not benjack-spell_enabled. [has player learned to cast xizzi, ploughver and kwisatz haderach]

Yourself can be benjack-baby_marked. Yourself is not benjack-baby_marked. [has carol marked Naomi's baby]

Yourself can be benjack-lin_aware. Yourself is not benjack-lin_aware.
[ever heard of the town of Lin?]

Yourself can be benjack-ploughver-armed. Yourself is benjack-ploughver-armed.[on timer]

Yourself can be benjack-ploughver-inhibited. Yourself is not benjack-ploughver-inhibited. [e.g., if room is warded, set]

Yourself has a number called benjack-times_ploughvered. The benjack-times_ploughvered of yourself is 0.

Part 4 - Locations 

Chapter DAN8 Hillside Path

DAN is a region.

DAN8 is a room in DAN. DAN8 is northeast of DAN3 and south of MGR1.
PLA0 is southeast from DAN8.

Definition: A room is juxtaDAN8 if it is DAN3 or it is MGR1 or it is PLA0.

Printed name of DAN8 is "Hillside Path (Jack Welch)".

The commentary of DAN8 is "DAN8 Commentary".

Description of DAN8 is "[one of]You follow a mud-trampled trail, which leads you blindly through a narrow trench bordered by overgrown brambles and shrubs, once smartly trimmed hedges of the Cragne Estate. The intimidating thorn-studded walls arch over you, all but obscuring the grey marbled clouds overhead.[paragraph break]Turning the corner, you feel the ground beneath your feet suddenly harden. Although the shrubs recede behind you, the shadows deepen as you walk towards a clearing set into the hillside, surrounded on three sides by black cliffs.[paragraph break]As you advance, sound is conspicuous by its absence -- gone is the squealchy sound of the muddy trail, the cracking of branches underfoot, and the rustling sounds of trailside wilderness. You are left contemplating the rocky bowl cut into the cliffside, a natural amphitheater.[paragraph break][italic type]Or is it? Could this hollow have been worked by the hand of man in some earlier time? How much labor and what dedication would have been required in an earlier era to work the ageless Vermont granite into such a perfect shape?[roman type][paragraph break]Your eye is drawn to a raised, brown mass centered before the cliffs; you muse that if the rockface formed a parabola, that mass would be at its focus, like an altar in a cathedral. The earthen lump grows in your vision and you realize that you must have walked towards it, lost in your thoughts. It has already been a long day, and it has barely started.[paragraph break]Up close, you realize that it is not an earthen mound, but a pile of long, rusted iron railway tracks. Tons of them. Stacked taller than you in this remote corner of the estate and forgotten.[paragraph break]You move your head in just the right way and light glances sharply off a glistening corner of track, momentarily blinding you. You rub your eyes reflexively, and when your vision clears, you realize with some embarrassment that a woman sits not even an arm[apostrophe]s length from your face atop the pile[or]You are in a hillside hollow flanked on three sides by sheer granite cliffs and on the other by gnarled vegetation[stopping].[paragraph break]Three trailheads hold out some chance of respite: north, southwest, and southeast."

The benjack-cliffs are scenery in DAN8.  The printed name of benjack-cliffs is "cliffs".  
Understand "cliff" or "granite" or "wall" or "hill" or "hillside" or "mica" as the benjack-cliffs when the player is in DAN8.
The description of the benjack-cliffs is "[one of]The granite walls are sheer and angle ever so slightly inward, overhanging the clearing; they would be impossible to climb without assistance from the top. The granite itself is fine-grained, but far darker than Vermont granite, is the color of burnt candle wick, all but invisible in this light save for tiny inclusions of reflective, jet-black mica, which impart a numinous glow.[or]The granite walls are sheer and angle ever so slightly inward, overhanging the clearing.[stopping]".  
Instead of climbing the benjack-cliffs, say "Even champion rock-climbers couldn't scale them."

The benjack-clearing is scenery in DAN8.  The printed name of benjack-clearing is "clearing".
Understand "bowl" or "amphitheater" or "amphitheatre" or "clearing" as the benjack-clearing when the player is in DAN8.
The description of the benjack-clearing is "[one of]In contrast to the drive up through rolling green hills studded with pines, endless tracts of lush crop lands, and an endless succession of dairy farms, life seems not to have taken hold within this tiny pocket of the Cragne Estate. It is a world apart, sterile and unchanging.[or]While impressive for its natural grandeur, this place is lifeless and still.[stopping]".  

The benjack-trail is scenery in DAN8.  The printed name of benjack-trail is "trailheads".
Understand "trail" or "trails" or "trailhead" or "trailheads" as the benjack-trail when the player is in DAN8.
The description of the benjack-trail is "[one of]Seething nature guards its distance from this place. Between the wispy weeds and degenerate, stunted trees that edge the clearing, you can distinguish three potential escape routes, one each to the north, southwest, and southeast, as the crow flies.[or]Three trailheads hold out some chance of respite: north, southwest, and southeast.[stopping]".

The benjack-weeds are scenery in DAN8.  The printed name of benjack-weeds is "vegetation".
Understand "hedge" or "bramble" or "shrub" or "tree" or "grass" or "vegetation" or "stumps" or "weed" or "weeds" as the benjack-weeds when the player is in DAN8.
The description of the benjack-weeds is "[one of]Nothing grows anywhere near the pile of railroad track in the center of the clearing; perhaps the soil has been compacted by eons of spectators who stood just where you do, watching or taking part in ceremonies, perhaps dancing around whatever had occupied the central place. Or maybe the ground here is just unwholesome, unwelcoming to life, poisoned in some way. Only at the periphery, does nature scratch its way towards redemption of this lost grotto. A somber carpet of flaky lichens and mouldering moss gives way to bent fingers of crippled weeds at the edge of the clearing. Some trailheads leading away are barely distinguishable between snaking tendrils of withered vine and fungus-covered rotting stumps that mark the boundary of the surrounding woods.[or]Decrepit vegetation fights for a foothold at the edge of the clearing.[stopping]".

Instead of touching the benjack-weeds:
	say "The gnarled, twisted weeds are nothing but thorns and vicious spines. You pull back."

The benjack-dirt is scenery in DAN8.  The printed name of benjack-dirt is "dirt".
Understand "soil" or "ground" or "dirt" as the benjack-dirt when the player is in DAN8.
The description of the benjack-dirt is "[one of]Compacted to the consistency of concrete, its blackness seems to eat light and sound, leaving you cold and alone.[or]Cold and dark.[or]Raspy and sharp, perhaps volcanic.[or]Abrasive.[stopping]".  
Instead of smelling the benjack-dirt,  say "Iron, sulfur, and coke. The odor of an idle forge.".

The benjack-dan8-sky is scenery in DAN8.  The printed name of benjack-dan8-sky is "sky". The benjack-mound is a supporter.
Understand "clouds" or "sky" as the benjack-dan8-sky when the player is in DAN8.
The description of the benjack-dan8-sky is "Leaden clouds gather from all corners, rumbling purposefully towards the area where the curved cliff face meets the sky.". 
The benjack-mound is scenery in DAN8.  The printed name of the benjack-mound is "pile of tracks".
Understand "mound" or "pile" or "lump" or "track" or "tracks" or "iron" or "sticks" or "rail" or "rayle" or "railroad" or "rail" or "rails" or "piles" or "lumps" or "irons" or "ironne" or "altar" as the benjack-mound when the location is in the benjack-realm.
The description of the benjack-mound is "[one of]Long shafts of weathered, rusted iron, jutting in all directions for a great mound as if dropped like puny sticks from the sky[or]A tall pile of rusted railway tracks[stopping].".  

Instead of climbing the benjack-mound, say "It doesn't look particularly safe to scramble up those tracks; they're covered with rusty, sharp edges and not as nicely balanced as they appear."

Chapter M2F3 Nursery

M2F is a region.

The M2F3 is a room in M2F. M2F3 is north from M2F2.

Printed name of M2F3 is "Nursery (Ben Collins-Sussman)".

Description of M2F3 is "[benjack-nursery-description]"

To say benjack-nursery-description:
	if benjack-N1 is happening: [TODO and also IFF the player is THROUGH THE DOOR]
		say "[first time]You would have killed to have this charming room when you were yourself five years old: a fluffy pink and white dotted comforter covers a bed overflowing with stuffed animals. Beside it, a play kitchen replete with pots, pans, and a very realistic looking oven. On the far wall, a large bay window trimmed in lacy curtains matching the bedspread. To the left of the window, a small writing desk and tiny lamp, and nearer to the door, a an old-fashioned record player rests on wooden stand. [paragraph break]Your eye is quickly drawn, however, to one discordant item: framed black and white photo of a bald man smiles down towards the center of the room. The exquisitely carved heavy gilded frame obviously predates photography by centuries, and you are hard pressed to guess how this odd portrait fits into the decor.[paragraph break]In the center of the room, the tea-party itself is already underway. Seated on each side of the table in toy chairs are several stuff animals. Carol stands just opposite you with teapot in hand, and right in front of you, an empty adult-sized chair waits invitingly.[only]An ideal room for a well-heeled little girl of five. Room furnishings include a bed, a play kitchen, a desk, and a record player. A large bay window occupies most of the external wall, and a large portrait hangs at the foot of the bed.[paragraph break]A tea party with Carol and a bunch of stuffed animals is in full swing in the middle of the room.[paragraph break]";
	otherwise if benjack-N2 is happening:
		say "[one of]The room has changed since you last saw it: there are fewer toys and it is less cluttered; in a word, more mature. [paragraph break]The bed now sports a light blanket, pastel blue in color, pulled taut over the twin mattress, with two pillows stacked at the head of the bed. To one side of the window stands a small table with a number of items on it, including a small mirror and some makeup. The large bay window looks out on the same scene as before, but leaves on the trees far below are just now beginning to sport autumn colors. To its side, the small writing desk has been replaced with a larger one and some books are stacked beside the same desk lamp you saw last time. A few pieces of artwork are stuck to the wall next to the desk. Nearer to the door, an old-fashioned turntable rests on a wooden stand.[paragraph break]Notably missing is the large framed portrait of President Eisenhower and its weighty golden frame. A single bent nail remains in the wall surrounded by a slightly discolored patch of wall where the picture once hung. [paragraph break]Below that space, three stuffed toys sit in a tight circle on the same tiny chairs that you saw last time.[or]The room is surprisingly neat and tidy, particularly for a teenager, and the furnishings are sparse: a bed, table, desk, and a turntable.[paragraph break]A few toys are gathered neatly in one corner beneath a blank patch of wall, where a large framed portrait once hung. A few pieces of artwork are affixed to the wall above the desk.[or]The room is surprisingly neat and tidy, and the furnishings are sparse: a bed, table, desk, and a turntable. [paragraph break]A few toys are gathered neatly in one corner beneath a blank patch of wall. Some artwork is affixed to the wall above the desk.[stopping]";
	otherwise if benjack-N3 is happening:
		say "The room is brighter, but colder. A fluorescent fixture fills the room with blue-white light, which reflects harshly off the newly painted white walls. The stubby light gray carpet dulls the sound in the room, but contributes no warmth. At least one item in the room has not changed: the bed, same frame, although the blanket is now a darker blue, and there are no pillows. A small reading light is clamped to the headboard and there are a couple books on the nightstand. At the foot of the bed, the heavy gold frame is back, this time occupied by Richard Nixon. On the ground far below the bedroom window, a heavy padding of snow has covered the ground. To the left of the window, the desk is a now a steel and chrome affair, very modern. A computer terminal occupies about half the desk and a notebook lies next to it. Above the desk, two rows of metal shelves have been installed. The record player is gone, replaced now by a reel-to-reel tape machine on the same table";
	otherwise:
		say "Mystical smoke blinds your vision." [we should never arrive here -- if we do, this is a bug in Scenes]
		
The commentary of M2F3 is "M2F3 Commentary".

benjack-baby-door is a scenery thing. The printed name of benjack-baby-door is "nursery door". Understand "nursery" or "door" as benjack-baby-door.

The description of the benjack-baby-door is "The door [benjack-baby-door-desc]."

To say benjack-baby-door-desc:
	say "says [quotation mark]Nursery[quotation mark] and below that, [quotation mark]Baby Sleeping -- DO NOT WAKE![quotation mark] and finally, at the bottom in smaller letters, [quotation mark]Come back later when baby awake. Signed, Victor Cragne[quotation mark]"

After going north from M2F2:
	if DAN8 is unvisited:
		move benjack-baby-door to M2F3;
		say "Just down a side corridor, you encounter a door that [benjack-baby-door-desc].";
		now the description of the M2F3 is "A door stands between you and the nursery. There is some writing on it.";
	otherwise:
		continue the action.
		
Before doing something other than examining to the benjack-baby-door:
	say "There is nothing at all arbitrary about the justice meted out for waking a sleeping baby in Crange Mansion.[paragraph break]";
	now the printed name of M2F3 is "Dungeon";
	now the description of M2F3 is "You find yourself in a dungeon, strapped by to a toffee table by candy cane manacles and slathered with delicious honey. A stalactite drips dark chocolate over your belly, luscious rivulets pooling in the small of your back.[paragraph break]The ants pour in, their mandibles clacking.[no line break]";
	try silently looking;
	end the story saying "EATEN".
	
Section 1 - Nursery Furnishings

[benjack-shadows are ghost objects (a kind of scenery) that you mostly can't interact with. Note that everything is a shadow except for the {book, window, chair, door}.]

[template:

The benjack- is a benjack-shadow in M2F3. The printed name of the benjack- is "".
Understand "" as the benjack-   when the player is in M2F3.
The N1-desc of the benjack-  is "".
The N2-desc of the benjack-  is "".
The N3-desc of the benjack-  is "".
]


The benjack-comforter is a benjack-shadow in M2F3.  The printed name of benjack-comforter is "comforter".
Understand "comforter/ blanket / duvet /cover" as the benjack-comforter when the player is in M2F3.
The N1-desc of the benjack-comforter is "A fluffy white comforter with tiny point dots; snug and comfy even through a Vermont winter."

The benjack-bed is a benjack-shadow in M2F3.  The printed name of benjack-bed is "bed".
Understand "bed" as the benjack-bed when the player is in M2F3.
The N1-desc of the benjack-bed is "A child’s bed of just the right size."


The benjack-dolls are benjack-shadows in M2F3. The benjack-dolls are scenery.  The printed name of the benjack-dolls is "dolls". The indefinite article of the benjack-dolls is "some".
Understand "doll/ dolls / animal/ animals/ stuffed" as the benjack-dolls when the player is in M2F3.
The N1-desc of the benjack-dolls  is "Four dolls dutifully attend the tea party, sitting two to a side on tiny chairs. To one side, a stuffed elephant and a monkey, and to the other some sort of clown and a lamb.[paragraph break]A ravenous horde of other stuffed animals crowd the edges of the bed silently observing the ceremony."

The benjack-elephant is a benjack-shadow in M2F3. The printed name of the benjack-elephant is "toy elephant".
Understand "elephant" or "mister" or "snortles" as the benjack-elephant when the player is in M2F3.
The N1-desc of the benjack-elephant  is "The leathery elephant’s head is disproportionately large and slumps forward slightly, weighed down by pendulous tusks and a meaty trunk.[paragraph break][one of][quotation mark]I[apostrophe]ve had [bold type]Mister Snortles[roman type] as long as I can remember -- [bold type]daddy[roman type] got him for me when I was just a baby and he had one of his trips to Africa. He has real tusks from a real elephant![quotation mark][or][stopping][paragraph break]From his dry, cracking gray hide, you suspect that the rest of Mister Snortles is equally authentic."

The benjack-monkey is a benjack-shadow in M2F3. The printed name of the benjack-monkey is "toy monkey".
Understand "monkey" or "master" or "sweetpaws" or "master sweetpaws" or "young master sweetpaws" as the benjack-monkey when the player is in M2F3.
The N1-desc of the benjack-monkey is "The limp and gangly sock puppet wears a baseball cap and an Army-Navy sweater.[paragraph break][first time][quotation mark][bold type]Young Master Sweetpaws[roman type] recently joined us, right Sweetpaws?[quotation mark][paragraph break]The monkey sits there, inert, but Carol continues, [quotation mark]Sometimes he gets up to naughtiness, but he[apostrophe]s always back in the morning, aren[apostrophe]t you, [bold type]Sweetpaws[roman type]?[quotation mark][paragraph break]The monkey stares blankly ahead.[only]".

The benjack-cap is a benjack-shadow in M2F3.  The printed name of the benjack-cap is "cap".
Understand "cap" or "hat" as the benjack-cap when the player is in M2F3.
The N1-desc of benjack-cap is "A Brooklyn Dodgers cap, blue with a white [quotation mark]B[quotation mark]."

The benjack-sweater is a benjack-shadow in M2F3.  The printed name of the benjack-sweater is "sweater".
Understand "sweater" as the benjack-sweater when the player is in M2F3.
The N1-desc of benjack-sweater is "A grey woolen sweater with an [quotation mark]Army/Navy[quotation mark] logo."

The benjack-clown is a benjack-shadow in M2F3.  The printed name of the benjack-clown is "toy clown".
Understand "clown" or "malice" or "malice the clown" as the benjack-clown when the player is in M2F3.
The N1-desc of benjack-clown is "[one of]Despite his painted smile, the clown[apostrophe]s plastic face conveys a sense of surrender as it stares into an empty tea cup. [paragraph break]It is the largest of the stuffed playmates, almost as tall as Carol. [paragraph break][quotation mark]That[apostrophe]s [bold type]Malice the Clown[roman type],[quotation mark] Carol chirps.[paragraph break][quotation mark][bold type]Malice?[roman type][quotation mark] you prompt. [quotation mark]The [bold type]Clown[roman type]?[quotation mark][paragraph break][quotation mark]Yes, originally I called him Alice, but [bold type]grand-uncle[roman type] said he[apostrophe]s a boy [bold type]clown[roman type] and thought [apostrophe][bold type]Malice[roman type][apostrophe] sounded nice.[quotation mark][or]Like all clown puppets, he exudes visceral evil.[stopping]"

The benjack-lamb is a benjack-shadow in M2F3.  The printed name of the benjack-lamb is "toy lamb".
Understand "lamb" or "Winkelbottom" or "Misses Winkelbottom" as the benjack-lamb when the player is in M2F3.
The N1-desc of benjack-lamb is "[one of]The toy is the threadbare, dirty yellowed remnant of what was once a lamb. It stands rigidly on its chair, bits of its underlying metal wire frame poking through where the fur has been rubbed shiny. It has no mouth, no nose, and only some bits of glue suggest where the eyes must have been.[paragraph break][quotation mark][bold type]Misses Winkelbottom[roman type], let me introduce our new friend, [bold type]Naomi[roman type].  Naomi, Misses Winkelbottom.[quotation mark][or]A well-worn toy lamb.[stopping]".

The benjack-kitchen is a benjack-shadow in M2F3.  The printed name of the benjack-kitchen is "play kitchen".
Understand "kitchen" as benjack-kitchen when the player is in M2F3.
The N1-desc of benjack-kitchen is "The play kitchen is all one piece and attached to a plywood backboard. The centerpiece is a metal stove with four pretend gas burners above an oven door. Some pots and pans poke out of the cabinets above the stove. To one side of the stove is a full size ice box, and an apron hangs on a hook to the other side of the stove.".

The benjack-apron is a benjack-shadow in M2F3.  The printed name of the benjack-apron is "apron".
Understand "apron" as benjack-apron when the player is in M2F3.
The N1-desc of benjack-apron is "A red and white checkered apron just Carol’s size.".

The benjack-pots is a benjack-shadow in M2F3.  The printed name of the benjack-pots is "pots".
Understand "pots" or "pans" as benjack-pots when the player is in M2F3.
The N1-desc of benjack-pots is "Sauce pans of different sizes, a large frying pan and, perhaps not too surprising this close to Maine, a toy lobster steamer.".

The benjack-pantry is a benjack-shadow in M2F3.  The printed name of the benjack-pantry is "pantry".
Understand "pantry" or "cabinet" as benjack-pantry when the player is in M2F3.
The N1-desc of benjack-pantry is "Assorted cooking and baking accessories like colanders, measuring cups, a cheese grater, cookie cutters, and a rolling pin.".

The benjack-desk is a benjack-shadow in M2F3.  The printed name of the benjack-desk is "desk".
Understand "desk" as benjack-desk when the player is in M2F3.
The N1-desc of benjack-desk is "A child-size replica colonial roll top desk with several drawers. The top portion of the desk is open and the writing surface folded down. A spiral-bound book lies on it next to a small lamp with a yellow shade.".

The benjack-drawer is a benjack-shadow in M2F3.  The printed name of the benjack-drawer is "drawer".
Understand "drawer" or "drawers" as benjack-drawer when the player is in M2F3.
The N1-desc of benjack-drawer is "Below the desktop, the desk is flanked on each side by three closed drawers.".

The benjack-desktop is a benjack-shadow in M2F3.  The printed name of the benjack-desktop is "desktop".
Understand "desktop" or "top" or "surface" as benjack-desktop when the player is in M2F3.
The N1-desc of benjack-desktop is "Polished walnut[first time] Probably. You’re not really sure. It is sort of dark, but not too. Let[apostrophe]s face it, most of your furniture is IKEA, so you are a little out of your depth here[only]".

The benjack-lamp is a benjack-shadow in M2F3.  The printed name of the benjack-lamp is "lamp".
Understand "lamp" or "cord" or "shade" or "light" as benjack-lamp when the player is in M2F3.
The N1-desc of benjack-lamp is "An ordinary desk lamp stands upright on the desktop, its power cord wrapping around the back of the desk. It provides an unusually soft, pleasant yellow light.".
Instead of taking the benjack-lamp, say "It is as insubstantial as everything else in the room; luckily, there are no grues in this corner of Cragne Mansion."

The benjack-recordplayer is a benjack-shadow in M2F3.  The printed name of the benjack-recordplayer is "record player".
Understand "record player" or "phonograph" or "turntable" as benjack-recordplayer when the player is in M2F3.
The N1-desc of benjack-recordplayer is "A wooden turntable with speakers built into the cabinet rests on a folding wooden table. There is a record on the turntable, but the turntable is off.".

The benjack-record is a benjack-shadow in M2F3.  The printed name of the benjack-record is "record".
Understand "record" as benjack-record when the player is in M2F3.
The N1-desc of benjack-record is "It is a full size record, black vinyl of course, with a cardboard center, labelled [quotation mark]Perry Como Sings Merry Christmas Music[quotation mark]. According to the label, it is a 78 rpm album produced by RCA Victor in 1946.".

The benjack-table is a benjack-shadow in M2F3.  The printed name of the benjack-table is "table".
Understand "table" as benjack-table when the player is in M2F3.
The N1-desc of benjack-table is "A small folding table.".
[TODO:   sitting on isn't defined?? only 'getting off'?
Instead of sitting on the benjack-table, say "Carol informs you that Misses Winkelbottom says that tables are not for sitting on.[paragraph break]So you don[apostrophe]t. Because of the (alleged) opinion of a blind stuffed lamb.".]

The benjack-frame is a benjack-shadow in M2F3.  The printed name of the benjack-frame is "photo frame".
Understand "frame" or "photo frame" as benjack-frame when the player is in M2F3.
The N1-desc of benjack-frame is "The frame is not well matched to the photograph, it would go much better with an oil painting from an earlier century, and indeed it is not unlikely that some portrait of a remote ancestor was gutted when the need for a frame arose. The four-inch wide frame is intricately carved with fanciful beasts and has seen many applications of gold-leafing.".

The benjack-beasts is a benjack-shadow in M2F3.  The printed name of the benjack-beasts is "beasts".
Understand "kitchen" as benjack-beasts when the player is in M2F3.
The N1-desc of benjack-beasts is "The artist that crafted the heavy golden frame, while expressive and skilled, obviously had little grounding in anatomy. Ten-legged beetles with long, scaly tails chase plump babies with bat wings through forests of spiny-tentacled trees. Ornate, but utter rubbish. ".

The benjack-portrait is a benjack-shadow in M2F3.  The printed name of the benjack-portrait is "portrait".
Understand "portrait" or "picture" or "man" as benjack-portrait when the player is in M2F3.
The N1-desc of benjack-portrait is "This is clearly a formal portrait of a balding man probably in his sixties. He has an air of authority, but also an avuncular warmth. There is a nameplate at the bottom of the portrait.".

The benjack-nameplate is a benjack-shadow in M2F3.  The printed name of the benjack-nameplate is "nameplate".
Understand "namplate" as benjack-nameplate when the player is in M2F3.
The N1-desc of benjack-nameplate is "[quotation mark]Dwight D. Eisenhower, 34th President of the United States of America.[quotation mark]".

The benjack-toychair is a benjack-shadow in M2F3.  The printed name of the benjack-toychair is "toy chairs".
Understand "toy chair" or "toy chairs" as benjack-toychair when the player is in M2F3.
The N1-desc of benjack-toychair is "The tiny toy chairs remind you of those found in grammar schools: a shaped plywood seat on a gray tubular steel frame.".

The benjack-cup is a benjack-shadow in M2F3.  The printed name of the benjack-cup is "cup".
Understand "cup" as benjack-cup when the player is in M2F3.
The N1-desc of benjack-cup is "There is a tea cup for each of you, that is, Carol, the four toys sitting at the table, and you. Yours is larger, but the design is the same: alternating blue and gold striped porcelain with a band of little skulls around the rim. [if the player carries the benjack-cup]You find yourself holding it daintily, pinky out.[end if]".

Instead of throwing the benjack-cup at something:
	say "You throw the tea cup with all your might, but against all odds it ricochets around the room and lands right in front of you on the table[first time], right as rain.[paragraph break]Carol[apostrophe]s eyes bulge, seeing an adult behave that way and quietly she says, [quotation mark]My tea cups, my rules.[quotation mark][only]."

The benjack-clothing is a benjack-shadow in M2F3.  The printed name of the benjack-clothing is "clothing".
Understand "clothing" or "dress" or "shoes" or "buckle" or "skirt" or "sock" as benjack-clothing when the player is in M2F3.
The N1-desc of benjack-clothing is "Every bit of her outfit is picture perfect: every skirt pleat ironed, her socks cloroxed to an actinic glow, and her patent leather shoes polished like black marble.".

The benjack-bow is a benjack-shadow in M2F3.  The printed name of the benjack-box is "bow".
Understand "bow" as benjack-bow when the player is in M2F3.
The N1-desc of benjack-bow is "It must be heavily starched to remain that crisp.".


[REAL OBJECTS, not shadows:]

The benjack-window is a container in M2F3.  The benjack-window is fixed in place, openable and closed.
The printed name of the benjack-window is "window".
Understand "window" as benjack-window when the player is in M2F3.
The description of benjack-window is "The large bay window is framed in the same rosewood trim that decorates the rest of this once great mansion.".
Instead of touching the benjack-window, say "The glass is cool to the touch.".
Instead of opening the benjack-window, say "The window has a child safety lock.[first time] How very uncharacteristically responsible for the Cragnes[only].".
[TODO:  hitting action isn't defined, nor is 'looking through'
Instead of hitting the benjack-window, say "The house has survived Vermont winters, it will survive you."
Instead of looking through the benjack-window, say "Through thick glass warped by time, you can see the estate grounds far below you. The dark hills where you encountered Christabell are in the distance."]

The benjack-chair is a supporter in M2F3.  The printed name of the benjack-chair is "antique chair".
Understand "chair" as benjack-chair when the player is in M2F3.
The description of benjack-chair is "The chair is the only adult-size piece of furniture in the room.[first time] It looks a little spindly, but antique chairs often do, and you reason that they knew what they were doing back in the day, so it will probably hold.[only]".
[TODO: sitting isn't a defined action.
After sitting on the benjack-chair, say "The antique chair creaks a little but supports you."]
[TODO: implement touching messages for chair]

The benjack-scrapbook-5 is a benjack-runebook in M2F3. The printed name of the benjack-scrapbook-5 is "scrapbook".
Understand "scrapbook" or "book" as the benjack-scrapbook-5 when the player is in M2F3.
The description of the benjack-scrapbook-5 is "[benjack-scrapbook-5-desc]".

To say benjack-scrapbook-5-desc:
	say "The cover of the spiral-bound book is marked in thick black gothic lettering, [quotation mark]Carol’s Scrapbook[quotation mark]. Little bits of newsprint stick out from the edges of the [if open]open[otherwise]closed[end if] book.[no line break]";
	if the benjack-times_bestowed of yourself is greater than 0:
		say " ";
		if the benjack-times_bestowed of yourself is:
			-- 1: 
				say "The scrapbook glows faintly";
			-- 2:
				say "A bluish halo surrounds the scrapbook";
			-- 3:
				say "The bright aura around the scrapbook distorts the air around it; pulses of energy rippling outward from it";
		say ".[no line break]".
		
Instead of reading the benjack-scrapbook-5:
	if benjack-scrapbook-5 is closed:
		say "You flip open the scrapbook, with Carol reading";
		now benjack-scrapbook-5 is open;
	otherwise:
		say "Carol reads";
	say " along, over your shoulder. In keeping with the cover, the scrapbook contains a number of newspaper clippings, bearing the titles: ";
	let L be a list of text;
	repeat with clip running through benjack-clippings enclosed by benjack-scrapbook-5:
		add title of clip to L;
	say "[italic type][L][roman type].".



		
Chapter The benjack realm

[Region is normally the way to do this, but the rooms are already part of DAN and M2F regions, 
and a room isn't allowed to be in more than one region!]
Definition:  a room is in the benjack-realm if it is DAN8 or it is M2F3.

Part 5 - NPC Definitions

Chapter Christabell

benjack-Christabell is a female person in DAN8.  The printed name of benjack-Christabell is "[if benjack-Christabell is unaddressed or benjack-Christabell is eager or benjack-Christabell is bypassed]the bonnet-clad woman[else]Christabell". Understand "woman/Christabell/herself" as benjack-Christabell when the location is DAN8.

The description of benjack-Christabell is "[one of]When you direct your attention to her, she becomes more substantial, or perhaps that is just a trick of the light filtering through the passing cover of clouds.[paragraph break]Her face is not old, but she is no child. It is rimmed by a bonnet, which you guess is some pastel color, but rendered grey in these shadows. Her eyes burn with intelligence below an inclined brow.[paragraph break][or]A bonnet-clad woman with an intense gaze.[stopping]".

Understand "talk to [someone]" as a mistake ("[benjack-talk-hint].").

[A state-machine that transitions the dialogue between a chain of behaviors in R0.  See "Chapter Scene R0".]
benjack-Christabell can be unaddressed or eager or chatty or candid or bypassed.  benjack-Christabell is unaddressed.

benjack-Christabell can be either run-down or charged-up. benjack-Christabell is run-down.

Chapter Carol

benjack-Carol is a female person in M2F3.  The printed name of benjack-Carol is "Carol".  Understand "Carol/girl/child/herself" as "[benjack-CarolToken]". Understand "[benjack-CarolToken]" as benjack-Carol when the location is M2F3.

The description of benjack-Carol is "[benjack-Carol-description]".

To say benjack-Carol-description:
	if benjack-N1 is happening: [TODO and also IFF the player is THROUGH THE DOOR]
		say "A pretty young girl, with wavy hair held in place with hair band, penetrating blue eyes, and cherubic cheeks. Her perfectly pressed powder blue dress is cinched at the waist with an oversize bow of matching color, and below it her skirt balloons outward like a parachute. Below that, she wears brilliant white knee socks and polished shoes with small silver buckles.";
	otherwise if benjack-N2 is happening:
		say "TBD";
	otherwise if benjack-N3 is happening:
		say "TBD".

Instead of touching benjack-Carol, say "Your hand goes right through her, and it doesn’t seem to bother her in the least."


Book 2 - Scenes

Part 1 - Start and Stop Criteria

[R0 -> N1 -> R1 -> N2 -> R2 -> N3]

[Only R0 is a recurring scene, so generally we do not need to specify "for the first time". Once a scene ends, it won't trigger again even if its begin conditions are true.

We shouldn't chain scenes together, like "N2 begins when R1 ends" since other people's game scenes may come in between our scenes and we don't want to expose any scene-scoped items during that interval.

Our scenes should also not run when the player is outside our rooms to avoid loading down the game and to help prevent unforeseen interactions]

benjack-R0 is a recurring scene. ["Meet Christabell"; Christabell is unaddressed]
benjack-R0 begins when the player is in DAN8 and M2F3 is not visited.
benjack-R0 ends when the player is not in DAN8. [nursery]

benjack-N1 is a scene. ["Tea Party"]
benjack-N1 begins when the player is in M2F3.
benjack-N1 ends when the benjack-times_bestowed of yourself is greater than 0 and the player is in M2F2.[hallway outside the nursery; safe because Naomi hasn't learned ploughver yet]

benjack-R1 is a scene. ["Naomi is Marked and Learns Some Spells"]
benjack-R1 begins when benjack-N1 has happened and the player is in DAN8.
benjack-R1 ends when yourself is benjack-spell_enabled and the player is not in DAN8.

benjack-N2 is a scene. ["Teenage Carol Marks Naomi’s Baby"]
benjack-N2 begins when benjack-R1 has happened and the player is in M2F3.
benjack-N2 ends when yourself is benjack-baby_marked and the player is not in M2F3.

benjack-R2 is a scene. ["Plotting Carol’s Disruption"]
benjack-R2 begins when benjack-N2 has happened and the player is in DAN8.
benjack-R2 ends when the player is not in DAN8.

benjack-N3 is a scene. ["Boss Battle"]
benjack-N3 begins when benjack-R2 has happened and the player is in M2F3.
benjack-N3 ends when benjack-Carol is not in M2F3.

[might need some auxiliary scenes -- we'll figure that out as we code.]

Part 2 - Scene R0 Meet Christabell

[General strategy here is that we can scope different answers to subjects based on time and location.
For time, we use Inform 'scenes' to scope.
For location, we just look at the interlocutor.

Example:

After quizzing benjack-Christabell about benjack-carrots during benjack-R0:
	say "I love carrots."
After quizzing M2F3-Carol about benjack-carrots during benjack-N1:
	say "They are so terrible."
After quizzing benjack-Christabell about benjack-carrots during benjack-R1:
	say "I see that Carol has told you they're terrible, but she's wrong."
]

[starting topics of discussion, all familiar by default]

Chapter R0 Conversation

Section R0 Subjects

benjack-salem is a subject.  Understand "salem" as benjack-salem when the player is in DAN8.
benjack-puritan is a subject.  Understand "puritan" as benjack-puritan when the player is in DAN8.
benjack-pilgrim is a subject.  Understand "pilgrim/settler" as benjack-pilgrim when the player is in DAN8.
benjack-colony is a subject.  Understand "colony/Massachusetts" as benjack-colony when the player is in DAN8.
benjack-indian is a subject.  Understand "indian/native/tribe/indigenous" as benjack-indian when the player is in DAN8.
benjack-Lin is a subject.  Understand "Lin" as benjack-Lin when the player is in DAN8.
benjack-youth is a subject.  Understand "youth" as benjack-youth when the player is in DAN8.
benjack-knotte is a subject.  Understand "knotte/reason/sanity/madness/sane/insane/crazy" as benjack-knotte when the player is in DAN8.
benjack-ironworks is a subject.  Understand "ironworks/ironwork/forge/forges" as benjack-ironworks when the player is in DAN8.
benjack-lineage is a subject.  Understand "lineage" as benjack-lineage when the player is in DAN8.
benjack-gift is a subject.  Understand "gift/gifte" as benjack-gift when the player is in DAN8.
benjack-newgrace is a subject.  Understand "new grace/grace" as benjack-newgrace when the player is in DAN8.
benjack-malificium is a subject.  Understand "malificium" as benjack-malificium when the player is in DAN8.
benjack-Carolsubject is a subject. Understand "[benjack-CarolToken]" as benjack-Carolsubject when the player is in DAN8.

benjack-PC is a subject. Understand "self/myself/me/Naomi" as benjack-PC when the location is in the benjack-realm.

Rule for clarifying the parser's choice of benjack-PC: do nothing.

benjack-Cragne is a subject.  Understand "Cragne" as benjack-Cragne when the location is in the benjack-realm.
benjack-death is a subject.  Understand "death/deathe" as benjack-death when the location is in the benjack-realm.
benjack-ghost is a subject.  Understand "ghost/ghosts" as benjack-ghost when the location is in the benjack-realm.
benjack-mark is a subject.  Understand "mark/marks/marked" as benjack-mark when the location is in the benjack-realm.
benjack-mattanit is a subject.  Understand "Mattanit" as benjack-mattanit when the location is in the benjack-realm.
benjack-Peter is a subject.  Understand "husband/Peter" as benjack-Peter when the location is in the benjack-realm.
benjack-seight is a subject.  Understand "seight/sight/spectral/spektral" as benjack-seight when the location is in the benjack-realm.
benjack-spirit is a subject.  Understand "spirit/spirits" as benjack-spirit when the location is in the benjack-realm.
benjack-covenant is a subject.  Understand "third/covenant" as benjack-covenant when the location is in the benjack-realm.
benjack-Vermont is a subject.  Understand "Vermont" as benjack-Vermont when the location is in the benjack-realm.
benjack-witch is a subject.  Understand "witch/witches" as benjack-witch when the location is in the benjack-realm.

Section R0 Quips

To benjack-jumpTheShark:
	if benjack-Christabell is not candid:
		Ben and Jack jump the shark in four turns from now;
		now benjack-Christabell is candid.
		
At the time when Ben and Jack jump the shark:
	if benjack-R0 is happening:[to make sure this doesn't go off in another location or scene]
		say "Caught up in the conversation, the surrealism of your situation now lands with its full weight and you take a long breath.[paragraph break][quotation mark][bold type]Naomi[roman type], wherefore doth your Countenance so cloud?[quotation mark][paragraph break][quotation mark]I just realized how weird it is to be talking to a [bold type]ghost[roman type].[quotation mark][paragraph break][quotation mark]A [bold type]spirit[roman type].[quotation mark][paragraph break][quotation mark]Okay, a [bold type]spirit[roman type],[quotation mark] you concede. [quotation mark]Maybe all this hanging around with the [bold type]Cragnes[roman type] has rubbed off on me. Maybe I[apostrophe]m the one who has lost her marbles.[quotation mark][paragraph break][quotation mark]Nay, your Marbles be firmly within your Skull, and your [bold type]Knotte of Reason[roman type] still tightly woven.[quotation mark][paragraph break][quotation mark]Mark my words, [bold type]Peter[roman type] is going to have a field day when I tell him how my day has gone.[quotation mark][paragraph break][quotation mark]That I cannot [bold type]mark[roman type], it being beyond my powers.[quotation mark][paragraph break]".

Before quizzing or informing benjack-Christabell about a subject for the first time:
	say "You consider whether it is prudent to kick off a conversation with this stranger, secluded as you are in this deathly quiet corner of the [bold type]Cragne[roman type] Estate, but your gregarious nature carries the day. You reason that she’s only a stranger because you haven’t met her yet, and considering that you don’t really know anything about [bold type]Peter[roman type]’s family, maybe it is time to start reaching out a little more. You sit down next to Christabell, and she rewards you with a smile and rapt attention.";
		continue the action.
		
[ Doesn't actually work:  
Before quizzing or informing benjack-Christabell about a subject (called foo):
	if foo is not known, say "Sorry, you don't know anything about that.";
	otherwise continue the action.]

[also doesn't work:
Check quizzing benjack-Christabell about something unknown:
	say "noooooope.".]

After informing benjack-Christabell about benjack-PC:
	say "[one of][quotation mark]Well,[quotation mark] you begin, [quotation mark]I am Naomi, and you probably already know my husband, [bold type]Peter[roman type] -- Peter [bold type]Cragne[roman type].[quotation mark][paragraph break]Christabell shakes her head, [quotation mark]A Crâne? No, I have not the Pleasure of his Acquitenance, or at least not yet. But I am sure there are many Hereabouts unknown to me of Late.[quotation mark][paragraph break][quotation mark]Yes, he[apostrophe]s a little introverted, so I’m not surprised,[quotation mark] you continue. [quotation mark]In fact, while he[apostrophe]s met my entire family, I have not even met his parents -- yet. No pressure there, right?[quotation mark][paragraph break][quotation mark]Assuredly, so.[quotation mark][paragraph break][quotation mark]We took this opportunity to shoot up to [bold type]Vermont[roman type] and I figure we[apostrophe]ll do the family thing and while we[apostrophe]re at it a little touring around: Ben & Jerry[apostrophe]s, some covered bridges, get a bucket of maple syrup -- or however they sell it -- and check out some of the mountains. Two birds with one stone![quotation mark][paragraph break][quotation mark]Two with but a single Stoning? Indeed, what you have laid out sounds a fruitful Application of your Labours.[quotation mark][or]You say a few more words about yourself.[no line break][stopping][paragraph break]".
After quizzing benjack-Christabell about benjack-PC:
	say "[one of]Christabell has to think about that one.[paragraph break][quotation mark]Your Demeanour suggesteth to me summe Affluence, and your Speache conveieth to me an Impression of upstanding Formation. I sense a Dystase for Idleness, but whether you are a Working Girl, I cannot say with Sureness.[quotation mark][paragraph break][quotation mark]No -- or rather, I do have a job. A nice job. In an office. I do work, that is.[quotation mark] [paragraph break]Christabell continues, [quotation mark]Further, I do aspie summe Resemblance of Visage, but cannot fathom its place in the [bold type]Lineage[roman type].[quotation mark][or]Christabell doesn’t know what else to say about you.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-Peter:
	say "[one of][quotation mark]As for Peter, my husband, what you see is what you get: he’s a lovable teddy bear.[quotation mark][paragraph break][quotation mark]Is he?[quotation mark][paragraph break][quotation mark]Yes, but a bit of a workaholic. He puts in a full day, but then he’s up all night with the books. I’ve never seen anyone pour their soul out so much over a job.[quotation mark][paragraph break][quotation mark]Into what Sorte of Bookes does he pour his Soul?[quotation mark][paragraph break][quotation mark]At this point, he’s management, so mostly going over audit summaries. In truth, he’d rather do the bean counting himself. Crunching numbers floats his boat.[quotation mark][paragraph break][quotation mark]I am amazed to hear such news as you have to tell; the Worlde is greatly changed since my [bold type]Youth[roman type].[quotation mark][or]You ramble on for a while about your husband, Peter.[no line break][stopping][paragraph break]".
After quizzing benjack-Christabell about benjack-Peter:
	say "Christabell politely mentions that she has not made his acquaintance."

After informing benjack-Christabell about benjack-Vermont:
	say "[one of][quotation mark]Geography isn’t my strong suit,[quotation mark] you admit. [quotation mark]I think I was supposed to have gone to Vermont when I was a kid, but the ski trip got canceled.[quotation mark]  Looking around, you remark, [quotation mark]I’m not sure Vermont quite agrees with me. The weather seems kind of gray here.[quotation mark][paragraph break][quotation mark]More like that be a Reflexion of the Locale.[quotation mark][or]If you said anything more about Vermont, you’d be making it up.[no line break][stopping][paragraph break]".
After quizzing benjack-Christabell about benjack-Vermont:
	say "[one of]Christabell replies, [quotation mark]There be not much to say on my Part, [bold type]Vermont[roman type], being far from where I spent my [bold type]youth[roman type][if benjack-Christabell is candid]. In truth, I never set my Foote here all the Tymme I did live, but onely did come tardily some many Yeares after my own [bold type]Deathe[roman type], and that not of my Volition[end if]. Thus, there is little I can add of local flavour beyond the Explorations that you may set upon your own Selffe.[quotation mark][or]Christabell admits not knowing all that much about the state where she now resides.[no line break][stopping][paragraph break]".

After informing benjack-Christabell about benjack-Cragne:
	say "[one of][quotation mark]I can’t say too much about my in-laws because almost every time I have brought the subject up, [bold type]Peter[roman type] goes silent.[quotation mark][paragraph break]Christabell nods for you to continue.[paragraph break][quotation mark]But there was this one time -- one evening, we were looking through an old leather-bound album of his. I don’t know where it came from, or what became of it, but he was researching something about a remote uncle of his, Verlan Refi-Cul Cragne -- sounds French, right? They were fur traders along the Saint Lawrence River in the late 17th Century; most settled near Quebec, but an offshoot worked their way into [bold type]Vermont[roman type].[quotation mark]  You pause to rub some warmth back into your hands. [quotation mark][bold type]Peter[roman type] is normally so withdrawn -- I was surprised that he knew so much about that obscure ancestor, but once he got going on family history, he was like a thing possessed.[quotation mark][paragraph break][quotation mark]No doubt. Many are so-fated.[quotation mark][paragraph break][quotation mark]Yes,[quotation mark] you agree. [quotation mark]Genealogy is fascinating.[quotation mark][or]You wrack your brain for funny anecdotes concerning the Cragnes, but don’t come up with any.[no line break][stopping][paragraph break]”.
After quizzing benjack-Christabell about benjack-Cragne for the first time:
	say "[quotation mark]I suppose you must know the Cragnes; they own all this property and that mansion on the far side of the hill,[quotation mark] you prompt.[paragraph break][quotation mark]I have beheld many of the Crânes, hasting aloung the Pathes, dallying here and there, about their divers Busyness.[quotation mark][paragraph break][quotation mark]What do you think of them?[quotation mark][paragraph break][quotation mark]To witte, nunne did have [bold type]Seight[roman type] of me, thow summe haf talked within my Presence.[quotation mark][paragraph break]".
After quizzing benjack-Christabell about benjack-Cragne:
	say "Despite their proximity, Christabell doesn’t seem to know much about the Cragnes, aside from a general impression that they are creepy[one of]-- which you kind of share, Peter excepted[or][stopping]."
	
After quizzing benjack-Christabell about benjack-mound when benjack-R0 is happening:
	say "[quotation mark][one of]For as long as this great [bold type]Pyle[roman type] of [bold type]Ironne[roman type] Metall has been here, so have I.[quotation mark][or]It has been here a long, long time,[quotation mark] says Christabell.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-cliffs:
	say "[quotation mark][one of]They be nothing like any Marble Granite that I do know, first by their Colour, which is unnatural dark, but also by their Durabilitie. Summe Tymme ago, Men did come with their Tools up from the [bold type]Crâne[roman type] Manour, and did try for Dayes to saw and pierce the stony Walls of this Hollow, but theyr Tools dulled, they made not a Scratch upon the timeless Stone here. That crafted in an earlier Ayge cannot be rewrought by too soft Hand of modern Man[or]They be ancient and theyr dark Faces immutable[stopping].[quotation mark][paragraph break]".
	
After quizzing benjack-Christabell about benjack-clearing:
	say "[quotation mark][one of]I know not the Purpose of this Place, but certain I am that it doth have one most Sacred. In the Winter, when the Trees beyond the clearing do forsake their Leaves, I am granted a View most specktacular of the fertile Fieldes beyond clear to the River, and I do imagine a Tymme when no Thing did grow there and the People gathered here did see all their Werld layd out afront them, and did give their Thankes and make Sacrifyce to whatever they did worshippe. Then too, e’ry Yeare there be one fyne Daye when some green doth return to the Plantes, that the Rayes of the Sonne do stryke the [bold type]Cliffes[roman type] oddly, and for the briefest moment, they do glowe not black but the most seering white, and that Light doth come together like a bundle and Flash upon the [bold type]Ironne Rayles[roman type] or more like the Place where they do sit to-Daye. In that moment, I am driven from this Place I know not where, and do fynde myself always awakening atop the [bold type]Pyle[roman type]. Indeed, this Place has its owne Mysteries I cannot fathom[or]An ancient Place that doth from mee hyde its Mysteries[stopping].[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-trail:
	say "[quotation mark][one of]For as long as I be here, the [bold type]Crâne[roman type] Manor did make itself my Neighbour. At one Tymme, when the Family did have divers Holdings and Concerns scattered hereabouts, theyre Werkers would oftentimes cross this Place on yonder Trayle, but few [bold type]Crânes[roman type] deign draw near; or when they do, almost always do they scamper by like frightened Hares.[paragraph break][quotation mark]Yes, that’s the [bold type]Cragnes[roman type] for you, I guess. [bold type]Peter[roman type]’s always very down to business, ‘let’s get this show on the road’, no time to smell the roses, right?[quotation mark][paragraph break][quotation mark]Nay, for no Flower doth grow in this bespoilt Soyle. The [bold type]Crânes[roman type] I thinke do sense something of what this Place was, and its enduring Power, and they are rightly scared. I know not its Purpose, but to this day, twice a Yeare, [bold type]Indians[roman type] do come here avoiding those on the trayl as they do come and go. Thow now in modern Tymmes, they apport the traditional Garments and speak to the [bold type]Cliffs[roman type] in a Tongue that not even I do ken. Many tiymmes have I desired to know theyre Purpose, but they not having the [bold type]Seight[roman type] cannot mee aperceeve[or]Once frequented by Indians, it be travelled but rarely these Dayes, and almost never by Crânes[stopping].[quotation mark][paragraph break]".

After informing or quizzing benjack-Christabell about benjack-Christabell:
	say "[one of][quotation mark]I think you may be the only Christabell that I know,[quotation mark] you say.[paragraph break][quotation mark]In truth? This does surprize me greatly, for in mei [bold type]Youth[roman type] it was a most common Appellation. There were... let me render the Account,[quotation mark] Christabell counts on her fingers, [quotation mark]four of us in the Whole of the Towne. Contrarywise, ‘til this Day I had met ne’er a Naomi, thow the Name be familiar, being fownde in the Booke of Ruth.[quotation mark][or]You and Christabell chat for a while about names for kids -- not that you and Peter expect any, at least for a while --  on the other hand, there was that accident the other evening. No matter, you doubt you’d use any of the names that she comes up with.[no line break][or]There isn’t much else to say about Christabell.[no line break][stopping][paragraph break]".

After informing or quizzing benjack-Christabell about benjack-weeds:
	say "[quotation mark][one of]Naught doth grow near to the [bold type]Pyle[roman type] of [bold type]Ironne[roman type],[quotation mark] says Christabell, bending down to examine the hard soil.[paragraph break][quotation mark]Maybe some chemical is leeching from the [bold type]iron[roman type], like an anti-rust coating or something,[quotation mark] you offer.[paragraph break][quotation mark]I do thynke that unlikely, but do entertain your Saying as Science must needs be of such Advancement to-Daye as would make my Head spin. Rather, thow, have I thowt that the Soyl be too betrampled over the Ayges by the People who did visit this place on theyre Worshippe. As for the scraggly Weeds at its edge -- I know not theyre names by any modern Terme, but would call them names like Vicar’s Bayne, Creeping Lice Bush, and Widow Cancre -- those [bold type]Weeds[roman type] mostly poysonous to eat or corrosive to the Touch -- they do invade from the [bold type]Crâne[roman type] Landes, any once-productive Farm of theyrs long since fallen to ruin[or]Naught groweth in the Centre and those [bold type]Weeds[roman type] nearer the [bold type]Trayl[roman type], they be not mete to touch for their prickers, poysonous and vile[stopping].[quotation mark][paragraph break]".


After informing benjack-Christabell about benjack-youth:
	say "[one of][quotation mark]All of this is new to me[quotation mark]. You gesture to the surrounding countryside -- at least, to where there would be surrounding countryside if you could see beyond the overbearing dark cliffs and creeping dark woods. [quotation mark]I grew up in The Big Apple. That’s where I’m from.[quotation mark] [paragraph break] [quotation mark]Whence?[quotation mark] [paragraph break] [quotation mark]The Big Apple. The City. You know, New York. Don’t you say [apostrophe]Big Apple[apostrophe] here?[quotation mark] [paragraph break] [quotation mark]I do not beleeve it be in common Parlance, but I am of late  at far remouved from the Tymme of mei Youth and moor a poor Judge of such Thinges.[quotation mark] [paragraph break] [quotation mark]It’s probably a regional thing, like soda and pop.[quotation mark][or]Christabell seems interested in hearing more about where you grew up, so you go into some detail.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-youth for the first time:
	say "[quotation mark]So,[quotation mark] you begin, [quotation mark]what was your childhood like?[quotation mark][paragraph break]Pleased to be the center of attention, Christabell reminisces, [quotation mark]My early Youth I did spent in Engeland, Mother[apostrophe]s youngest Daughter, so was coddled. I saw little of Father in that time, him being all-waies at Worke in the [bold type]Forges[roman type] of one great Towne or an Other.[quotation mark][paragraph break][quotation mark]I did notice the accent,[quotation mark] you add. [quotation mark]Are you originally from London?[quotation mark][paragraph break][quotation mark]Nay, never yet Lundon; we did sayle from the Port of Bristoll and came we to the Towne of [bold type]Lin[roman type][if yourself is not benjack-lin_aware].[paragraph break][quotation mark]Never heard of it.[quotation mark][paragraph break][quotation mark]No, even in that day it was a Hamlet, somewhat removed from larger Settlements. In later Dayes, I do believe it were better known as [bold type]Saugus[roman type] for the River that did nearby course[end if]. We were deliwered there by the very Hand of Providence, for Lin was blessed with a River, plentifull Bog Ironne, and no lack of Wood.[quotation mark][paragraph break][quotation mark]About when was this?[quotation mark] you ask.[paragraph break][quotation mark]That Providence delivered us to the Colonie of Massachusetts? That Date I dewe know[apostrophe]th by Hearte: It was the Year of the Lord Sixteen-Hundreds and Fourty-Four, and I was but a Gyrll of eleffen Years.[quotation mark][paragraph break][quotation mark]Sorry -- did you say 1644?[quotation mark][paragraph break][quotation mark]Yes, and I did die in the Year of Our Lord Sixteen-Hundred and Fifty-Three; since whych I have existed as naught but a [bold type]Spirit[roman type].[quotation mark][paragraph break]";
	now yourself is benjack-lin_aware;
	benjack-jumpTheShark.
	
[this is less specific than the "for the first time version", so it will fire only on subsequent invocations]
After quizzing benjack-Christabell about benjack-youth:
	say "Christabell is only too happy to reminisce about her youth, going on about herself, her mother and father at length."

After quizzing or informing benjack-Christabell about benjack-seight:
	if  benjack-Christabell is candid:
		say "Recognizing your difficulty in getting your head around the concept, Christabell patient discusses at length how people gifted with spectral sight can see spirits.";
	otherwise:
		say "The term is not familiar to you, so instead you ask, [quotation mark]I never heard of that: [apostrophe]spectral sight[apostrophe] -- what is it?[quotation mark] [paragraph break][bold type]Christabell[roman type] appears surprised, but patiently replies, [quotation mark]It is a [bold type]Gifte[roman type], which I now presume to be hitherto unknown to You. Let us not make Haste with what does follow, for Experience has shewn me that Understanding may train behind my Wordes.[quotation mark] She pauses for emphasis, [quotation mark]The [bold type]spektral Seight[roman type] is the Ability of somme so-favoured by God’s [bold type]New Grace[roman type] to see [bold type]Spirits[roman type] as Substance. Thus, you are able to see and converse with me.[quotation mark][paragraph break][quotation mark][bold type]Spirits[roman type]?[quotation mark] You think to yourself that this conversation just jumped the shark.[paragraph break]";
		say benjack-ghosts.
	
To say benjack-ghosts: [jumping the shark!]
	benjack-jumpTheShark;  [triggers jumpTheShark scene]	
	say "You shake your head trying to put her words into some order that makes more sense. [quotation mark]Back the truck up, honey. [bold type]Spirits[roman type]? As in [bold type]ghosts[roman type]?[quotation mark] [paragraph break] [quotation mark]Not precisely, but but on Balance more Reight than Wronge -- and whilst you are styll of Mynd to listen, I should add that the Gifte is restricted a [bold type]lineage[roman type], which does fill me with Curiosity.[quotation mark] She looks appraisingly at your face, taking in the features. [paragraph break] [quotation mark]Wait. [bold type]Ghosts[roman type]?[quotation mark] you cannot get past the word. You brain doesn’t seem to be working very well just now. [paragraph break] [quotation mark]Indeed.[quotation mark ] She places a hand on your shoulder, but rather than the reassuring pressure and warmth of human touch, you feel a wave of coldness wash over you. [quotation mark]Tarry a Moment,[quotation mark] Christabell instructs, [quotation mark]until your Mind ceases its Fievre, lest it berne through the [bold type]Knotte of reason[roman type] and unravell you.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Lin:
	say "[one of][quotation mark]Tell me of [bold type]Lin[roman type],[quotation mark] you say.[paragraph break][quotation mark]In that Tymme, the [bold type]Towne[roman type] was barely establyshed, us being among the first to settle along the River where the Mill came to be built. The [bold type]Ironworkes[roman type] were already conceived of and Fowndacion layd when they did sent for my [bold type]Father[roman type], he being versed deeply in the Arts of Forging and also much skilt in the Emplacement of Edifices for such Worke.[quotation mark][paragraph break]Are we far from [bold type]Lin[roman type]?[quotation mark] you prompt.[paragraph break][quotation mark]Some many Miles, I do thynk, for we are Nowe ourselves in [bold type]Vermont[roman type], but [bold type]Lin[roman type] found itselff within the Governance of the [bold type]Massachusetts Colonie[roman type].[quotation mark] Christabell looks to the distance and adds, [quotation mark]Not all of us did call it [bold type]Lin[roman type] -- my Mother and Systers -- we did know it rather for the [bold type]Indian[roman type] Name of the River whereby we were set: [bold type]Saugus[roman type].[quotation mark][or]Christabell tell you of growing up in the town of Lin, or as it may be better known by some, Saugus.[no line break][stopping][paragraph break]";
	now yourself is benjack-lin_aware.	
	
After quizzing benjack-Christabell about benjack-ironworks:
	say "[one of][quotation mark]It was a Marvell of its Day. I have not in mei minds Eye a simple [bold type]Forge[roman type] nor even a Company of Smithies, but an entyre Factorie that did smelt the Earth[apostrophe]s Ores into Pigs and thence crafte them to wrought Werkes putting to shame anything carried on the Sea to us. Even the Masters that did instructe upon a tymme my Father, they did say howe fynne were his Pieces and I think they did harbour summe not little Jealousy thereby.[quotation mark][paragraph break][quotation mark]It sounds remarkable,[quotation mark] you add.[paragraph break][quotation mark]It did make us Prowde, yes, but did become to an Undoing.[quotation mark] Christabell casts her eyes to the ground, and for a moment, she seems less substantial -- you have the impression of looking straight through her towards the dark [bold type]cliffs[roman type] that frame this hollow. [quotation mark]No more need be sayed upon this dower Subjekt.[quotation mark][or]It seems to be something of a sore point with Christabell. One one hand, she’s proud of what her father accomplished in his forge constructed in the town of Lin, but on the other hand, it took him away from Christabell and her mother.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-gift:
	say "[one of][quotation mark]You mentioned [apostrophe]a Gift[apostrophe] -- that[apostrophe]s an odd turn of phrase. A gift from whom?[quotation mark][paragraph break][quotation mark]Yes, One of the many gifts of [bold type]Mattanit[roman type], one of the ways his [bold type]new Grace[roman type] doth manifest.[quotation mark][or]You get the impression that Christabell is using this in some sort of theological sense, like a gift from the gods.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-mattanit:
	say "[one of][quotation mark]Who,[quotation mark] you begin, [quotation mark]or what is [bold type]Mattanit[roman type][quotation mark]?[paragraph break]Christabell passes her hand five times in front of her heart and replies, [quotation mark]HE is the last Face of God, and blest are we for coming to know him.[quotation mark][paragraph break]This seems to take some of her strength and she rests her hand on a rail, [quotation mark]I long to say moor, but ‘tis so very draining… I haf not such moor straynthe within mee.[quotation mark][or]It sounds like Mattanit is something that Christabell worshipped.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-newgrace:
	say "[one of]Christabell replies, [quotation mark]Has Worde of [bold type]Mattanit[roman type][apostrophe]s [bold type]Third Covenant[roman type] not reached All even in these late Days? Why, it is by HIS New Grace that many Myrickles are accomplished, the dead browt to life, the Globe delievered to its righteous End.[quotation mark][or]According to Christabell, it is a gift that Mattanit bestowed upon his worshippers.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-covenant:
	say "[one of][quotation mark]That sounds kind of creepy. Third Covenant?[quotation mark] you ask.[paragraph break][quotation mark]Certainly,[quotation mark] replies Christabell, her face full of passion but also marked by fatigue. [quotation mark]You surely must knowe the [bold type]Covenant[roman type] of Abraham, and the New [bold type]Covenant[roman type] of our Lord Jesus Christ?[quotation mark][paragraph break][quotation mark]Well… not so much. I[apostrophe]m more of a died-in-the-wool atheist.[quotation mark][paragraph break][quotation mark]That Denomination is unfamiliar to me[quotation mark], replies Christabell. [quotation mark]No matter -- all of Christendom profits of this Newe Truth, for Our Sovereign [bold type]Mattanit[roman type] says, behold this, the third and finall [bold type]covenant[roman type] to serve the End of Tymmes[apostrophe]. This then be mie cleer and onely meaning.[quotation mark][paragraph break]Housing developments aside, you[apostrophe]re not even sure what a [apostrophe][bold type]covenant[roman type][apostrophe] is, much less what Christabell is rambling on about, so you just nod [quotation mark]okay[quotation mark] and wait for her to run out of steam[or]You are hesitant to bring this up again, because last time Christabell unleashed a word salad of religious mumble-jumbo, but it seems to be some kind of a promise that Mattanit made to his followers[stopping]."

After quizzing benjack-Christabell about benjack-knotte:
	say "[one of][quotation mark]The [bold type]Knotte of Reason[roman type] is the fibre within our Being what doth together bind in a regular manner our Faculties of Ratiocination, the Wellspring of our Creativity, the Vital Forces which impart our Weal, the Tepid Vapors of our Emotions, and the Restraining Compass of Moral Direction,[quotation mark] explains Christabell.[paragraph break]Seeing your glazed expression, she continues, [quotation mark]The [bold type]Knotte of Reason[roman type] doth pull the Needful against tensions be they substantial and invisible. Onely with the [bold type]Knotte[roman type] remaining intackt can you rest lucid of Speech and Wit. Let not it yield lest your sanity flow out of your Heade like the Newe Moon Tiyd.[quotation mark][or]If you followed her explanation correctly -- and that’s not a sure thing -- it sounds like when she says the Knotte of Reason, she means sanity.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-ghost for the first time:	
	say "[if benjack-Christabell is candid]You rub your temples to dispel the growing headache. [quotation mark][bold type]Ghost[roman type], [bold type]spirit[roman type] -- seems like six of one, half a dozen of the other.[quotation mark][paragraph break][quotation mark]Equateth not these Quantities within the Newe Mathimaticks?[quotation mark][paragraph break][quotation mark]Huh? Oh, yes. I suppose. But that[apostrophe]s my point -- I say [bold type]ghost[roman type], you say [bold type]spirit[roman type], to-may-to, to-mah-to, what[apostrophe]s the difference?[quotation mark][paragraph break][quotation mark]I do see whence your confusion proceeds. Before my own [bold type]Deathe[roman type], I would not have quibbled, but nowe the Difference is made Manifest. [end if]Simply put -- and must needes simply prai you attend my Wordes with do Conviction: Ghosts be not real, but Confabulaycion onely; the sorte told to afrayten Childeren and enjoin theyre Obedience. Any One who maketh the claym of having one caught Seight, I say is a lying dog and owt Penance gainst such Sinne.[quotation mark][paragraph break][quotation mark]So, [bold type]ghosts[roman type] fake, [bold type]spirits[roman type] real -- is that the gist?[quotation mark][paragraph break][quotation mark]You have shivvered the very shaft of mei Arguement with the whetted Arrow of Comprehencion.[quotation mark][paragraph break][quotation mark]I[apostrophe]ll take that as a yes.[quotation mark][paragraph break]".
	
After quizzing benjack-Christabell about benjack-ghost:
	say "According to Christabell, ghosts are made up, but spirits are real."	
	
After quizzing benjack-Christabell about benjack-spirit for the first time:
	say "Christabell has apparently been thinking about this subject at length and immediately rattles off an answer. [quotation mark][bold type]Spirits[roman type] are to be knowne by their Properties, of whych are three. Firstly, [bold type]Spirits[roman type] are Earthly but insubstantial continuations of Souls smote by Artifice rather than Nature. Secondly, a [bold type]spirit[roman type] doth find itself bownd to an objekt and hath not the freedom of mouvement. Thirdly and finally, a [bold type]Spirit[roman type] is by its Constitucion rendered Invisible, therewith accepting of [bold type]Spektral Seight[roman type], which maketh them plainly remarked, but only to those of [bold type]Lineage[roman type].[quotation mark][paragraph break][if benjack-Christabell is candid][quotation mark]So, I take it that you, Christabell, are a [bold type]Spirit[roman type]? And that you are bound here?[quotation mark][paragraph break][quotation mark]Close, but your hawrse-shew does fall wide its mark -- a [bold type]Spirit[roman type] I most assuredly am, and you seighted behold me, but ‘tis not to this hillside that I be affixed, but rather in some unexpected manner, to this great heap of [bold type]iron[roman type].[quotation mark][paragraph break][quotation mark]How…[quotation mark] you start to formulate some questions.[paragraph break][quotation mark]Tis a long and painful story, and more than I can bear to discuss at the moment.[quotation mark] Cristabel slumps forward, but catches herself. [quotation mark]I am owt of Practice, that this enjoyable Discourse of oures, so appreciated as Respite to my Solitude, has exhausted me to my Core.[quotation mark][end if][paragraph break]".
	
After quizzing benjack-Christabell about benjack-spirit:
	say "[if benjack-Christabell is candid]Christabell reiterates that she is a spirit and is bound to the pile of railroad tracks in some manner[otherwise]Christabell reiterates that spirits are invisible to everyone except those with spectral sight, and that spirits are bound to earthly objects[end if]."


After quizzing benjack-Christabell about benjack-lineage:
	say "[one of][quotation mark]Surely, you suspect -- your Eyes, your Fayce, your Carriage -- all about you I have seen in the Looking-glass. We are of a common Stock, you and I, whence stems your [bold type]Spektral Seight[roman type].[quotation mark][paragraph break][quotation mark]Because we[apostrophe]re both [bold type]Cragnes?[roman type][quotation mark] you ask.[paragraph break][quotation mark]Nay, neither, I reckon. No [bold type]Crâne[roman type] Blood runs -- fynne, I allow, did run, for sayke of Correctness -- did run through my Veinnes. My surname is ‘Burt[apostrophe], in case that catches notice. And if I do not mistake, you have not the Aspect of Fruite fallen from the gnarled Tree of the [bold type]Crânes[roman type] -- although I did once wot by Providence wot Happenstance, know a [bold type]Crâne[roman type] also, a certain [bold type]Carol[roman type], of Our [bold type]Lineage[roman type].[quotation mark][paragraph break][quotation mark]Am I a [bold type]Cragne[roman type]? No. I married one. [bold type]Peter[roman type] is a [bold type]Cragne[roman type] -- I just married in. We had blood tests and everything. Our kids won[apostrophe]t have two heads. I[apostrophe]m sure he and I aren[apostrophe]t related.[quotation mark][paragraph break][quotation mark]Tell me of your Ancestors,[quotation mark] Cristabell asks.[paragraph break][quotation mark]Going back a generation on my father[apostrophe]s side, he and his dad were carpenters in Lithuania and came to the US in 30s. He had a little shop in Hull...[quotation mark] Cristabell waves you on impatiently; clearly, that part of your ancestry does not excite her. [quotation mark]But on my mom[apostrophe]s side -- my birth mom, that is, her family traces back to the UK. My cousin a  school report on our family tree, and I think we go back to the Bassetts on that side. Does that ring any bells?[quotation mark][paragraph break][quotation mark]Like a Papist Belfry on the Newe Year.[quotation mark][paragraph break][quotation mark]...[quotation mark][paragraph break]Christabell clarifies, [quotation mark]My owne Mother was but one Generation remouved from Family Bassett. A wealthey Family, they did dwell not far a-way.[quotation mark][or]It turns out you and Christabell are distantly related. Going back to colonial times, you both descended from the Bassett family on your mothers[apostrophe] sides.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-witch:
	say "[one of][quotation mark]And where do [bold type]witches[roman type] come into all of this?[quotation mark] you query. [quotation mark]I mean, look around: spooky New England setting, all the history that[apostrophe]s tied up in place, [bold type]Peter[roman type][apostrophe]s freaky relatives, and the slap-dash poorly implemented crazy quilt madness of it all. It has to end with witch trials, right? Let[apostrophe]s check the cliché box and be done with it.[quotation mark][paragraph break][quotation mark][bold type]Witches?[roman type][quotation mark] Cristabell looks at you like a teacher preparing a special needs assessment. [quotation mark]Nay, I know not of [bold type]Witches[roman type] that do enter my account, though I am familiar with the legal precedent.[quotation mark] Seeing your skepticism, she continues, [quotation mark]Without question, I would know One to see One, a Woman of low Resolve who doth put her Hand to the Devills Book, is afflickted or doth afflickt others by Power of Possession. And I know that Summe upon whom the Devill has flashed find Joy inflicting the [bold type]Malificium[roman type], but there is none such in my Story. No [bold type]Witches[roman type], no Devill. I see this disappoints you, but I cannot speake other than forthwrightly.[quotation mark][or]Christabell is familiar with the term, but doesn[apostrophe]t think they are all that common.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-malificium:
	say "[quotation mark]It is said to be a [bold type]Witch[roman type]’s curse,[quotation mark] replies Christabell. [quotation mark]Summetymmes specifick in its Nature, oft a moor general Wishing of ill Fate. Thynk of it as a Blessing wrought backwardes.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-salem:
	say "[one of][quotation mark]Did you know anyone in [bold type]Salem[roman type]?[quotation mark][paragraph break][quotation mark][bold type]Salem[roman type]? I do believe that is where the Governor maketh his Residence, be it not?[quotation mark][paragraph break][quotation mark]Probably? But that[apostrophe]s not where I[apostrophe]m going with this -- Judges, wooden stakes, angry crowds with torches.... any of that familiar?[quotation mark][paragraph break][quotation mark]No, I cannot saie that it be. I knew little beyond the [bold type]Towne[roman type] of [bold type]Lin[roman type].[quotation mark][or]The only thing Christabell knows about Salem is that it was where the governor of Massachusetts used to live.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-puritan:
	say "[one of]You decide to take a crack at [bold type]Cristabell[roman type][apostrophe]s accent. Adapting a stiff posture and what you think is a dour frown, you give it your best shot. [quotation mark]How now and fair well met, pious lass. By what happenstance of Providence art thou here?[quotation mark][paragraph break][quotation mark]Sorry? Why has your Speache changed in this most remarkable Manner and wherein is consealed its Meaning?[quotation mark][paragraph break][quotation mark]Ah,[quotation mark] you continue, [quotation mark]I do addresseth thou as might a Puritan of Olde. Thoughtest me that thee wouldst liken it and be comforted it to it thereby rightly.[quotation mark][paragraph break][quotation mark]There is a Weirdnesse to it, I pray you put an end to it. It does grate upon my Ears. True, we are Separatists to the extent of our Politiks and Congregationalists after a Sorte, but not Puritans by half a League! Now, not another thou or thee, if you do please… Ough Kaye?[quotation mark][paragraph break][quotation mark]Okay.[quotation mark][or]For someone who talks like one, Christabell doesn[apostrophe]t like being called a puritan.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-pilgrim:
	say "[one of][quotation mark]Whereby did come such Fantastickal Notions?[quotation mark] Cristabell asks when you finally complete your long-winded question. [quotation mark]Not a Worde of that is Correkt, except that they did carry Musquets, which did not a speck of Goode, moor oftymes shotting One and an Other as much as Game.[quotation mark][paragraph break]Granted, history is a weak spot for you -- that[apostrophe]s why when it comes to quizbowl, you handle sports and entertainment and [bold type]Peter[roman type] tackles history and literature: you play to your strengths. However, your pride injured, you try to recover. [quotation mark]Yes, but when the Huguenots first landed on the shores of [bold type]Vermont[roman type]…[quotation mark][paragraph break]She cuts you off, [quotation mark]No more of this let us Speake; a Pain it doth bring down upon mei Browwe.[quotation mark][or]Christabell says that everything you think you know about early settlers in the New England colonies is wrong.[no line break][stopping][paragraph break]".
		
After quizzing benjack-Christabell about benjack-colony:
	say "[one of]She answers you factually, [quotation mark]You do speake of the Massachusetts Bay [bold type]Colony[roman type], which was settled by the Company of the same Name. I do thynk you harbour some confusion between it and the Plymouth [bold type]Colony[roman type], to hear you speake of it, and that many such Factes do stew about unproductively within your Brains, like Cud recently chewn within Cattel Tripes.[quotation mark][if benjack-Christabell is candid][paragraph break]Both [bold type]Colonies[roman type] were establyshed considerable Tymme befour I did arrive to the [bold type]Towne[roman type] of [bold type]Lin[roman type], and though there were summe Commerce betwixt, I did find them a queer and standoffish Lott.[quotation mark][end if][or]Christabell seems to know a lot about the early history of the colonies in Massachusetts.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-indian:
	say "[one of][quotation mark]Nowe that you do mention it, I am given to refleckt the Oddity that stands in Contrast to Experience of the Past, the [bold type]Native[roman type] People being both so numberous and skattered a-far and widely within these Shoures, Mountains, and Playns, each Home to sundry [bold type]Tribes[roman type] and Kinships, the Relations betwixt running like Streams o[apostrophe]er these Landes, that not One have I upon layd mei Eyes to sally along these Pathes or threw these Woods, despite my ever-constant Vigil. Strike you not that a Perplexity?[quotation mark][paragraph break]Still parsing that sentence, you reply, [quotation mark]I guess.[quotation mark][paragraph break]Christabell welcomes your remark as a confirmation with a nod and then gestures towards the dark [bold type]cliffs[roman type] surrounding you. [quotation mark]Ne[apostrophe]er the Lesse, do I sense they have long dwelt here, in this Place of Power. Though I have not the [bold type]Seight[roman type] of them, but not a doubt do I entertain in mind that they are all about us, teeming like bilge Ratts.[quotation mark][paragraph break][quotation mark]Yuck.[quotation mark][paragraph break][quotation mark]I meant in Numericity, not Demeanour.[quotation mark][if benjack-Christabell is candid][paragraph break][quotation mark]In my Youth, I did well knowe the [bold type]Tribes[roman type] near the [bold type]Towne[roman type] of [bold type]Lin[roman type] and after awhile, those further owt from not onely our mutual Trade, but in later Tymmes, mei Werke in the Understanding of theyr divers Tongues, Coustumes and Teachings. It was threw them that mei Father did profit summe of their Science, any mei Mother of theyr Wisedom, they haffing made introducion to us of [bold type]Mattanit[roman type] and the [bold type]Third Covenant[roman type].[quotation mark][end if][or]There used to be a lot of American Indians around this area, but Christabell says that few are seen these days.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-mark when benjack-R1 is happening or benjack-R0 is happening:
	say "[one of][quotation mark]A [bold type]Mark[roman type] is a special Touch whereby a [bold type]Spirit[roman type] does grant Favour to One still a-live by laying upon the One so-gift[apostrophe]d summe small Splintre of their own Essence. Those haffing the [bold type]seight[roman type] will reckognise it a brawnish Stain upon the marked, but Others will not it ken.[quotation mark][paragraph break][quotation mark]Sounds like an evil cow brand for the soul.[quotation mark][paragraph break][quotation mark]The Marking is neither maleficent nor beneficent, it being onely a Reflection of [bold type]Spirit[roman type] from whence it doth floe.[quotation mark][paragraph break][quotation mark]Why would anyone agree to be marked, though?[quotation mark] [paragraph break][quotation mark]In a sense, it be a Blessing for it doth warde the One a-gainst depredations of inimickal [bold type]Spirits[roman type] and by its Presence exclude unwillful Markings thereafter. More of a Pointe, such Magickal Capacities as possessed the Donor are bestown thereby for exercise upon the Will of the Begift[apostrophe]d.[quotation mark][or]According to Christabell, spirits can imprint their mark on people, and it somehow endows those people with magical powers. Apparently, a person can only be marked once, or so she says.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Carolsubject when benjack-R0 is happening:
	benjack-jumpTheShark;  [jumping the shark]
	say "[one of][quotation mark]Carol. Yes, what to say of Carol...[quotation mark] Cristabell stares into the sky, collecting her thoughts. [quotation mark]I do not Knowe. In different tymmes, she was many things to mee, and I to her, being related not onely of [bold type]Lineage[roman type] but of Minde. She lived not far from here in Manse of Family [bold type]Crâne[roman type].[quotation mark][paragraph break][quotation mark]Then you knew her in your [bold type]youth[roman type]?[quotation mark][paragraph break][quotation mark]No, not mine but hers -- I had long before met my owne [bold type]Deathe[roman type]. In her [bold type]Youth[roman type], she would oft come here and suffer my Companionship; less so, as she did flower to Womanhood, though. I do sincerely avow committing every Efforts and Care to her goode and proper Upbringing and polite Formation, but she was remarkable headstrong and sharp of wit like broken Glass. Even with my [bold type]mark[roman type] set upon her, she did suffer the Corruption and Poyson of that House. I urged her to remain away, but every Summer it did call her back to itself.[quotation mark][paragraph break][quotation mark]Is she still there? In the mansion?[quotation mark][paragraph break][quotation mark]I need so beleeve, though I have not seen her since her [bold type]Deathe[roman type].[quotation mark][or]Carol received Christabell’s mark and was at one time her protegée.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-death:
	say "[one of]Christabell shrugs, [quotation mark][bold type]Deathe[roman type] is much exaggerated Botheration. For most, an end; for [bold type]Spirits[roman type], a temporary annoyance. I would not dwell much upon it, for generally it is unavoidable.[quotation mark][or][quotation mark]Why so morose?[quotation mark] asks Christabell, promptly changes the subject.[no line break][or][quotation mark]Enough about me,[quotation mark] says Christabell, [quotation mark]do tell me of [bold type]yourself[roman type].[quotation mark][stopping][paragraph break]".


Chapter R0 Events

[Basic stage business for Christabell before player interacts with her.]
Every turn while benjack-Christabell is unaddressed:
	if player is in DAN8, say "[one of]The woman looks into the distance and sighs.[or]The woman holds your gaze and descends the iron pile; entranced by her stare, you don’t notice how she manages to clamber down, but however she does it, she manages it silently.[paragraph break]She places her hands on her hips and stands uncomfortably close to you, looking you over.[paragraph break][italic type]This is awkward, you think[roman type].[or]The woman slowly ambles around the pile of tracks, staring at her feet.[or]The woman gazes in your direction, but appears to be almost looking through you.[or]The woman leans up against the tracks, lost in thought.[stopping]".

[trigger for eagerness state:  any interaction at all!]
Instead of doing something when the noun is benjack-Christabell or the second noun is benjack-Christabell and benjack-Christabell is unaddressed:  
	now benjack-Christabell is eager;
	say "[quotation mark]Oh, so you can see me, then, can you?[quotation mark] she asks, taking a step back.[paragraph break]".
	
To say benjack-talk-hint:
	say "[bracket] Hint: You can say things like [quotation mark]yes[quotation mark], [quotation mark]no[quotation mark], [quotation mark]hello[quotation mark], [quotation mark]bye[quotation mark], and ASK / TELL [italic type]someone[roman type] about different [bold type]subjects[roman type] [close bracket]".
	
[TOCONSIDER: another hint after successful ask/tell letting the player know that it's possible to abbreviate it to just "t subject" or "a subject"]

test eager with "x tracks / x sky / go east / i / x woman"

[Stage business while awaiting Naomi's reply]
Every turn while benjack-Christabell is eager:
	if player is in DAN8,	say "[one of][quotation mark]Can you see me?[quotation mark][or][quotation mark]Hello? Pray respond!  Can you understand me?[quotation mark][or]The woman seems more desperate now. [quotation mark]Milady, do you see me?[quotation mark][or]The woman stares at you nervously, waiting for a yes-or-no acknowledgement of her presence.[stopping][paragraph break]".

[TODO:  wasn't able to use "for the first/second time" in conjunction with "during spiritWantsAttention".  This is my hack.]
The player has a number called benjack-guiltLevel.  The benjack-guiltLevel of the player is 0.
Before going when benjack-Christabell is eager:
	if benjack-guiltLevel of the player is 0:
		now benjack-guiltLevel of the player is 1;
		instead say "Although this unexpected encounter is unnerving, the stranger[apostrophe]s eager smile puts you at ease.[paragraph break][italic type]Perhaps she is lost,[roman type] you think. [italic type]Maybe she is one of Peter[apostrophe]s cousins. In any event, it would be the height of impoliteness to just wander off.[roman type][paragraph break][quotation mark]So, you can then? See me, that is?[quotation mark][paragraph break]";
	else:
		say "[one of][italic type]Screw politeness,[roman type] you say to yourself. [italic type]This day has been weird enough. Whoever she is, if she’s just going to loom at you in the darkness, that’s her problem.[roman type][paragraph break]With renewed determination, you steam off towards the trail, glad to be quit of her.[paragraph break][quotation mark]Fine, then, waifsome Trompe,[quotation mark] she mutters.[quotation mark] Stickly Clod. Upstuckt Wench! Be that like. I expect not Civility from a Crâne, their Rudeness does tell the Tale. Be off then, and the long Vigil I onely will endurre.[quotation mark][paragraph break][or]You wander off, ignoring the woman.[stopping]”;
		continue the action.	

Instead of saying no when benjack-Christabell is eager:
	say "[one of][quotation mark]No?[quotation mark] Her head cocks to one side. [quotation mark]No, you can’t see me?[quotation mark][paragraph break]She walks around you, looking you over, [quotation mark]Yet, Evidence lets no Doubte but that you can perceeve in some Manner mee, that the Sound of mie Speeche is made apparent to you. Mayhap your Visione be afflickted and dim, nonetheless if you lacked the Gifte of specktral Seight, you would not know me apart from a will-o[apostrophe]-the-wisp.[quotation mark][paragraph break][quotation mark]In Truth now, I pray you unless the English Tongue has so changed that my Wordes meaning is opposed to Itself, grant me that you have Comprehension of mie Speeche, will you?[quotation mark][or]She starts to reply, but then appears confused. [quotation mark]No.[quotation mark] she says to herself.[paragraph break][quotation mark]But then in what Fashion… if you cannot make understoode…[quotation mark][paragraph break]She stares at the black face of the surrounding cliffs for inspiration.[no line break][or]She appears utterly puzzled at your reply.[no line break][stopping][paragraph break]".

Instead of saying yes when benjack-Christabell is eager:
	now benjack-Christabell is chatty; [trigger into main conversation]
	say "[quotation mark]How wonderfull![quotation mark] She sits on a rail jutting out of the pile and pats the space beside her. [quotation mark]Tis a frightfull long Tymme since I did haf the Oppourtunity to speake with One graced with the [bold type]Seight[roman type] -- no [bold type]Crâne[roman type], then you, but one among our Number. Do then, please, speake to me about [bold type]yourself[roman type].[quotation mark][paragraph break]She pauses for a breath, [quotation mark]Oh, but first, where are my Manners? I do beg your Pardon most sincerely: I am called [bold type]Christabell[roman type].[quotation mark][paragraph break]She looks at you with anticipation.[paragraph break]".
	
Instead of touching benjack-dirt:
	say "[one of]Raspy and sharp, perhaps volcanic[or]Abrasive[stopping]."
	
Before going a direction (called the way) when benjack-R0 is happening and benjack-Christabell has been chatty and the location is DAN8:
	if the room the way from the location is nothing:
		continue the action;
	otherwise:
		say "[one of]Cristabell calls after you, [quotation mark]Naomi, I do thank you for diverting summe Houres with mee in Discourse sweet. I do entreat you return upon your Convenience that we may again share some Werdes.[quotation mark][or][quotation mark]Do endeavour to mind yourself amongst the Crânes, Naomi.[quotation mark][paragraph break][quotation mark]I will. I always do.[quotation mark] You shout back, as you walk away.[no line break][or][quotation mark]I shall not keep you further from your most industrious Perambulations,[quotation mark] Christabell jests.[paragraph break][quotation mark]See you later,[quotation mark] you call back to her.[paragraph break][quotation mark]I do most fervently so desire![quotation mark][or][quotation mark]Go with the my Blessing, Naomi![quotation mark] Christabell says cheerfully as you depart.[paragraph break][quotation mark]May the Force be with you![quotation mark][paragraph break][quotation mark]Of what Forces do you speake, Friend?[quotation mark][paragraph break][quotation mark]Nevermind, it[apostrophe]s just how we say goodbye these days.[quotation mark][paragraph break][quotation mark]Truly the Werlde of the Future be a Marvel.[quotation mark][or]Christabell bids you well, as you depart.[no line break][stopping][paragraph break]".
		
Before going a direction when the location is juxtaDAN8 and M2F3 is unvisited and benjack-Christabell has been chatty:
	if the room the noun from the location is DAN8:
		say "[one of][quotation mark]Ah, I do bid you again Greeting, Naomi. You do seem much busy to-Daye in your Wanderings.[quotation mark][or][quotation mark]I am glad your Pilgrimage does take you mie Waie yet once moor, dear Naomi![quotation mark] says Christabell as she prances up beside you along the path.[no line break][or][quotation mark]It seems you are drawn like a bee to my honey, dear Naomi.[quotation mark][paragraph break][quotation mark]Um. Maybe a little awkwardly phrased, but it[apostrophe]s nice to see you too, Christabell.[quotation mark][or]Christabell smiles warmly with your return to her hillside.[no line break][stopping][paragraph break]";
	otherwise:
		continue the action.

Chapter R0 Tests

test icebreak with "up/x woman/yes/tell woman about self"

test R0-full with "s / talk to woman / say hello / yes / tell christabell about me / g / t peter / g / t vermont / g / t cragne / g / a christabell / g / t youth / g / a sight / g / a youth / g / a lin / g / a vermont / g / a naomi / g / a peter / g / a cragne / g / a rayle / g / a mound / x mound / a christabell / look / a cliff / climb cliff / g / x clearing / g/ a clearing / g/ a trail / g / x weeds / a lin / a forge / g / a gift / g / a mattanit / g / a grace / g / a third / g / a knotte / g / a ghost / g / a spirit / a lineage / a witch / g / a malificium / g / a salem / g / a puritan / g / a pilgrim / g / a colony / g / a indian / g / a mark / g / a carol / x carol / a carol / n / s / n / s / n / n / s / s / s / sw / ne / se / nw".

Part 3 - Scene N1 Tea Party

Rule for printing the name of a benjack-runebook (called the evil tome):
	say "[printed name of the evil tome]";
	omit contents in listing.

Chapter 1 - N1 Conversation

Section 1 - N1 Subjects

benjack-Stonington is a subject.  Understand "Stonington" as benjack-Stonington when the location is in the benjack-realm.

benjack-Connecticut is a subject.  Understand "connecticut" as benjack-connecticut when the location is in the benjack-realm.

benjack-DeepOnes is a subject.  Understand "deep/ones/one" as benjack-DeepOnes when the location is in the benjack-realm.

benjack-CarolFather is a subject.  Understand "father/dad/daddy/Hugo" as benjack-CarolFather when the location is M2F3.

benjack-NewLondon is a subject.  Understand "new/london" as benjack-NewLondon when the location is in the benjack-realm.

benjack-Groton is a subject.  Understand "groton" as benjack-Groton when the location is in the benjack-realm.

benjack-GeneralDynamics is a subject.  Understand "general/dynamics/dynamic" as benjack-GeneralDynamics when the location is in the benjack-realm.

benjack-submarine is a subject.  Understand "submarine/submarines/boat/boats/sub/subs/bathyscaphe/bathyscaphes/bathysphere/bathyspheres/submersible/submersibles" as benjack-submarine when the location is in the benjack-realm.

benjack-job is a subject.  Understand "job/work/employment/occupation/business" as benjack-job when the location is in the benjack-realm.

benjack-nautilus is a subject.  Understand "nautilus" as benjack-nautilus when the location is in the benjack-realm.

benjack-date is a subject.  Understand "date/year/today" as benjack-date when the location is in the benjack-realm.

benjack-CarolMother is a subject.  Understand "mother/mom/mommy/mum/Joan" as benjack-CarolMother when the location is M2F3.

benjack-communists is a subject.  Understand "communist/communists/commie/commies/red/communism/soviet/russian/russians/spy/spies/enemy/enemies/russki/russkis/russky/ruskies/russkys" as benjack-communists when the location is in the benjack-realm.

benjack-CarolteaParty is a subject.  Understand "tea/party/ceremony/ritual/rite/parties/rituals/rites" as benjack-CarolteaParty when the location is M2F3.

benjack-bottomsUp is a subject.  Understand "bottoms/up/bottoms-up" as benjack-bottomsUp when the location is in the benjack-realm.

benjack-ChristabellSubject is a subject.  Understand "Christabell/Bella/Christie/Christabelle/Christobell/Christobelle" as benjack-ChristabellSubject when the location is M2F3.




[scrapbook is already defined as a subject]

[

benjack-xxx is a subject.  Understand "xxx" as benjack-xxx when the location is in the benjack-realm.

]

Section 2 - N1 Quips

After quizzing benjack-Carol about benjack-Carol:
	say "[one of][quotation mark]About me?[quotation mark] the girl grins and folds her hands, [quotation mark]I am five years old and I can tie my own shoes, except that these ones don[apostrophe]t have laces, and I can read some books, even if they don[apostrophe]t have pictures, although I prefer the ones with pictures.[quotation mark][paragraph break]She looks around the room. Gesturing to the animals seated at the table and perched on the bed, she continues, [quotation mark]I have a lot of friends to keep me company when I[apostrophe]m here, which is all the time now, since my father says that it is better for me to be raised by the Cragnes on account of he is so busy at work and mother has so many guests to entertain. Which is fine. I[apostrophe]m used to it because I have been here since I was a baby except sometimes when I visit Stonington.[quotation mark][or]Carol is only too happy to prattle on about her daily routine of kindergarten and playing in her room with her toys. You do a lot of nodding.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-Stonington:
	say "[one of][quotation mark]That[apostrophe]s where mom and dad live. It[apostrophe]s in Connecticut. They live there because it is near where Dad[apostrophe]s job.[quotation mark][or][quotation mark]I don[apostrophe]t know. It[apostrophe]s a place, I guess. It takes us a while to drive there and there are more buildings around. I like going there because I can see the water -- not like a lake, but real salt water where the Deep Ones live.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-Connecticut:
	say "[quotation mark]I don[apostrophe]t know. It[apostrophe]s a place, I guess. It takes us a while to drive there and there are more buildings around. I like going there because I can see the water -- not like a lake, but real salt water where the Deep Ones live.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-DeepOnes:
	say "[quotation mark]I[apostrophe]ve never seen one, but I guess they are sort of like squid or something, but really huge. I think dad talks to them sometimes.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-CarolFather:
	say "[one of][quotation mark]His name is Hugo, which is a weird name, but dad says it[apostrophe]s not too weird because lots of Cragnes have been named Hugo. He[apostrophe]s the kind of engineer that doesn[apostrophe]t work on trains. He works really hard all the time and helps build boats to keep America safe. Sometimes he works in an office across the river, that[apostrophe]s in New London and sometimes he goes to the dock on our side of the river, where they build the boats. I went there once, but didn[apostrophe]t see much because everything is indoors where you can[apostrophe]t go except the boat and I didn[apostrophe]t see much of the boat because only the top sticks out of the water. That[apostrophe]s the part where you go in and out, so it has to stick out.[quotation mark][or]Carol says that her father, Hugo, is an engineer at a firm that constructs submarines.[no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-NewLondon:
	say "[quotation mark]It is sort of a city, but not a big one. Dad[apostrophe]s office is there, and it[apostrophe]s pretty close to our house in Stonington.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-Groton:
	say "[quotation mark]Yeah, that[apostrophe]s the place where they build the boats at General Dynamite, or something like that.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-Groton:
	say "[quotation mark]That[apostrophe]s the company my dad works at.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-submarine:
	say "[one of][quotation mark]Dad says that he does the math that helps the other men build the boats and he helps them go really far and stay underwater for a long, long time. He is making a new one right now that doesn[apostrophe]t even need gas. Dad says that math is really important because if they make mistakes, the boats can sink. Sometimes the boats sink, but not because of mistakes, and dad says that is the Deep Ones taking their due, and there isn[apostrophe]t much you can do about that, so he just tried to get the math right.[quotation mark][or]In talking about the submarines that her father helps design, Carol also, alarmingly, frequently mentions the Deep Ones.[no line break][stopping][paragraph break]".
	
Instead of quizzing benjack-Carol about benjack-job:
	try quizzing benjack-Carol about benjack-submarine.

After quizzing benjack-Carol about benjack-nautilus:
	say "[quotation mark]I think that[apostrophe]s what dad calls his new boat.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-date:
	say "[quotation mark]I dunno,[quotation mark] says Carol with a shrug."
	
After quizzing benjack-Carol about benjack-CarolMother:
	say "[one of][quotation mark]Her name is Joan, but everyone just says Misses Cragne. I don[apostrophe]t see mom hardly at all because she has so many parties to run all the time. I don[apostrophe]t understand why so many; some are called luncheons, and people have lunch and talk, and some are called cocktail parties, and I don[apostrophe]t see the point of that because there isn[apostrophe]t very much to eat and people yell a lot and sometimes a taxi has to come and they need to leave. Mom says all the wives have to have parties, and that is their job, just like the husbands need to go to the office, except for poor families, which don[apostrophe]t have jobs or parties.[quotation mark][or]Carol[apostrophe]s mom sounds like a stereotypical 1950[apostrophe]s housewife.[no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-communists:
	say "[quotation mark]Communists are the bad guys,[quotation mark] explains Carol. [quotation mark]They always want to hurt us and take our stuff. But we[apostrophe]re lucky, because Ike will keep America safe.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about mtw-teapot:
	say "[one of][quotation mark]It[apostrophe]s grand-uncle[apostrophe]s teapot. He got it on one of his ocean voyages and he really likes it, so I[apostrophe]m not suppose to touch it, but it[apostrophe]s just perfect for the tea party because it is so fancy. Cristabell tried to show me the party without the tea once but that didn[apostrophe]t make any sense, so I asked if her we could be like mom and have a party and she said that might be more easier, so that[apostrophe]s what we did, and when I want to have a tea party, I always find grand-uncle[apostrophe]s tea pot.[quotation mark][or]Apparently, it is Carol[apostrophe]s grand-uncle[apostrophe]s teapot, and she[apostrophe]s not really supposed to be playing with it.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-ChristabellGrandUncle:
	say "[one of][quotation mark]He[apostrophe]s really cranky and is always telling me not to touch his stuff and to get off stuff and not too sing too loud.[quotation mark][paragraph break][quotation mark]Yes,[quotation mark] you say, trying to reign in the conversation, [quotation mark]but does he have a name?[quotation mark][paragraph break][quotation mark]I[apostrophe]m sure he does, but I just call him great-uncle. He says that only the Deep Ones should not be named.[quotation mark][or]Carol sure doesn[apostrophe]t know much about this grand-uncle of hers, except that he[apostrophe]s a grumpy old guy.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-CarolteaParty:
	say "[one of][quotation mark]I do just love tea parties![quotation mark] Carol buzzes. [quotation mark]I invite all my friends, and it[apostrophe]s so grown up![quotation mark][paragraph break][quotation mark]Why a tea party?[quotation mark][paragraph break][quotation mark]Because we drink tea at it, of course.[quotation mark][paragraph break][quotation mark]No, I mean, why did you decide to have a tea party and not some other sort of party, like the kind with balloons.[quotation mark][paragraph break][quotation mark]I don[apostrophe]t have any balloons. Besides, when we were trying to do this, Christabell said that a tea party would help us focus and showed me how, and now when I get tired or start to fade, we have a tea party and that sets everything right again. Plus, I really like tea.[quotation mark][if benjack-times_bestowed of yourself is 0][paragraph break][quotation mark]Are you ready to begin?[quotation mark] she asks eagerly. [quotation mark]I[apostrophe]ll pour. Since you[apostrophe]re the guest, you have to be the one to say ‘bottoms-up[apostrophe].[quotation mark][end if][or][if benjack-times_bestowed of yourself is 0]Carol had some odd tastes for a five-year-old and seems hell bent on having a tea party. She reminds you that to start it you have to (for some reason known only to Carol) say, [quotation mark]bottoms-up[quotation mark][otherwise]It[apostrophe]s Carol[apostrophe]s idea of a fun afternoon[end if].[no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-CarolteaParty:
	say "In the make-believe logic that only five year-olds can understand, Carol believes that saying [quotation mark]bottoms-up[quotation mark] is the right way to start a tea party.[no line break][if benjack-times_bestowed of yourself is 0][paragraph break][quotation mark]Oh, I do wish you would say it -- as my father says when he comes home, ‘today was murder -- I really need a drink[apostrophe].[quotation mark][paragraph break][quotation mark]I don[apostrophe]t want to ruin your fun,[quotation mark] you say, [quotation mark]but there[apostrophe]s no tea in the teapot. What are you going to pour?[quotation mark][paragraph break][quotation mark]Geez Louise, Naomi. It[apostrophe]s pretend! All right? It[apostrophe]s just pretend tea. if you would just say ‘bottoms-up[apostrophe] we could get this party started.[quotation mark][end if][paragraph break]".

After quizzing benjack-Carol about benjack-bottomsUp:
	say "In the make-believe logic that only five year-olds can understand, Carol believes that saying [quotation mark]bottoms-up[quotation mark] is the right way to start a tea party."

After quizzing benjack-Carol about benjack-ChristabellSubject:
	say "[one of][quotation mark]She[apostrophe]s out by those rocks,[quotation mark] says Carol, pointing out the window towards some dark cliffs. [quotation mark]I go out there all the time and we talk and play and do stuff. She taught me to read, you know.  Mom and Dad aren[apostrophe]t around and the Cragnes don[apostrophe]t really care about me (mom once said they only took me for the money, because they[apostrophe]re not rich like they used to be), so that[apostrophe]s where I go when the weather isn[apostrophe]t too bad.[quotation mark][paragraph break][quotation mark]You know, she[apostrophe]s not alive, right?[quotation mark] You try to say it gently, but feel the girl needs to know.[paragraph break][quotation mark]Sure, she[apostrophe]s a spirit -- don[apostrophe]t call her a ghost because she says that not correct. I mean, gee whiz, at this point, I[apostrophe]m one too. It[apostrophe]s no big deal.[quotation mark][or]Carol says she knows all about Christabell and seems surprisingly comfortable knowing that she is a spirit.[no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-Cragne:
	say "[one of][quotation mark]This place is full of them. I[apostrophe]m not supposed to wander around the mansion, but whenever I escape from my room and poke around I find new ones -- in the fountain, behind the bookcase, under the floorboards, above the attic -- it[apostrophe]s like playing hide and seek.[quotation mark][paragraph break][quotation mark]Which ones in particular?[quotation mark] you ask.[paragraph break][quotation mark]Oh, they[apostrophe]re all pretty much the same, so I don[apostrophe]t pay attention. The only I really talk to much is grand-uncle.[quotation mark][or]From Carol[apostrophe]s description, it doesn[apostrophe]t sound like the Cragnes have taken very good care of Carol at the mansion.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-elephant:
	say "[quotation mark]Mister Snortles is a busy executive and he makes a lot of money and is very powerful, so people do things for him. He tends to be a bit short-tempered sometimes, but that is only because he doesn[apostrophe]t have a wife to take care of him.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-lamb:
	say "[quotation mark]Misses Winkelbottom lives in a very fancy house and has a lot of luncheons at her house, although she spends some of her afternoons at the country clubs as well. Her closets are full of beautiful dresses and she knows how to dance.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-monkey:
	say "[one of][quotation mark]Daddy showed me some of the monkeys where he works, and I thought they looked sad in their cages since they couldn[apostrophe]t run around because of all the wires. Father said that they are happier than they look and besides the experiments are important and that they[apostrophe]re helping us fight our enemies, so they should be happy. Then he sent me Young Master Sweetpaws, so I could have a monkey of my own.[quotation mark][paragraph break]She pats the sock monkey on his shoulder, [quotation mark]Yes, Sweetpaws, I know that the other monkeys are not happy, but father says they need to suck it up.[quotation mark][or]Carol says that her sock puppet monkey disappears at night to do who knows what.[no line break][stopping][paragraph break]".


Chapter 2 - N1 Event

[kill the (empty) in inventory listings durng this scene]
Rule for printing the name of a mtw-teapot when benjack-N1 is happening:
	say "[printed name of mtw-teapot]";
	omit contents in listing.

Before going a direction when the location is juxtaDAN8 and benjack-N1 has happened and yourself is not benjack-spell_enabled:
	if the room the noun from the location is DAN8:
		say "You round the path and find yourself in a familiar knoll flanked on three sides by tall, dark cliffs. In the center of a clearing before you is a huge pile of rusting railroad track.[paragraph break]Leaning back against the pile of iron, [benjack-Christabell] gives you a fatigued wave and after some exertion of effort becomes more substantial.";
	otherwise:
		continue the action.


Chapter 3 - N1 Tests

Part 4 - Scene R1 Naomi is Marked and Learns Some Spells

When benjack-R1 begins:
	if benjack-Christabell is not candid, now benjack-Christabell is bypassed.

Chapter 1 - R1 Conversation

Instead of conversing or hailing for the first time during benjack-R1:
	if benjack-Christabell is candid:
		say "Christabell squints as she looks at you, shading her eyes with her hand.[paragraph break][quotation mark][bold type]Runes[roman type] of the [bold type]Deep Ones[roman type] preserve us, Naomi. By";
	otherwise:
		say "So, back are you? Let us do hope you be moor of a polayte and conversing Sorte this Tymee, [bold type]Naomi[roman type]. Oh, yes, your Name be written clear as Daye in your Eyes, and I do see that this Daye has shewn you moor of [bold type]sprit[roman type] Kinde, so I shall not be dansing about so with mie Werdes as to pull so tayt your [bold type]Knotte of Reason[roman type].[paragraph break]Now then, by";	
		now benjack-Christabell is candid;
	say " what Artefise are you so surfeited of Potence, that Louminance does burne mightily about you. Had I Haires upon my Bodie, they would upon their very Ends stand aright, you do so exude Glamour. By what Manner did that come to pass, I do wonder.”.

Section 1 - R1 Subjects

benjack-Runes is a subject.  Understand "rune/runes" as benjack-Runes when the location is in the benjack-realm.

benjack-Potence is a subject.  Understand "Potence/Power" as benjack-Potence when the location is in the benjack-realm.

benjack-Luminance is a subject.  Understand "luminance/louminance" as benjack-Luminance when the location is in the benjack-realm.

benjack-Glamor is a subject.  Understand "glamor/glamour" as benjack-Glamor when the location is in the benjack-realm.

There is a subject called benjack-Marked.  Understand "marked" as benjack-Marked when the location is in the benjack-realm.[inverted the declaration because inform trips over "marked" as a likely adjective]

benjack-Fusion is a subject.  Understand "fusion" as benjack-fusion when the location is in the benjack-realm.

benjack-Remedy is a subject.  Understand "remedie/remedy" as benjack-Remedy when the location is in the benjack-realm.

benjack-Bestowance is a subject.  Understand "bestowance" as benjack-Bestowance when the location is in the benjack-realm.

benjack-Nirramonk is a subject.  Understand "nirramonk" as benjack-Nirramonk when the location is in the benjack-realm

benjack-Nipmuk is a subject.  Understand "nipmuk" as benjack-Nipmuk when the location is in the benjack-realm.

benjack-Kaballah is a subject.  Understand "kaballah/alchemy/numerology/secrets/fjord/illuminati/gnomes/rosacrucians" as benjack-Kaballah when the location is in the benjack-realm.

benjack-InvisibleWorld is a subject.  Understand "invisible/world" as benjack-InvisibleWorld when the location is in the benjack-realm.

benjack-Restful is a subject.  Understand "restful" as benjack-Restful when the location is in the benjack-realm.

benjack-Avenged is a subject.  Understand "avenged" as benjack-Avenged when the location is in the benjack-realm.

benjack-Creature is a subject.  Understand "creature/being/monster/abomination/werewolf/vampire/creatures/beings/monsters/abominations/werewolfs/werewolves/vampires" as benjack-Creature when the location is in the benjack-realm.

benjack-Longhouse is a subject.  Understand "longhouse" as benjack-Longhouse when the location is in the benjack-realm.

benjack-modernAge is a subject.  Understand "modern/age/future" as benjack-modernAge when the location is in the benjack-realm.

benjack-Demise is a subject.  Understand "demise" as benjack-demise when the location is in the benjack-realm.

Understand "death/deathe" as benjack-demise when benjack-R0 has happened.

benjack-Obsession is a subject.  Understand "obsession/compulsion/obsessions/compulsions" as benjack-Obsession when the location is in the benjack-realm.

benjack-Mill is a subject.  Understand "mill/spur" as benjack-Mill when the location is in the benjack-realm.

benjack-Edgar is a subject.  Understand "Edgar" as benjack-Edgar when the location is in the benjack-realm.

benjack-Victor is a subject.  Understand "Victor" as benjack-Victor when the location is in the benjack-realm.

benjack-Hugo is a subject.  Understand "Hugo" as benjack-Hugo when the location is in the benjack-realm.

benjack-CircularPrison is a subject.  Understand "circular/prison" as benjack-CircularPrison when the location is in the benjack-realm.

benjack-ChristbellFather is a subject.  Understand "father/dad/daddy" as benjack-ChristbellFather when the location is in DAN8.

benjack-ChristabellMother is a subject.  Understand "mother/mom/mommy/mum" as benjack-ChristabellMother when the location is in DAN8.

benjack-Breeves is a subject.  Understand "preacher/ewen/breeves/pastor/priest" as benjack-Breeves when the location is in the benjack-realm.

benjack-Leif is a subject.  Understand "doctor/prichard/leif/professor" as benjack-Leif when the location is in the benjack-realm.

benjack-Jealousy is a subject.  Understand "jealousy" as benjack-Jealousy when the location is in the benjack-realm.

benjack-Skirmish is a subject.  Understand "skirmish/skourmuch" as benjack-skirmish when the location is in the benjack-realm.

benjack-Sachim is a subject.  Understand "sachim/chief/chieftess" as benjack-Sachim when the location is in the benjack-realm.

benjack-ChristabellTeaParty is a subject.  Understand "tea/party" as benjack-ChristabellTeaParty when the location is in DAN8.

benjack-ChristabellToys is a subject.  Understand "toy/toys/stuffed/animals/monkey/lamb/clown/elephant/mister/snortles/misses/winkelbottom/malice/master/sweetpaws/chimpanzee/animal/doll/dolls/puppet/puppets/sock/sockpuppet" as benjack-ChristabellToys when the location is DAN8.

benjack-Unfolding is a subject.  Understand "unfolding" as benjack-Unfolding when the location is in the benjack-realm.

benjack-ChristabellScrapbook is a subject.  Understand "scrapbook" as benjack-ChristabellScrapbook when the location is in the benjack-realm.

benjack-ChristabellGrandUncle is a subject.  Understand "grand-uncle/grand/uncle" as benjack-ChristabellGrandUncle when the location is in the benjack-realm.

benjack-Mansion is a subject.  Understand "mansion/manse/estate/edifice/house/building" as benjack-Mansion when the location is in the benjack-realm.

benjack-Mirror is a subject.  Understand "mirror" as benjack-Mirror when the location is in the benjack-realm.

benjack-Seeming is a subject.  Understand "Seeming" as benjack-Seeming when the location is in the benjack-realm.

benjack-XizziSpell is a subject.  Understand "xizzi" as benjack-XizziSpell when the location is in the benjack-realm. 

benjack-PloughverSpell is a subject.  Understand "ploughver" as benjack-PloughverSpell  when the location is in the benjack-realm.

benjack-KHSpell is a subject.  Understand "kwisatz/haderach" as benjack-KHSpell when the location is in the benjack-realm.

Section 2 - R1 Quips

After quizzing benjack-Christabell about benjack-Runes:
	say "[one of]Pleased that you are taking an interest, Christabell launches into an explanation.[paragraph break][quotation mark]Whomesoever do werke a Magick, hee leaveth in Posterity Signes that summe might read thereafter; these be their Runes.[quotation mark][paragraph break][quotation mark]Sort of a record, then?[quotation mark] you inquire.[paragraph break][quotation mark]Not onely, for in wroughting any Magick, a natural Direction must be followed as Ice doth melt and flow downward as a Mountain Stream and not upwards to the Peake, so Potence must channel fruitfully. As a Log burnt doth comforting Heat provide, so Runes be the Ashes. Get you mie Drifte?[quotation mark][paragraph break][quotation mark]So, it[apostrophe]s sort of a nebulous mystical wake left behind by magic?[quotation mark][paragraph break][quotation mark]Nay, come you rightly downe to the Firmness of Earth -- it be not but like a Booke, it be a true Folio, though not seen but for Seight -- Leaves and Werdes in Leather bound: the Story of good Werkes upon one Shyt, sorrowfull sinnes the next.[quotation mark][or]Christabell explains that they are sort of a permanent sign of the price paid in the world to perform magic.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-DeepOnes when benjack-R1 is happening:
	say "[one of][quotation mark]I[apostrophe]m not really sure how to approach this delicately,[quotation mark] you begin, [quotation mark]but what exactly are the Deep Ones?[quotation mark] You refrain from air quotes, as it would just confuse her.[paragraph break][quotation mark]Your Apprehension I do gently understande, for many Miscreantes do beare false Witness against them and thow powerful they are, know you this: they do serve as me and my longhouse, the mighty Weal of Mattanit.[quotation mark][paragraph break][quotation mark]Yes, but what are they -- I mean, could you draw me a mental picture of them?[quotation mark][paragraph break][quotation mark]No Representation of them can I render, for their Forme supporteth not the weake Minde of Man, but summe few jotts of Wisedom I did learne among the Nirramonk, and these they are: firstly, they are Olde, older than the Earthe itself (this, thow we did know from the naym itself, but see you now how they did come by it); secondly, it is in the Seven Oceans and multitudinous Seas that they do dwell; and finally, and paramounte, the marked of Mattanit can call upon them to scribe their Runes in his Service.[quotation mark][paragraph break]Christabell adds, [quotation mark]They be not the onely of their Kinde, but the onely I did come to know in mei too brief Tymme among the Nirramonk.[quotation mark][or]According to Christabell, the Deep Ones are some sort of ancient beings that serve Mattanit.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Potence:
	say "[one of][quotation mark]Potence be a Strength that lends to Magick; you do burn with it.[quotation mark] Christabell adds somberly, [quotation mark]It be also what I do most direly desire that I might cast aside my Fusion.[quotation mark][paragraph break]Christabell pokes your aura tentatively with her index finger; the aura deforms around it, bending inward. [quotation mark]Naomi, by what Providence came you to wield such Potence? I can but thinke of one Sourse: my Carol.  Could she by summe mirickell dwell yet in this moderne Ayge of yours?[quotation mark][paragraph break][quotation mark]When I was at Cragne Manor, I met her. She[apostrophe]s a spirit -- as I suppose you already know.[quotation mark] Christabell nods and you continue, [quotation mark]She is a very strange kid and it seems stuck in the 1950s.[quotation mark][paragraph break][quotation mark]Yes, such be the Nature of her Fusion, a circular prison. A good Childe she was, thow gone wrong in later Life, twisted by the Crânes.[quotation mark][or]Seems pretty straightforward: according to Christabell potence is the some sort of magical energy. She mentioned that something called the [quotation mark]bestowance[quotation mark] would fix the situation.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Luminance:
	say "[one of][quotation mark]Naomi, surely you must needs have yourself remarked your terrifick Shyne in the Eyes of the Seight? Thereby doth the Potence with make manifest. Yet, I must needs forewarn: a potence too closely held, or too long, does risk injurious Consequence.[quotation mark][paragraph break][quotation mark]Oh[quotation mark]?[paragraph break][quotation mark]Yes, it is thereby that I do pray you consider the Bestowance.[quotation mark][or]Christabell says creatures with a lot of potence have an visible aura for those with spectral sight. Further, that having as much potence as you do right now is not healty for a mortal.[no line break][stopping][paragraph break]"
	
After quizzing benjack-Christabell about benjack-Glamor:
	say "[one of][quotation mark]A Glamour be not moor than the outwarde Signe to the Seighted of Werked Magick. In the Case of you, it be raw and avid, the very Stuff taken of Life.[quotation mark][or]Based on Christabell[apostrophe]s explanation, a glamour is a kind of aura around magical things. Only those with spectral sight can see it.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Marked:
	say "[one of][quotation mark]By that I do mean a person who doth bear the Spirit Mark, whereby the Annointed may conduct the Affaires of the allied Spirit, whom from to obtain Protections and Wardes against malign Spirits. Further, onely one Mark may a Person endure, thow many a Spirit may touch.[quotation mark][or]According to Christabell, someone who is marked has been chosen by a spirit and can more or less channel magical energies supplied by that spirit to work magic.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Fusion:
	say "[one of][quotation mark]The Fusion bindeth a Spirit to a Place, just as my unhappy Demise did bind me in Perpetuity to this Ironne,[quotation mark] Christabell says, gesturing to the railroad track. [quotation mark]Onely threw a princely summe of Potence keenly wielded can the Fusion be broken and a Spirit set a-free.[quotation mark][or]Christabell uses the term [quotation mark]fusion[quotation mark] to mean that which binds a spirit to the physical world.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Remedy:
	say "[one of][quotation mark]I do see clearly a simple answer to remitte your Libertie of Mouvement: the Bestowance.[quotation mark][or]Christabell recommends that you perform a magical ritual called [quotation mark]the bestowance[quotation mark] in order to rid yourself of magical energy, which over time can be harmful to mortals.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Bestowance for the first time:
	say "Christabelle replies, [quotation mark]The Bestowance is the Magick whereby Potence be conveid from one to another. If you would deign permitte, I could shew by what meenes this Magick could be wrought.[quotation mark][paragraph break][quotation mark]You mean I could cast a spell to charge you up?[quotation mark], you ask. [quotation mark]How?[quotation mark][paragraph break][quotation mark]In so many Werdes. Yes, my Marke being upon you, you could werke it. Upon a Tymme, it were the first Magick I did teach Carol, when she saw but five Yeares. But you a Woman full grow[apostrophe]d need no trappings of Ceremonie to conduct it, but only the Comprehension of what you do, and a Werde bespoken to set the Magick in Motion.[quotation mark][paragraph break][quotation mark]What[apostrophe]s the word?[quotation mark][paragraph break][quotation mark]It be ‘xizzi[apostrophe],[quotation mark] replies Christabelle. [quotation mark]If you do but say it, all will be put to Righte. Here, let me place my Mark that you may werke summe Magicks.[quotation mark][paragraph break][quotation mark]Hang on a…[quotation mark] Christabell pokes your shoulder before you can finish the sentence.[paragraph break][quotation mark][apostrophe]Tis done, and naught did it hurt, yes?[quotation mark][paragraph break][quotation mark]I suppose,[quotation mark] you say, rubbing your shoulder, which does tingle a little.";
	now yourself is benjack-spell_enabled.
	
After quizzing benjack-Christabell about benjack-Bestowance:
	say "Your understanding of this might not be perfect, but you believe that it[apostrophe]s a magical spell of some sort that transfers magical energy, or potence, from one being to another. To cast the bestowance, you just need to say the word [apostrophe]xizzi[apostrophe].".

After quizzing benjack-Christabell about benjack-Nirramonk:
	say "[one of][benjack-Nirramonk1][benjack-Nirramonk2][or]Christabell and her mother took up with a local tribe, the Nirramonk, when they left Christabell[apostrophe]s father. They learned the Nirramonk language and their culture, including their religion, which she says is one step beyond Christianity[stopping]."
	
To say benjack-Nirramonk1:
	say "[quotation mark]When first we did arrive to Lyn, my Parents did ardently applie their Labours to make Home, and I with them. Thow soon we did but little see of mei Father so powerfull was his Devotion to the Forge. He did desire above all to see its Heat increased beyond even yet again what those Forges in Engeland did achieve. This, in the speite of meagre Tools and shoddy Coal which to him availed.[quotation mark][paragraph break][quotation mark]The Nirramonk?[quotation mark] you remind her.[paragraph break][quotation mark]Verily, the Subject has not fled by Minde, thow I admit my Tongue doth journey to it by a Road not straite.[quotation mark] Christabell continues, [quotation mark]So, the Nirramonk, then: My Father did toil at the Forge Daye and Neight bothe, so, my pious Mother bereft of his Attentions did seek to perform goode Werkes for our Congregation, yet Preacher Breeves, being thick of Skull and disdainful of Womenkind did spurn her kinde Offer. She being considerable pridefull did quit that Congregation upon that very Daye and finde herselfe (and mee) another at the Inconvenience of summe Distance from Lyn. The Doctor Prichard Leif did establysh this Congregation, which greatly amazing did welcome not onely us, but also many Indians of those Parts; not onely those Praying Indians taught our Holy Bible, but Doctor Leif did wee learne each the Wisedom the other did have.[quotation mark][paragraph break][quotation mark]So, the Nirramonk?[quotation mark] you remind her once again, trying to keep her on track.[paragraph break][quotation mark]Hold tight to your Reines,[quotation mark] chides Christabell. [quotation mark]For five hundred Years have I thought on this -- I pray you abide your Patiyence yet another moment, that I may complete this Journie, upon which you have set us.[quotation mark][paragraph break]Having your full attention, Christabell continues, [quotation mark]So then, coming at last to the Nirramonk.[quotation mark][paragraph break]";
	
To say benjack-Nirramonk2:
	say "[quotation mark]Phew.[quotation mark][paragraph break][quotation mark]I do your Pardon begge?[quotation mark][paragraph break][quotation mark]Nothing.[quotation mark][paragraph break]Christabell folds her hands and resumes her discourse, [quotation mark]One day did come to us a Council of the Nirramonk. Thow versed in the Tongue of the Nipmuk, scarce could we comprehend their Tongue. By the Grace of Providence, One among theyr Number summe Fackulitie with Engelish possessed, he and his Kin having many years before helped the Engelish Colonie of Roanoke to their Prosperity.[quotation mark][paragraph break][quotation mark]Knowing me quick witted, Doctor Leif did me task to apprend of their Tongue and they Ours by setting to Paper a Grammar. No simple Affaire this was, and threw a Winter and Summer compleat, we did labour, the legion Differences so diffickulte to reconcile. Not onely Grammar did I employe to this Tasking, but made use of Maths and Shapes, some of Artes Newlie devised, some drawn from Kaballah. In Grammar I did find Keys to the Invisible World -- take you for instance their Nowns, being infleckted not for Male and Female, but Animate and Inanimate; and amongst the animate they choose their Werde Endings differently for Spirits, the Restful, and the Avenged.[quotation mark][paragraph break][quotation mark]Five years I did spend amoung them and did Comprehend their Tongue flowingly. As much as I did deliver unto them the Good News of Christ Jesus, I did discover Mattanit and did learne to perform his Werkes through Means more immediate and vigorous than those beknownst to the Church of Engeland.[quotation mark][paragraph break]Her eyes heavy, Christabell concludes, [quotation mark]It were a true Calamity that all did end so dreadful in the Skourmuch.[quotation mark][paragraph break][quotation mark]My head is -- literally -- going to explode,[quotation mark] says Naomi compressing her temples".
	
After quizzing benjack-Christabell about benjack-Nipmuk:
	say "[quotation mark]They were a Indian Tribe nearby Lyn, friendly and allied with their Neighbours. We did trade with them oftentimes.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Kaballah:
	say "[quotation mark]Doctor Leif did bring many arcane and wonderfull Bookes with him to the New Worlde, amongst them Tomes on Alchemy, Numerology, and Secrets of the Orient.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-InvisibleWorld:
	say "[quotation mark]By that I do mean the incorporeal world of Spirits and other such Beings perceived onely by the Seight.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Restful:
	say "[quotation mark]This be the final Respite of most, those not being aggrieved and who do achieve eternall Slumber.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Avenged:
	say "[quotation mark]Answering the injury that rendered them Spirits, one may at last join the Restful.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Creature:
	say "[quotation mark]I onely am experimented of Spirits, thow the Nirramonk know many Creatures far weirder that do dwelle in divers corners of the Invisible World.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Longhouse:
	say "[one of][quotation mark]The Nirramonk did dwell in the longhouse and I amongst them for a Tymme. In it we did sleep and take our Meals. Those of us learned did study and practice the Werkes of Mattanit. Alas, the longhouse and all its Treasures was razed in the Skourmuch[quotation mark][or]When Christabell and her mother lived with the Nirramonk tribe, they all lived together in a communal longhouse[stopping]."
	
After quizzing benjack-Christabell about benjack-modernAge:
	say "[one of][quotation mark]I know not the Date to-day, for I have long quit the recording of Daye and Neight[apostrophe]s passing. Were I to guess, I would needs say, perhaps summe nearly two Millennia since the Appearance of Christ Jesus upon the Earth.[quotation mark][paragraph break][quotation mark]A bit less, but close enough for government work,[quotation mark] you agree[or]Christabell is aware that it[apostrophe]s the 1990s[stopping]."
	
After quizzing benjack-Christabell about benjack-modernAge:
	say "[one of][quotation mark]You wouldn[apostrophe]t know it to look around here, but this is an age of technological marvels: PDAs, dial-up internet, and video cassettes for rent any time of day or night,[quotation mark] you brag.[paragraph break][quotation mark]I know only too well of Locomotives, and the Ironne Roads upon which they do travel, and Carol has told me of Automobiles and how one travels Highways many Rods across. But also do I know your Science has conceived of Contrivances so Powerful that one may lay waste Nations. This I do not think Wise.[quotation mark][paragraph break][quotation mark]Yes,[quotation mark] you admit. [quotation mark]It[apostrophe]s a bit of a trade-off.[quotation mark][or]Christabell is not very impressed by the technological miracles of the 1990s.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Demise:
	say  "[one of][quotation mark]As you might well imagine, my Death was something of a shock to me.[quotation mark][paragraph break]You nod agreement with that likely understatement.[paragraph break]Cristabell continues, [quotation mark]Many lives were lost the Neight the Skourmuch did take place first at the Longhouse but finally at the Forge. There did I seek last Parlay with my Father, but so jealous was he and so under the Obsession of his Werke, that he did leaf me no recourse, but to plunge hee and me both into the fierie Layke of Metall at our Feete. And thereby did I end my life and birthe my Fusion.[quotation mark][or]Christabell told you a pitiful story about how her father, driven mostly by jealousy, took both his life and hers by plunging them into a vat of molten iron.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Obsession:
	say  "[one of][quotation mark]Smythies, Father and Sonne for many Generations of mei Family, you could say Ironne was in our Blood,[quotation mark] explains Cristabell.[paragraph break][quotation mark]I guess in a sense that[apostrophe]s true,[quotation mark] you mutter, mostly to yourself. [quotation mark]Please, go on.[quotation mark][paragraph break]Christabell continues without interruption, [quotation mark]Driven was my Father to keep always the Forge afire, to churn out Metall the Measure of whych the Colonie could scarce make use, for Preacher Breeves did foresee a great Need of Muquets and other Implements to make War, so to claim the Landes around them in the Name of his God.[quotation mark][paragraph break][quotation mark]Breeves sounds like a real dick,[quotation mark] you add.[paragraph break][quotation mark]Indeed, a most vexacious Phallus he was,[quotation mark] Christabell acknowledges[or]According to Christabell, her father[apostrophe]s single-minded obsession to churn out more and more from the forge was in part stoked by the local preacher, Ewen Breeves, who wanted muskets to drive the Indians off the land[stopping]."

After quizzing benjack-Christabell about benjack-mound when benjack-R1 is happening or benjack-R2 is happening:
	say  "[one of][quotation mark]How my Spirit came to be fused to this Rayle Road Track, and it here, far from my Home in Lyn does a summut tortuous Storie mayke, but leave me Condense it for the telling: after the Skourmuch, mei owne Demise, and consequent Fusion, Father Breeves did add Insult by having made a Great Bell, of all the Metall in the Forge. This Bell he had placed in the newe Church, which did succeed the Prayerhouse and there it did stay until whenupon, one Christmas Night, a Bolt of Lightning did strike the Bell smartly and its Ring was heared to Boston. Also did the Church burn to the very Grownd. Being thowt Cursed, Merchants did take Possession of the Bell, it changing hands many Tymmes, until it did end up melted and mayde to Rayle some Yeares layter and solde to one Edgar Crâne to serve their Mill hereabouts.[quotation mark][or]Christabell relates that her spirit is bound to the huge pile of railroad tracks because after she and her father died in a vat of iron, that iron was subsequently made into a church bell that more recently was recycled into these railroad tracks.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Mill:
	say  "[one of][quotation mark]The original Crânes, being Traders, did build their Home and Place of Busyness at the Banks of the River that now borders their Lande. In theyr Tymme of Fortune, they did displace themselves to the Manse, wherein their degenerate Descendants dwell to this very Daye.[quotation mark][paragraph break][quotation mark]The Building they left then became a Mill for Woode, and the Profit therefrom did fuel the Excesses of the Crânes. Although the River served to transport the Timbre and Produckts thereof, even a Century back, the Crânes did look with envious Eye towards the Rayle Road that ran not far away, serving the Towne of Backwater. By that means they might increase theyr Profit by delivering the Goodes to Boston and Ville-Marie.[quotation mark][paragraph break][quotation mark]Victor Crâne did conceive this Plan, and his son Edgar did purchase the Rayle, although his Tymming was poor and he did suffer for it. Carol did relate to me that her Father, Hugo Crâne, did once regard the Pyle of Rayles and try to sell it to the Navie, for greatly in need were they of such metall for a Great War, but there being too much of Charbon in the Olde Ironne, they did not deem it mete. Thus, it layeth here to this Daye.[quotation mark][or]Once, the nearby wood mill was a major source of profit for the Cragnes. Around the turn of the century, they wanted to switch from transport along the river to use of railroads, and Victor Cragne proposed building a spur on the main rail line to serve the mill. His son, Edgar, tried to carry out his plan and defaulted on a bank loan after the purchase. More recently, Carol[apostrophe]s father tried to sell the rails as scrap iron during World War II, but the metal was considered of inferior quality and the deal rejected by the Navy.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Edgar:
	say  "[one of][quotation mark]Poor Edgar did often come here, to this Hollow, to escape the Mill, to smoke his Tobacco, and to sulk. As the Crânes do go, he was almost a decent Person, but stupid was he like a Stick blunted upon a Rock. He did purchase these very Rayles -- with Monies lent -- and to hear Carol tell the tale a Great Impression did fall upon the Bankes.[quotation mark][paragraph break][quotation mark]Depression?[quotation mark] you suggest.[paragraph break][quotation mark]Yes, a Great Depression did befall the Bankes, and Edgar did bathe thereby, said she. Having taken Deliverie of the Rayles, Edgar could not recompense the Bankes and he was so ruined, taking his owne Lyfe.[quotation mark][or]Edgar Cragne was Victor Cragnes son. He killed himself after defaulting on a bank loan that he used to purchase the pile of railroad track.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Victor:
	say  "[one of][quotation mark]Victor Crâne? Yes, I have heared his Tale as well from Carol (the Ignomy of the Crânes being a favourite Topick of ouwr Gossip). [paragraph break][quotation mark]Amongst the Crânes, Victor was the most successful in Busyness, and as well the one most bereft of Character. Despite Vices uncowntable, he was unusually long-of-life and made much of his Fortune building Roads of Rayle. Indeed, it was he who did first conceive Construction of a Spur from Backwater to his Mill hereabouts. He did err in leaving that Project and the Mill itself, the onely among his Busynesses a failure, to his doltsh Sonne, Edgar, who did prove unsuited to the Task. Victor did little care though, being past the Ayge of one-hundred, and lodging ‘till his purported Death in an Opium Den in Singapore.[quotation mark][or]Victor Cragne was a successful businessman, but given to numerous vices including opium. It is said that he lived to extreme old age.[no line break][stopping][paragraph break]".
	

After quizzing benjack-Christabell about benjack-Hugo when benjack-R1 is happening:
	say  "[one of][quotation mark]Carol did not oftentimes speake of her Father, but I do know, much to the belike of the Deep Ones, I doubt me not, that a man of the Sea was he -- not in the sense of a Saylor, but drawn to the Deep by Intelleckt and Inclineation, being more a Shipswrighte or one who does put his Designe upon Paper that others might put Hammer to Nayle in its Construcion.[quotation mark][paragraph break]Christabelll laughs, [quotation mark]At one Poynt, Carol did inform me, he did sit bodily upon my very Pyle of Ironne, but perceived me not for lack of the Seight. In that Moment he did hatch an Idea to sell the Ironne for the making of Ships to bring War to his Enemies, for he was bloodthirsty and did detest those not spaking Engelish, putting me much in Mynd of Ewen Breeves, a Preacher I did once have the Misfortune to know.[quotation mark][or]Christabell says that Carol[apostrophe]s father Hugo once tried to sell the railroad tracks to the navy as scrap iron.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-Hugo:
	say "[one of]You recount your impressions of Carol[apostrophe]s father based on what she told you and then ask Christabell if she knows anything more about him.[paragraph break][quotation mark]I have a similar impression of him,[quotation mark] replies Christabell. [quotation mark]He was hateful and did hunger for Power, and he did bend her to serve his Politiks. Yet, thow he did send her away to Relatives for much of her Childehood, still they had moor to say to each other than did I and mie Father.[quotation mark][or]Christabell has a poor opinion of Carol[apostrophe]s father, Hugo, who she says manipulated Carol to serve his political ends.[no line break][stopping][paragraph break]".

	
After quizzing benjack-Christabell about benjack-CircularPrison:
	say "[one of][quotation mark]Carol[apostrophe]s Fusion taketh a Forme circular in Shape, like a Belte closed upon itself, wherein her Doom is to repeat the Steppes of her Damnation, appearing Nowe as a Babe, then later a Gyrll, and Finally One of Majority, up to that Tymme what she did take her Leyfe. Why summe Spirits do endure this rotary Existence, while others like me do remain fixed, I know not, thow mayhap I play a Role in her Revolving about.[quotation mark][or]It sounds like Carol is caught in some sort of a loop, doomed to grow up over and over again.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-ChristbellFather:
	say "[one of][quotation mark]My father was no Scholar, there be no Mystake. From young Ayge he did in a Smythie werke and for many Yeares all aspects of the Trade he did learn be it smelting, casting or the wrothing of Ironne -- knew he it all, he did.[quotation mark][paragraph break][quotation mark]When we did hear of the Colonies, the Idea did much take Mother, who did desire to separate from the Church of Engeland. On that, Father held no Accounte, but when he did hear of the Oppourtunities abounding in the New Worlde, it was he faster on a Boat than us all. He did secure a Contracte most generous with the Ironwerkes company and a House built for us as well in Lyn.[quotation mark][paragraph break][quotation mark]But once come to Lyn, he became a Man changed, spending ne[apostrophe]er a minute at Home, but in the Forge with his Dear Metall. I do thinke some malific Vapour or inimicall Spirit did direct his Minde to so Oppose his owne Family. After Suffering  indecent long Mother did quit his House and took we up at last with the Nirramonk in their Longhouse did we dwell many years, ‘til father[apostrophe]s Jealousy and wrath did reach us at last the Neight of the Skourmuch[quotation mark][or]In the tale Christabell tells, her father became jealous after she and her mother went to live with the Nirramonk tribe; this led to the skirmish between that tribe and the town of Lin.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-ChristabellMother:
	say "[one of][quotation mark]My Mother did stem from a Family by no means of Wealthe, but knowing some Success in Trade. She did tell me they did take it hard for her to marry to a Smythie, but for the Opinion she cared but little. Her fyne upbringing did benefit us in later Lyfe, for her Command of Maths and Grammar we did come to employe in ouwr Werke on the Language of the Nirramonk. In that Werke and our Faith, the brilliyant Doctor Leif did skillfully guide us.[quotation mark][or]Christabell says her mother married down and after leaving her father, took up with Doctor Leif and helped him translate the language of the Nirramonk Indians.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Breeves:
	say "[one of][quotation mark]When we did arrive in Lyn, the Towne did welcome us joyfully, and they led by the Preacher, a certain Ewen Breeves. He were all a-smile and many did laugh that Daye, but not a Week hence we did come to know by the Laundry Talke, of his Anger and Fear. Anger for any that would speake in Opposition to himself, even on the most petty Issue. And Fear of the Indians, who did surround us entirely, but with whom we had to that Poynte enjoied warm Friendliness.[quotation mark][paragraph break][quotation mark]Preacher Breeves would tolerate no other Preacher nor even Helper in his Church and turned away many from the Pews as well. It was Breeves that sent our Sick to the Indians to spread our Illnesses, and we did suspect him of burning summe Foods set by for Winter with the Pretensions of it being done by the Indians to turn the Settlers against them.[quotation mark][paragraph break][quotation mark]But the worst of it,[quotation mark] Christabell sobs, [quotation mark]is what he did to Father -- the Jealousy he did stoke. I blame the Skourmuch on Breeves alone.[quotation mark][or]Christabell holds Preacher Ewen Breeves responsible for her father[apostrophe]s jealousy, which led to the skirmish between the Nirramonk tribe and the Town of Lin.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Leif:
	say "[one of][quotation mark]Doctor Leif was a Scholar of many subjects, not the least amongst them, Philology. He did break with his comfortable Accomodation as a Professor at Oxford to come live among us in the New Worlde. Hee it was who did introduce Mother and mee to the Nirramonk, and also he who did encourage us to explore theyr Wisedom, although we had aught but begun when the whole Enterprize did Collapse upon us with the Skourmuch.[quotation mark][or]With the assistance of Christabell and her mother, Doctor Prichard Leif studied the language and culture of the Nirramonk Indians. He thought the European settlers could learn from their wisdom.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Jealousy:
	say "[one of][quotation mark]First, know you that mei Father were in his Constitution of Jealous Blood. Once I did try help his Labour of Blackesmything by sharing with him summe small Part of the Artes, which the Narramonk do possess, and which they use for making any number of Tools and Contrievances of such Genius as you do not possess even in your Modernity, I would warrant. Their most patient Explanation of the Process to fabricate a lighter Metall they did make threw mee, but hee did throw their erudite Drawings back at them and sent us everyone fleeing.[quotation mark][paragraph break][quotation mark]So, it come not to surprise how little it did take for Preacher Breeves to convince him that Mother had left him to consort with Doctor Leif, sleeping wantonly in the Longhouse of the Narramonk as the Indians are want to do. The truth of that statement aside, the Rage engendered did drive my Father to Violence, to wit bringing about the Skourmuch that led to our mutual Demise, my Father and I..[quotation mark][or]Christabell[apostrophe]s mother and Doctor Leif lived together in the longhouse of the Nirramonk for several years while studying the language and culture of that tribe. Christabell[apostrophe]s father suspected that were studying not only the Indians in that longhouse, but each other as well -- a point that Christabell does not deny.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Skirmish:
	say "[one of][quotation mark]The Reason doth mee escape wherefore we do call that evening[apostrophe]s fighting the Skourmuch, that being but a fancy French worde for the same. It did begin in the Dark, the Villagers of Lyn having been whipped to Fury by the demented Slander of Preacher Breeves. Came they did with Torches, Musquets, and Swords and burnt the Longhouse of the Narramonk and murdered all within, there being no Exception, save for us small Band who did escape.[quotation mark][paragraph break][quotation mark]The Death of the Sachim did provoke them even to casting aside theyr Peaceful Waies and coming into the Towne in Anger. I had hoped even then to Speake once moor to mei Father, but we did fall to fighting, each of us calling fierce Magicks to ouwr aide, and thereby did meet our Demise together.[quotation mark][or]Driven by jealousy, Christabell[apostrophe]s father led an attack on the Nirramonk longhouse, killing their chief. The enraged Indians counterattacked the Town of Lin and both Christabell and her father were killed, both sides employing magical attacks.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Sachim:
	say "[one of][quotation mark]The Leeder of the Nirramonk were called the Sachim and she did dye in the Skourmuch.[quotation mark][or][quotation mark]The Honour of serving as Sachim did rotate amongst the Longhouse, so many of us were Sachim for a Tymme.[quotation mark][stopping][paragraph break]".

After informing benjack-Christabell about benjack-ChristabellTeaParty:
	say "[one of]When you finish recounting the tea party, Christabell asks, [quotation mark]How olde did Carol appear to your Eyes in this encounter, then?[quotation mark][paragraph break][quotation mark]Oh, about five, I[apostrophe]d say. Five years, plus or minus.[quotation mark][paragraph break][quotation mark]Yes, that maketh fyne Sense give her Circular Prison. That was her Ayge when I did teach her to performe the Bestowance in that manner. Being a Childe, her Minde was not fitt for moor abstrakt Casting, so we did exercise its rituall Forme.[quotation mark][or]Christabell says that the [quotation mark]tea party[quotation mark] is actually a way of casting the bestowance spell.[no line break][stopping][paragraph break]".
	
After quizzing or informing benjack-Christabell about benjack-Carolsubject when benjack-R1 is happening:
	say "[one of][quotation mark]When she were a Childe, she did come visit me frequently, standing as you do now. I do flatter mieself to thinke she did seek my Company for Wisedom and Solace, but let us also admit that for a Childe, the Crâne Manse was naught but a Place of Boredom most profound.[quotation mark][or]	[quotation mark]I be not surprised that she did appear to you in an Aspekt childe-like, for that is a Manifestation of her strange Fusion, the Circular Prison, but well you would do to remember she died far from Innocent. Though I did teach her tenderly, she did bend the Craft darkly in Service to her Father, Hugo, a man of no moral fibre.[quotation mark][or]Christabell says that, as a child, Carol used to come visit her frequently.[no line break][stopping][paragraph break]".

After informing benjack-Christabell about benjack-ChristabellToys when benjack-R1 is happening:
	say "[one of][quotation mark]The Names are not beknownst to me, but that is merely an accident of this Unfolding; I know the Essence of the Creatures of whych you do speak. They are at this Ayge of hers mostly Play Toys, but in Tymme do become her most loyal and dangerous Consorts.[quotation mark][or]You tell Christabell about your most recent visit with Carol and about her stuffed toys.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Unfolding:
	say "[one of][quotation mark]What little I know from the Lore of the Narramonk, I will to you relate: that one bound in Circular Prison does move always in one Direction in Tymme, but not along a single Path. Most Paths start and end they did in Lyfe, but there are side Paths described by other Runes that can come to being; summe few may put end to the Fusion, freeing the Spirit.[quotation mark][or]According to Christabell, Carol[apostrophe]s future does not always follow the same course each time she cycles from birth to death as a spirit.[no line break][stopping][paragraph break]".
	
After quizzing or informing benjack-Christabell about benjack-ChristabellScrapbook:
	say "[quotation mark]These then are Carol[apostrophe]s Runes that you did generate during the Bestowance, that is the [apostrophe]Tea Party[apostrophe]; they chart her way through this Unfolding.[quotation mark][paragraph break]".

After quizzing or informing benjack-Christabell about benjack-ChristabellGrandUncle:
	say "[one of][quotation mark]Verily, it is a curiosity -- I never did come to know Carols[apostrophe] grand-uncle[apostrophe]s name, although I do suspect it were Victor Crâne, thow greatly ayged hee would have been.[quotation mark][or]Christabell suspects Carol's grand-uncle is none other than Victor Cragne, who made his fortune with the family wood mill.[no line break][stopping][paragraph break]".
	
After quizzing or informing benjack-Christabell about benjack-Mansion:
	say "[one of ][quotation mark]What about the mansion, Christabell,[quotation mark] You ask. After you recount some of your experiences at the mansion, Christabell adds, [quotation mark]Being stuck here, I have not mieself even layd Eyes upon this most strange Edifice.[quotation mark][paragraph break][quotation mark]That[apostrophe]s odd,[quotation mark] you say. [quotation mark]I can see this hillside from Carol[apostrophe]s window. How can it be that I can[apostrophe]t see the mansion from here?[quotation mark][paragraph break][quotation mark]Carol[apostrophe]s Fusion is to the Room itself, and what you do see be naught but her imperfect Memorie of it.[quotation mark][or]Christabell says that spent a lot of time in that creepy old estate while she was growing up and that in death, she is magically bound to her room there.[no line break][stopping][paragraph break]".
	
After quizzing or informing benjack-Christabell about benjack-Mirror:
	say "[one of]After you tell Christabell about being trapped in Carol[apostrophe]s room by the door that turned into a mirror, Christabell offers some reassurance: [quotation mark]Fret you not, I know of the Seeming she did Werke, and it is but a weake one and cannot be used against your Minde again.[quotation mark][or]The trick that Carol used to trap you in her room won[apostrophe]t work on you a second time.[no line break][stopping][paragraph break]".
	
After quizzing or informing benjack-Christabell about benjack-Seeming:
	say "[one of]After you tell Christabell about being trapped in Carol[apostrophe]s room by the door that turned into a mirror, Christabell offers some reassurance: [quotation mark]Fret you not, I know of the Seeming she did Werke, and it is but a weake one and cannot be used against your Minde again.[quotation mark][or]The trick that Carol used to trap you in her room won[apostrophe]t work on you a second time.[no line break][or][quotation mark]A Seeming is naught moor than a brief Illusion; it is easily washed from the Minde and with diligent Practice can be ignored without Effort.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-XizziSpell:
	say "Christabell reminds you that this is the spell that transfers magical energy from one being to another."
	
After quizzing benjack-Christabell about benjack-PloughverSpell:
	say "Christabell reminds you that this is the spell that will allow you to magically blink back and forth between Carol[apostrophe]s room and this hillside -- but won't work anywhere else."
	
After quizzing benjack-Christabell about benjack-KHSpell :
	say "Christabell reminds you that this is the spell that you can use to destroy Carol[apostrophe]s book of runes."
	
Chapter 2 - R1 Event

Instead of going a direction (called the way) during benjack-R1:
	if benjack-Christabell is run-down:
		say "[one of]As you walk away from the hillside, an Irish blessing comes to mind: May the road rise up to meet you.[paragraph break]The rest of the blessing doesn[apostrophe]t so much apply, the part about sunshine and good luck and such, but the road, or in this case the packed soil of the trail past the hillside, does fold back on itself and twist around in a way that makes you mildly nauseous and points your feet right back to where you came from.[paragraph break][quotation mark]Are you doing that?[quotation mark] you ask Christabell.[paragraph break][quotation mark]Nay -- [apostrophe]tis you. And [apostrophe]tis this place. But it be not of my Conjuration, but even summe Resulte of your ownself. The [bold type]Potence[roman type] which you do comport maketh of you like unto a Lodestone, what are then drawn by Nature to this Place.[quotation mark][paragraph break][quotation mark]So I[apostrophe]m a magnet stuck to that giant [bold type]pile[roman type] of [bold type]iron[roman type]?[quotation mark][paragraph break][quotation mark]To the [bold type]Ironne[roman type], nay. That hath no part in it, save as the object of my unwilling [bold type]Fusion[roman type]. It might as well the Trunk of a Tree as a Thimble be.[no line break][quotation mark][or]This time it[apostrophe]s worse. The path doesn[apostrophe]t so much curve around as flip inside out. Everything stretches as you swing back towards a normal orientation, colors scaling up and down the rainbow, eventually returning to their normal hue.[paragraph break][quotation mark]Please, Friend Naomi, do not Straine your Substance to depart. I have myself been for these many long Years similarly afflickted by the [bold type]Fusion[roman type], but I wish not any Portion of mei Trials on others in no Way deserving of it.[quotation mark][or]Again, the world bends so acutely around you that you see your own back walking away from yourself before time and space catch up, depositing you right where you started.[paragraph break][quotation mark]I didn[apostrophe]t get as nauseous that time,[quotation mark] you remark.[paragraph break][quotation mark]The Minde doth accommodate to Experience, even so arcane, yet this be not a [bold type]Remedie[roman type], though happily for you not bound by the [bold type]Fusion[roman type], One doth exist, and easily to wit.[no line break][or]What was initially frightening is now merely annoying, and a mild headache has replaced frank nausea.[paragraph break][benjack-mobius].[no line break][stopping][paragraph break]";
	otherwise:
		if the room the way from the location is nothing:
			continue the action;
		otherwise:
			say "I do pray you return after a Piece to let me know how you fare with Carol. Whilst you so occupy your Attentions, I shall myself see to a few Affayres long overdue. See you later, mie Ally great![quotation mark][paragraph break][quotation mark]In a while, crocodile![quotation mark][paragraph break]Christabell gives you a strange look and then disappears into the pile of railroad tracks.[paragraph break]You walk away from the pile of rusting metal, firmly committed to helping Carol by freeing her from her Runes.";
			now benjack-Christabell is nowhere; [in case player comes back before N2]
			continue the action.
	
To say benjack-mobius:		
		say "You [one of]are right where you started[or]haven[apostrophe]t budged an inch[or]aren[apostrophe]t getting anywhere this way[or]wonder what you need to do to get out of here[or]suspect that Christabell knows how you could break this weird spell and leave[or]are really not enjoying this at all and consider pumping Christabell for information[or]have not moved[in random order]".
		
[player starts you not inhibited and armed, so no need to test in this scene]
Before benjack-ploughvering when the yourself is benjack-spell_enabled during benjack-R1:
	if benjack-Christabell is run-down:
		say "[quotation mark][one of ]Your surfeit of potence does retain you Bodily.[no line break][or]Might I suggest the Bestowance to yield me the Excess of that Potence that doth draw you hither?[no line break][or]If you would cast the Bestowance, I do warrant the Ploughvering would do just.[no line break][or]If you would but make use of the Bestowance, your Departure would no longer be infringed upon.[no line break][or]Could you cast upon me the [apostrophe]xizzi[apostrophe] spell to break the Enchantement that does you bind to this Place?[no line break][stopping][quotation mark][paragraph break]";
		stop the action;
	otherwise:
		say "Christabell calls after you, [quotation mark]Do remember to help liberate Carol from her Runes![quotation mark] and then everything goes dark."
		[could also use this to load up N2 if the scene begins rule doesn't cut it.]	

Chapter 3 - R1 Tests

Part 5 - Scene N2 Teenage Carol Marks Naomi's Baby

Chapter 1 - N2 Conversation

Before hailing or conversing or speaking when benjack-R2 is happening for the first time:
	say "[quotation mark]My Greetings again, Naomi. Were you able to lifte the Burden of Carol[apostrophe]s Runes and set a-free her Spirit?[quotation mark][paragraph break][quotation mark]No, not so much,[quotation mark] you admit. [quotation mark]She didn[apostrophe]t have the scrapbook with her. In fact, the whole thing didn[apostrophe]t go that well. She[apostrophe]s has some resentment towards you, and her dad[apostrophe]s plan sounds bonkers.[quotation mark][paragraph break][quotation mark]I have something very important to ask you, Christabell. Carol touched me…[quotation mark] You take a moment to compose yourself, [quotation mark]Carol touched me here, and said she had marked my baby, a daughter.[quotation mark][paragraph break]Christabell looks askew. [quotation mark]Oh?[quotation mark] She holds her hand palm out. [quotation mark]No. There be no Baby. Nor even so much as Thowt of one in your Entrayls. Not this Daye. She doth Laie most Cravenly to seeke Inflewance o[apostrophe]er you. I had hoped to save her, but History does itself repete -- for the Sayke of All, we must see to her Disruption.[quotation mark]";
 	continue the action.


Section 1 - N2 Subjects

benjack-babySubject is a subject.  Understand "baby/babies/pregnancy/pregnancies/spawn/daughter/offspring" as benjack-babySubject when the location is in the benjack-realm.

Section 2 - N2 Quips

Chapter 2 - N2 Event

Chapter 3 - N2 Tests

Part 6 - Scene R2 Plotting Carol's Disruption

When benjack-R2 begins:
	say "As the day has progressed, the shadows over the hillside deepen, but you easily perceive Christabell, every bit as substantial as you last saw her, walking briskly over to to greet you.";
	now yourself is benjack-ploughver-inhibited;
	move benjack-Christabell to DAN8.
	

Chapter 1 - R2 Conversation




Section 1 - R2 Subjects

benjack-Disruption is a subject.  Understand "disruption/disrupt/destroy" as benjack-Disruption when the location is in the benjack-realm.

benjack-WindowSubject is a subject.  Understand "window/windowe/blockayde/blockade" as benjack-windowSubject when the location is in the benjack-realm.

benjack-resentment is a subject.  Understand "resentment" as benjack-resentment when the location is in the benjack-realm.

benjack-ElderGods is a subject.  Understand "elder/gods/god" as benjack-ElderGods when the location is in the benjack-realm.

benjack-drawingsSubject is a subject.  Understand "drawing/drawings/crayon/sketch/sketches" as benjack-drawingsSubject when the location is in the benjack-realm.

benjack-clippingSubject is a subject.  Understand "clip/clips/clipping/clippings/article/articles/newspaper/newspapers/article/articles" as benjack-clippingSubject when the location is in the benjack-realm.

benjack-planSubject is a subject.  Understand "plan/plans" as benjack-planSubject when the location is in the benjack-realm.

Section 2 - R2 Quips

[todo: map t mark -> pregnancy]

After quizzing benjack-Christabell about benjack-mark when benjack-R2 is happening:
	say "[quotation mark]Christabell, you said that a person can only be marked by a spirit once, right?[quotation mark][paragraph break][quotation mark]That is the Waie of it.[quotation mark][paragraph break][quotation mark]Is there any way to remove a Mark?[quotation mark][paragraph break][quotation mark]Nay, Friend Naomi, there be not, even with Deathe.[quotation mark][paragraph break]".
	
After quizzing benjack-Christabell about benjack-windowSubject:
	say "[one of][quotation mark]The Windowe in that room be a Thing of her Minde; nothing moore. Open it, and you do Open her Mentally a Crack, and into that I shall slippe my Magicks and thereby her Disruption.[quotation mark][paragraph break][quotation mark]You think this will work?[quotation mark][paragraph break][quotation mark]Mayhap. If we do not dally, for her Power groweth like unto a Balle of Snouwe rolling downward upon a Hill -- But, you will needs be clever, for onely distracted will her Eye[apostrophe]s Gaze not catch you and all be lost.[quotation mark][or]Christabell reiterates that opening Carol[apostrophe]s window will give Christabell a chance to cast a spell that will once and for all destroy Carol.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-resentment:
	say "[one of][quotation mark]Aye, there be some Truth in what she does say. Blossoming in her young Womanhood as she was, my Weale sorry tried by Tymme, I did luste after her with Desires carnal.[quotation mark][paragraph break][quotation mark]How is that even a thing? You first of all being dead and second not having a body?[quotation mark][paragraph break][quotation mark]These are fine faire Questions, dear Naomi, and I would entreate you explore them further with me hence -- and in great Detaile -- if your Appetites so leaneth, but this is the Howr to talk not of Love but Action. No alternative do I see but to see to Carol[apostrophe]s Disruption.[quotation mark][or]Christabell admits to lusting after Carol when the girl was a teenager, but now urges you to disrupt her.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-resentment:
	say "[one of][quotation mark]Carol seemed quite angry at you, Christabell.[quotation mark][paragraph break][quotation mark]I do suppose she does have summe Reason, but know you that she did lead me on and I do think appreciate my Attentions. I am given to wonder if it was not she who did lead mee about wrongly.[quotation mark][paragraph break][quotation mark]That[apostrophe]s no excuse.[quotation mark][or]Christabell brushes aside you mentions of how she might have wronged Carol.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Carolsubject when benjack-R2 is happening:
	say "[one of][quotation mark]Carol was led falsely by her Father who did twist the Werdes of Mattanit and harness her rapport with the Deep Ones. He did conspire to remove the Constraints that have for Tymme endless held at Baye the Elder Gods, what with the Misperception most grievous that gracious of their Libertie, they would Accorde him Dominion oe[apostrophe]r the Worlde.[quotation mark][paragraph break][quotation mark]And you don[apostrophe]t think that[apostrophe]s how that would go down?[quotation mark][paragraph break][quotation mark]Down would it go, most surely, but in no desirable Direction for him, for their Fury pent would burne All, before even a Werde he could say to ask his Rewarde (thow I opine it be served wel in that Manner).[quotation mark][or]According to Christabell, Carol[apostrophe]s father has been pursuing a plan to use Carol and her relationship to the Deep Ones to free the Elder Gods from their Eternal Sleep.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-Carolsubject when benjack-R2 is happening:
	say "[one of][quotation mark]Christabell, I think that Carol is a danger -- maybe to the world itself. I don[apostrophe]t know how much of it is real or she[apostrophe]s just crazy. Or maybe I am. After all, I[apostrophe]m discussing with the Salem witch ghost whether the little girl ghost that thinks she[apostrophe]s responsible for the Kennedy assassination is insane. Maybe I need to be the one on the couch. That would explain a lot about the way today[apostrophe]s gone.[quotation mark][paragraph break][quotation mark]Perhaps short Slumber would be helpful, yes, but I do assure you, Carol be every bit so vitall a Danger as you do perceeve. It were e[apostrophe]er so when she did live, as she did grow in Power with Ayge, there came a Tymme where I, even loving her so, did bring her to End herself.[quotation mark][paragraph break][quotation mark]You are the reason she committed suicide?[quotation mark][paragraph break][quotation mark]And she does to this Daye count it sorely against mee.[quotation mark][or]You reiterate that Carol is a danger.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-ElderGods when benjack-R2 is happening:
	say "[one of][quotation mark]There be few Things we did not speake of, even those of us bonded in the Longhouse -- first amongst them, the Elder Gods, who be so alien to ouwr Minde, that nary a Glimpse of the Shadoe would rupture the Knotte of Reason. Ancient they are; ancient and cataclysmic and mad.[quotation mark][paragraph break][quotation mark]So, they[apostrophe]re evil?[quotation mark][paragraph break][quotation mark]Nay, for I do not believe they do have the Concept itself, that being Artefice of Man[apostrophe]s Minde. No, Destruction they provoketh onely by theyr unwitting, horrid Indifference. Ouwr Existence is not even Perceiv[apostrophe]d by them, I doubt me not.[quotation mark][or]Carol describes them as beings so alien that they are not even aware we exist or that their mere presence threatens our existence.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-ChristabellToys when benjack-R2 is happening:
	say "[quotation mark]Surprised am I not, for in each telling of her Unfolding, they do fall one upon the other, the Order not mattering to the Tayle.[quotation mark][paragraph break]".

After informing benjack-Christabell about benjack-Hugo when benjack-R2 is happening:
	say "[one of][quotation mark]Carol[apostrophe]s father, Hugo, seems to have his own agenda -- Carol said he had a plan, and it sounds like it revolved around manipulating politics. I[apostrophe]m not quite sure how everything plugs together, but he[apostrophe]s been intentionally shaping nodal points in history with Carol[apostrophe]s help.[quotation mark][paragraph break][quotation mark]That be not an impossible Task for One so endowed with both her magickal Aptitudes and sharpness of Witte. She could with the Aide of the Deep Ones bring to pass an Event, or though their Interventions divert the Unfolding so the said Event never did occur.[quotation mark][or]Carol's father seems to have a plan to use the Deep Ones to liberate the Elder Gods from their slumber by manipulating historic turning points.[no line break][stopping][paragraph break]".

After informing benjack-Christabell about benjack-DeepOnes when benjack-R2 is happening:
	say "[one of][quotation mark]Whatever Carol and her father are up to, the Deep Ones are doing the dirty work.[quotation mark][paragraph break][quotation mark]Nay, they do reshape the Worlde by more subtle Means that you can comprehend and so are Agency, but the Runes are written in Carol[apostrophe]s book; she is Author.[quotation mark][paragraph break][quotation mark]That sounds semantic. She couldn[apostrophe]t do it without the Deep Ones.[quotation mark][paragraph break][quotation mark]No Occasion do I have to make Argumente against you, as I wish that our Conversation remain amicable, but to my Poynte I do must needs sticke.[quotation mark][or]You go over how the Deep Ones seem to be directed by Carol and her father.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-drawingsSubject when benjack-R2 is happening:
	say "[one of][quotation mark]I saw a number of really creepy drawings in Carol[apostrophe]s room -- she[apostrophe]s profoundly weird.[quotation mark][paragraph break][quotation mark]To the Weirdness of Minde, aye. But being her Instructress in the fyne Artes from her earliest Ayge, I do take some Pride in the Faithfulness of her Renderings.[quotation mark][or]You describe to Christabell the strange drawings in Carol[apostrophe]s room.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-ChristabellScrapbook when benjack-R2 is happening:
	say "[one of][quotation mark]Carol said she had left her scrapbook at her school -- I wonder if that[apostrophe]s true or if she was hiding them from me.[quotation mark][paragraph break][quotation mark]So distracted was she as a Gyrll, it is not unthinkable that she did simply leave it. You must watch for another Oppourtunity to present itself.[quotation mark][or]You mention that Carol[apostrophe]s scrapbook wasn[apostrophe]t in her room when you paid your last visit, so you had no opportunity to destroy it using the [quotation mark]kwisatz haderach[quotation mark] spell.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-clippingSubject when benjack-R2 is happening:
	say "[one of][quotation mark]On her desk, I saw a clipping of the assassination of President Kennedy -- we have Presidents now, like President Dukakis -- they are in charge of the whole government. Let me back up, the American government is divided into the principal branches: executive, legislative, and judicial. The president…[quotation mark][paragraph break][quotation mark]I do know what a President be; Carol had explained it to me upon a Tymme in much the excruciating Detaile as upon whych I did feare you do embark.[quotation mark][paragraph break][quotation mark]Fine. So, she had this newspaper…[quotation mark][paragraph break][quotation mark]Yes, I do know what be a News Paper.[quotation mark][paragraph break][quotation mark]Right. So, she had this newspaper article about the assassination of President Kennedy -- is that one of her Runes?[quotation mark][paragraph break][quotation mark]Nay, that be the result of her calling upon the Deep Ones; the Rune that doth have Relation to it would of its own Accord enter into her Book.[quotation mark][or]You tell Christabell about the newspaper clipping about the JFK assassination that Carol had on her desk and your suspicion that Carol was behind it, likely with the help of the Deep Ones.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-planSubject when benjack-R2 is happening:
	say "[one of][quotation mark]From what I was able to piece together, Carol[apostrophe]s father has been using Carol and her connection to the Deep Ones to influence key points of history. It sounds like their end-game is to bring back the Elder Gods.[quotation mark][paragraph break][quotation mark]That surpriseth mee not and might do explain the circular Nature of her Unfolding, if in altering History she does send her Spirit back upon itself.[quotation mark][or]You posit that Carol is intentionally affecting nodal points in history to alter the future and restore the reign of the Elder Gods.[no line break][stopping][paragraph break]".
	
Instead of informing benjack-Christabell about benjack-ElderGods when benjack-R2 is happening:
	try informing benjack-Christabell about benjack-planSubject.
	
Instead of informing or quizzing benjack-Christabell about benjack-babySubject when benjack-R2 is happening:
	say "[one of][quotation mark]Are you absolutely sure I[apostrophe]m not pregnant?[quotation mark] you ask nervously. [quotation mark]I did have some nausea, and I was tired. And earlier in the week, I had an entire pint of Cherry Garcia.[quotation mark][paragraph break][quotation mark]Aye, and of all these Signes does not any living Person not have similar Experience from Tymme to Tymme?[quotation mark][paragraph break][quotation mark]Yes, but. It[apostrophe]s hard to believe she was just screwing with me.[quotation mark][paragraph break][quotation mark]That be her Manner, indeed. Rest your Conscience soundly, for in mei Daye even wee Gyrls of tender Ayge did know summe faire Skill of Midwivery. In this Matter there is no lack of Surety.[quotation mark][or]Once again you ask Christabell[apostrophe]s reassurance that you are not pregnant, and once again she tells you that there is no supposed mark, that you are not even a little bit pregnant, and that Carol was deceiving you.[no line break][stopping][paragraph break]".

Instead of informing benjack-Christabell about benjack-mark when benjack-R2 is happening:
	try informing benjack-Christabell about benjack-babySubject .

Chapter 2 - R2 Event

Instead of benjack-ploughvering when benjack-R2 is happening and the player is benjack-ploughver-inhibited:
	say "[benjack-mark-glued]";
	try quizzing benjack-Christabell about benjack-Disruption.
	
Instead of going a direction (called the way) during benjack-R2:
	if yourself is benjack-ploughver-inhibited:
		say "[benjack-mark-glued]";
		try quizzing benjack-Christabell about benjack-Disruption;
	otherwise:
		if the room the way from the location is nothing:
			continue the action;
		otherwise:
			try quizzing benjack-Christabell about benjack-Disruption;
			say "Christabell nods and retreates to her pile of railroad tracks.";
			now benjack-Christabell is nowhere;
			now yourself is not benjack-ploughver-inhibited;
			continue the action.
	
After quizzing benjack-Christabell about benjack-Disruption when benjack-R2 is happening:
	say "[one of]Christabell asks, [quotation mark]How old of Yeares was Carol when you did see her?[quotation mark][paragraph break][quotation mark]About fourteen, maybe fifteen, I[apostrophe]d guess.[quotation mark][paragraph break][quotation mark]I see.[quotation mark] Christabell says self-consciously. [quotation mark]Yes, at that Ayge her Weale outstrove her Wisedom. Already had she devised a Blockayde against my Powers despite my Mark upon her.[quotation mark][paragraph break][quotation mark]Then there[apostrophe]s nothing we can do rein her in?[quotation mark][paragraph break][quotation mark]I did not that say, quite,[quotation mark] replies Christabell. [quotation mark]If you open the Windowe where she doth dwell, the Blockayde will be breached, and I can work a Disruption spell.[quotation mark][paragraph break][quotation mark]And what would become of Carol?[quotation mark][paragraph break][quotation mark]Nothing. Not a thing. And that be a better Fate than hers now.[quotation mark][or]Christabell reiterates the plan to make sure you have it down pat, [quotation mark]Get you to Carol[apostrophe]s Bedchamber, and there cause her to be distracted, by such Diversions as you may, and so avoiding her constant Attentions, slyly do heave open the Windowe that I may werke my Magicks past her Wardes.[quotation mark][paragraph break][quotation mark]Right, got it,[quotation mark] you acknowledge.[no line break][stopping][paragraph break]";
	now yourself is not benjack-ploughver-inhibited.
	
To say benjack-mark-glued:
	say "You are held in place by Christabell[apostrophe]s mark.[paragraph break][quotation mark]Sorry I am, Naomi,[quotation mark] she says, [quotation mark]but e[apostrophe]er you depart, I must tell you how to disrupt Carol, after that, our Fate does reside in your two Hands.[quotation mark][paragraph break]".
	
Chapter 3 - R2 Tests

Part 7 - Scene N3 Boss Battle

When benjack-N3 begins:
	say "Carol stares out the window, her back to you. She[apostrophe]s a bit taller and dressed in a sharply tailored turquoise shift. Without bothering to turn around, she addresses you, [quotation mark]I have been expecting you, Naomi. I knew you would come once more before I die.[quotation mark][paragraph break]";
	now yourself is benjack-ploughver-inhibited.



Chapter 1 - N3 Conversation

Section 1 - N3 Subjects

Section 2 - N3 Quips

Chapter 2 - N3 Event

Chapter 3 - N3 Tests


Book 3 - Runebook Clippings

To tell ( blahblah - a list of text):
	repeat with phrase running through blahblah:
		say "[phrase]".

Instead of examining a benjack-clipping (called the article):
	try reading the article.

Instead of reading a benjack-clipping (called the article):
	tell content of the article;
	say paragraph break.
	
Instead of taking a benjack-clipping:
	say "The news clipping flows around your fingers like a liquid. As soon as you withdraw your hand, it smoothens out again, recovering its normal appearance."
		
Benjack-clipping-shark is a benjack-clipping. 
The Benjack-clipping-shark is in benjack-scrapbook-5.
The title of Benjack-clipping-shark is "Shark Attack".
The list of text called Benjack-clipping-shark-text is always {"SHARK ATTACK![paragraph break]A team of oceanographers from the Woods Hole Institute of Oceanography in Woods Hole, MA was attacked yesterday by sharks in waters about ten miles southeast of Nantucket Island. Of the four man team, one was died and one was injured, requiring hospitalization.[paragraph break] The team was deploying a string of experimental sonar buoys along an underwater ridgeline. The captain of the expedition, Frampton Mays, was the first to notice a disturbance in the water surrounding the boat and the rubber raft in tow, where two divers were working. [quotation mark]The seas were rolling calmly, but something was moving around us, in circles. Something big. The water humped up around it, but there was no wake.[quotation mark][paragraph break]Davis Parks, an electronics engineer from the Sperry Corporation, was with the captain and noticed unusual readings from the devices being put in place, [quotation mark]The first buoy was anchored and we were calibrating it, so I didn[apostrophe]t pay much attention at that point. I thought we had a gain problem because the signal returns were just crazy and the doppler… well, nothing can move that fast, I had to assume one of the guys had snapped and that the assembly was spinning.[quotation mark][paragraph break]According to coast guard vessels responding to the their distress call, water sprayed up around the raft and then the entire raft disappeared below the foaming surface. Initially, the coast guard reported sighting tentacles reaching out of the water around the raft, but it is now believed that these were the heavy lines that had secured the equipment to the ocean floor recoiling upward with the release of tension.[paragraph break]One diver, who was on the raft at the time, was lost: twenty-six-year-old Travis McMaster of New Port, Rhode Island. Dr. McMaster had recently completed graduate studies at the Massachusetts Institute of Technology and was conducting post-doctoral research at Woods Hole.[paragraph break]The other diver, David Tillerson, was nearer to the research vessel when the sharks attacked, and was pulled from the water by the two crew. First aid was performed on the coast guard rescue boat; it is reported that he had a number of large, painful welts on his back. The treating physician commented that these welts were [quotation mark]similar in nature to the sort we see from jellyfish, but much, much larger and deeper.[quotation mark]"}.
The content of Benjack-clipping-shark is Benjack-clipping-shark-text.
Understand "shark/attack" as Benjack-clipping-shark.

Benjack-clipping-actress is a benjack-clipping. 
Benjack-clipping-actress is in benjack-scrapbook-5.
The title of Benjack-clipping-actress is "Actress Disappears".
The list of text called Benjack-clipping-actress-text is always {"A FLASHBULB EXCLUSIVE![paragraph break]Fashion model and star of the silver screen, Hungarian actress Lili Kovács disappeared this afternoon from a private hospital in North Carolina where she was recovering from recent surgery. As previously reported, she had been flown there three days ago after developing what was thought to be acute appendicitis while filming [quotation mark]Two Shots and A Chaser[quotation mark] in Bermuda.[paragraph break]At a cast party Thursday evening, she sudden collapsed, clutching her stomach in pain, and was rushed to a local hospital, where she was given medication and transferred by plane to the U.S. According to guests at the party, the normally svelte starlet appeared to have gained a lot of weight during her week on the vacation island, and some thought that she might have suffered an on set injury because she was walking oddly.[paragraph break]The handsome Wallace Travers, who stars opposite Miss Kovács in the Metro-Goldwyn-Mayer Pictures production, recounted the troubling week that began with the disappearance of the lovely celebrity while they were filming a scene on the beach area behind the posh Venture Casino last Monday. According to Mr. Travers, [quotation mark]She said she was taking a quick dip to cool off, and I thought she would be right back. When we were ready to shoot the next scene, nobody could find her. We checked the trailer, the hotel -- everywhere. Then our sound guy, Mike, says there[apostrophe]s something going on in the surf. He had a good view from up on the boom tower, but from the beach everything looked normal. He said some kind of lights were moving around under the water. ","Some of the locals later told us that[apostrophe]s not too unusual, that algae or whatnot have this faint glow at night, but Mike was really upset and said the lights were huge, the size of city busses, really bright, and moving around incredibly fast. Well, Heinrich called it for the evening, and we let Mike go sober up.[quotation mark][paragraph break]According to the film[apostrophe]s director, Heinrich Habberstamp, Miss Kovács showed up early the next morning for filming as if nothing had happened. Later that day, she admitted to having no recollection of the prior evening.[paragraph break]The private hospital refused to comment in the interest of privacy, but one of Lili[apostrophe]s visiting relatives gave FLASHBULB the inside scoop: When Lili arrived from the airport, she was burning up with fever and brought immediately to the operating room. As the surgeon made the first cut, the wound tore open of its own accord and a mass of gelatinous balls squirted out. [quotation mark]Maybe ten or fifteen pounds of them, each about the size of an orange. They were pink or red, and some had little cords attached. Nobody knew what they were, but they got as many of them out as they could. They had to leave some of the smaller ones that were more firmly attached. When they tried to cut those out, she started bleeding, so they closed her up.[quotation mark][paragraph break]No one knows the whereabouts of the starlet or how she could have gotten out of her bed after such major abdominal surgery. More than a few industry wags have suggested that the whole episode was a publicity stunt to build up anticipation for the film."}.
The content of Benjack-clipping-actress is Benjack-clipping-actress-text.
Understand "actress/disappears" as Benjack-clipping-actress.

Benjack-clipping-body is a benjack-clipping. 
The title of Benjack-clipping-body is "Body Found".
The list of text called Benjack-clipping-body-text is always {"BODY FOUND[paragraph break]Police investigators report the discovery of a headless torso on the western shore of Block Island and are seeking public assistance in determination of the identify of the deceased.[paragraph break]The headless, limbless corpse was discovered yesterday afternoon by Christopher Smythe, a local resident, who was checking his lobster pots. [quotation mark]It came up slowly on the winch and when it got to the surface, I knew there was a problem. I got everyone under it, and we swung it onto the deck and weren[apostrophe]t sure what to do with it, so we put it on ice and headed back to harbor.[quotation mark][paragraph break]The body is described as male, caucasian, and likely forty to fifty years old. The Washington County Medical Examiner, Dr. Lewis Ivar, places the time of death somewhere between two and three days prior to discovery. Dr. Ivar commented, [quotation mark]there were two notable findings: first, a series of discolorations, about four inches in diameter and arranged in a line across the back and wrapping around upward under the axilla; secondly, the presence of a tattoo across the chest. The design of the tattoo is unusual, a skull and below it a phrase in French.[quotation mark] The coroner[apostrophe]s office is hopeful that the unique tattoo will aid them in identification of the victim."}.
The content of Benjack-clipping-body is Benjack-clipping-body-text.
Understand "body/found" as Benjack-clipping-body.

Benjack-clipping-convict is a benjack-clipping. 
The title of Benjack-clipping-convict is "Watery Fate for Convict".
The list of text called Benjack-clipping-convict-text is always {"It looks like the icy hand of justice caught up to escaped murderer Gustave Dellorto earlier today, when his body was recovered at low tide from the Execution Rocks lighthouse in the Long Island Sound.[paragraph break]Leslie Stovebow, the lighthouse keeper who resides in a small residence at the base of the tower, discovered the body this morning as the tide went out. The body was still clad in the striped uniform of the Sing Sing Prison from which he escaped last night.[paragraph break]Mamaroneck, NY police raced against time to remove the body from where it had become lodged in the boulders before the time came back in, submerging the rocks. They successfully identified the body by confirming the number on the uniform matched that of the escaped killer. It is not clear why Dellorto chose to flee to the island, but police suspect he was hoping to murder the lighthouse keeper and go to ground there until his trail grew cold.[paragraph break]Dellorto was convicted of three cases of first degree murder in the winter of 1951, including one G-man, and was suspected of homicide in seven additional cases. It is believed that his crimes were connected to organized crime. He was sentenced to capital punishment, but pardoned after appeal two years ago by Governor Dewey.[paragraph break]Execution Rocks inherits its name from the colonial period, where legend goes that disobedient slaves were shackled at low tide, and served as examples for others, being left there to slowly drown in the pounding waves. This story is considered apocryphal by most, but today, the lighthouse earned its name.[paragraph break][one of][benjack-but-wait-theres-more][or][stopping][paragraph break]CORRIGENDUM[paragraph break]Gustave Dellorto, who escaped from Sing Sing prison earlier this month, was arrested in Detroit, Michigan, yesterday leaving in his wake a fresh series of murders committed during a two-week spree across several states. It was previously reported in error that he had died by drowning in the Long Island Sound, but the body recovered in that incident is now known to be that of Francis Dapper, age 19 of Larchmont, New York, who had been working at the Purdue Island Yacht Club the evening that Gustave escaped. One of the club launches, which had been brought ashore for the winter, was discovered missing later that week. Police believe that it was probably used by Dellorto to reach the Execution Rocks lighthouse, where he abandoned his victim[apostrophe]s body, after swapping clothes to fake his own death in an attempt to evade capture."}.
The content of Benjack-clipping-convict is Benjack-clipping-convict-text.
Understand "water/fate/convict/for" as Benjack-clipping-convict.

[doing the very side effect-within-say that I warn against:]
To say benjack-but-wait-theres-more:
	wait for any key; 
	say "There[apostrophe]s another bit pasted a bit lower on the page.";
	wait for any key.

Benjack-clipping-sable is a benjack-clipping. 
The title of Benjack-clipping-sable is "Boat Wreck On Sable Island".
The list of text called Benjack-clipping-sable-text is always {"A 12-man fishing boat, the Miss Step, out of Halifax, was found wrecked yesterday with loss of all hands on Sable Island, a small, isolated island in the Atlantic Ocean, 190 miles southeast of Halifax. The vessel grounded on an sandy bar near the eastern end of the island and by report was discovered yesterday morning by Ronald Lefevre, sub-intendent of the Sable Island Rescue Station. Subsequently, both Mr. Lefevre and Scott McCallister, who was in charge of the two-man Rescue Station, were also lost.[paragraph break]
The only other inhabitant of the island, Dr. Martha Klein, reported yesterday[apostrophe]s events to the Canadian Coast Guard cutter Hermes by shortwave radio at 10:20 a.m. yesterday morning before herself going missing. The Hermes reached the island within the next two hours, but was unable to launch small landing craft because of gale force squalls. When they did make landfall late that afternoon, there was no evidence of the wreck. The search the island[apostrophe]s three inhabitants was aborted this morning due to further foul weather; additional Coast Guard vessels are en route as we go to press.[paragraph break]The Coast Guard has refused to comment on the matter, but a ham radio operator, Edmund Finister, from Prince Edward Island, gave the following account to the press:[paragraph break][quotation mark]I sometimes listen to the reports going back and forth between Dr. Klein at the Meteorological Station and the mainland, and I wasn[apostrophe]t expecting anything at that time of day, but I just happened to have the radio on, more or less to keep the shack warm. ","Then, out of the blue, I hear Dr. Klein, and she normally has kind of a lilting, friendly voice, but I could hear that she was shaken up. I was in the other room, so I only caught the last part of it, but she was speaking almost too calmly, trying to give all the details, but I could tell she was a hair[apostrophe]s breadth from having a breakdown.[quotation mark][paragraph break][quotation mark]She[apostrophe]s talking to the sparky on the cutter, and saying that first the one guy, Lefevre came speeding back along the beach in his jeep to get McCallister, because he had discovered the fishing boat on its side up on the sand. They asked Dr. Klein to call it in and they both took off again, even though Lefevre had said that when he had seen it the first time, he had a good look around and there were no survivors.[quotation mark][paragraph break][quotation mark]Now, what[apostrophe]s weird is what Lefevre told Klein -- while there were no bodies aboard, there were these… things. I only know what she said on the air, that Lefevre had said that there were these fleshy things all over the ship, in different parts of it, down below, up on the deck. They were whitish or translucent, sort of long tubes of the stuff. Heavy, deadweight if you tried to move them. Some were wrapped up in foul weather jackets, and one that Lefevre poked had some coins embedded in it, about halfway up, he said, just a couple inches deep. His best guess was that they were whale fat since they were so oily, but he was just guessing. Also, he said they had kind of a musky smell.[quotation mark][paragraph break][quotation mark]Whatever they were, they[apostrophe]re gone now. All of them.[quotation mark]"}.
The content of Benjack-clipping-sable is Benjack-clipping-sable-text.
Understand "boat/wreck/sable/island" as Benjack-clipping-sable.

Benjack-clipping-orphan is a benjack-clipping. 
The title of Benjack-clipping-orphan is "Orphan Survives".
The list of text called Benjack-clipping-orphan-text is always {"Orphan Survives Boat Collision, New York[one of][benjack-orphan-fakeout][or][stopping][line break]City Police Frogman Dies Horribly.[paragraph break]Six-year-old Samantha Monteleone was thought lost earlier today after The Knickerbocker, a commercial touring boat with 230 persons aboard, came to an abrupt stop just south of Battery Park. The child was later found trapped below decks, but only after New York City Police Department Frogman Reginald Foster died in the search and rescue operation.[paragraph break]Forty of the passengers this morning were orphans in the first, second, and third grade at the Tuckeridge Home for Orphans in Yonkers, New York. They and their chaperones from the orphanage were enjoying the boat ride around Manhattan, many of them crowded along the starboard bow railing to view the Statue of Liberty, when the 2500 tonne vessel came to an immediate halt in open water.[paragraph break]Many passengers were thrown to the deck, and one orphan reported seeing Samantha go forward over the railing. Chaperones were able to locate all other children, and a shipwide search was organized while the ship returned to its berth on Pier 82. During the return to the dock, the crew swept the ship twice, but were unable to find they girl.[paragraph break]Meanwhile, NYPD frogmen were dispatched to position of the stalled ship using landmark bearings, putting them about a quarter mile south-west of Governors Island. The first vessels upon the scene reported no evidence of debris that would have supported the possibility of an earlier collision and no maritime accidents were witnessed this morning along this heavily trafficked route connecting Manhattan to the Atlantic. ","According to the coast guard, no ships have issued distress calls and none are known to be overdue in ports around New York City.[paragraph break]According to NYPD Frogman Unit Captain Peter Pisar, his ten man team began a standard search operating from two support barges, which arrived on the scene one within a half-hour, and the other near the one hour mark. Despite unusually poor visibility and brisk currents, the search proceeded normally until just before noon, when Sargent Foster’s air hose was hoisted to a barge, bringing with it only the upper half of the diving suit.[paragraph break][quotation mark]You know there’s a problem when the winch doesn’t make the usual sound.[quotation mark] said Jobber Thomson, one of Foster’s squad. [quotation mark]It was just the top part of the suit, from the armpits up. When we opened the helmet, you should have seen the look on his face. Nothing got to Reggie, but I think he died of fright before whatever was down there cut him to pieces.[quotation mark][paragraph break]The NYPD has not release a statement at this time, but officers on the scene speculated that officer Foster might have come into contact with a rotating propeller, although he was working on the bottom the Anchorage Channel, at an average depth of greater than fifty feet.[paragraph break]The orphan, Samantha, was found in the early evening cowering in a normally sealed bilge section of the ship. Perry Sylvester, the director of the Tuckeridge Home for Orphans described the girl as [quotation mark]white as a sheet and catatonic, shivering in the dark, her eyes more white than pupil.[quotation mark] Samantha was taken to the the Rosedale Psychiatric Center in White Plains, where she is recovering."}.
The content of Benjack-clipping-orphan is Benjack-clipping-orphan-text.
Understand "orphan/orphans/survive/survives" as Benjack-clipping-orphan.

To say benjack-orphan-fakeout:
	say "Finally, a feel-good story.[paragraph break]You unfold the article to give it a full perusal.";
	wait for any key; 
	say "Orphan Survives Boat Collision, New York";
	wait for any key.

Benjack-clipping-boardwalk is a benjack-clipping. 
The title of Benjack-clipping-boardwalk is "Boardwalk Tragedy".
The list of text called Benjack-clipping-boardwalk-text is always {"The hunt is underway for two recent highschool graduates last seen on the beach in Lavalette, New Jersey. The youths, Vinny Bernaducci, age 19 of the Bronx, New York, and Sandra Thomas, age 18, of Perth, Australia, disappeared last evening after attending a clambake with friends on the beach.[paragraph break]Ocean County police detective Roger Gutterman who interviewed other teenagers on the beach that evening said that the two missing teens were last seen walking off towards a section of the boardwalk favored by youth, just down the beach towards Seaside Heights.[paragraph break]Investigators have identified the likely location, which contained articles of clothing and other materials that the couple was likely to have used that evening. They were puzzled, however, about the possible significance of a wide furrow leading from the ocean’s edge to that spot under the boardwalk.[paragraph break]Detective Guttman described that furrow as [quotation mark]wide, maybe ten or fifteen feet across, pretty shallow, and flanked by tufts of moist sand.[quotation mark] He also said, [quotation mark]The only thing I’ve ever seen like that was on vacation -- one evening I saw sea turtles hauling themselves up the beach to lay their eggs. It was kind of like that, except much, much bigger.[quotation mark]"}.
The content of Benjack-clipping-boardwalk is Benjack-clipping-boardwalk-text.
Understand "boardwalk/tragedy" as Benjack-clipping-boardwalk.

Benjack-clipping-hargreaves is a benjack-clipping. 
The title of Benjack-clipping-hargreaves is "hargreaves".
The list of text called Benjack-clipping-hargreaves-text is always {"WILSON HARGREAVES, REMEMBERED[paragraph break]Lieutenant Wilson Hargreaves, former Officer-in-Charge of the Winslet Point Lighthouse, was laid to rest today in the Restful Meadows Cemetery in Winksboro, Maine. Devoted husband of Delores, proud father of Katie and Linda, he was fifty-eight. A memorial service was held in Winksboro Town Hall, led by mayor Thomas Snideworth. The mayor praised Wilson’s service to the community, both his constant watchfulness at the Lighthouse and his many projects involving town youth. The major also consoled the grieving family regarding his extraordinarily gruesome death."}.
The content of Benjack-clipping-hargreaves is Benjack-clipping-hargreaves-text.
Understand "hargreaves/wilson/remembered/obituary" as Benjack-clipping-hargreaves.

Benjack-clipping-9 is a benjack-clipping. 
The title of Benjack-clipping-9 is "title9".
The list of text called Benjack-clipping-9-text is always {"article9"}.
The content of Benjack-clipping-9 is Benjack-clipping-9-text.

Benjack-clipping-10 is a benjack-clipping. 
The title of Benjack-clipping-10 is "title10".
The list of text called Benjack-clipping-10-text is always {"article10"}.
The content of Benjack-clipping-10 is Benjack-clipping-10-text.

[Clipping template

Benjack-clipping-xxx is a benjack-clipping. 
The title of Benjack-clipping-xxx is "xxx".
The list of text called Benjack-clipping-xxx-text is always {"xxx"}.
The content of Benjack-clipping-xxx is Benjack-clipping-xxx-text.

]

Book 4 - New Actions

Part 1 - Magicks

Chapter 1 - XIZZIING

Benjack-xizziing is an action applying to nothing. Understand "xizzi" as Benjack-xizziing when the location is in the benjack-realm.

Check Benjack-xizziing:
	if yourself is not benjack-spell_enabled:
		say "[one of]The food particle caught in your front teeth goes flying. That's a relief[or]You are not sure how you made that sound. Maybe it was the beans from last night[or]Triple-word scored, that's a maximum of 74 points. Oh wait, that's not divisible by three, so how could that be true? This is the sort of thing you think about on a daily basis. That's the real horror here[or]Nothing much seems to happen[stopping].";
		stop the action.

Carry out Benjack-xizziing:
	say "[one of][quotation mark]Let us do step summut afar the Rayle Tracks,[quotation mark] counsels Christabell.[paragraph break]That is probably a good idea, because as the two walk towards the edge of the woods, lighting begins to arc from every part of your body to Christabell in impossibly thin, blue-white tendrils, occasionally flashing over to the pile of railroad tracks, which begin to glow red on in the spots where they are touched.[paragraph break]You take a breath and your lungs burn, the air sharp with the smell of ozone; as you continue to walk the sparking dies down and it is easier to breathe.[paragraph break]As after images of the lightning fade, Christabell pats you on the shoulder, almost substantially, and you can see for yourself that the spell worked -- there is nothing translucent about her -- you literally did her a solid.[paragraph break][quotation mark]I do thank you sincerely for restoring the Integrity of my Spirit with this Gifte, whych does owe Provenance to Carol, who, however unwittingly, did preserve mee through your Kindness.[quotation mark][paragraph break][quotation mark]You[apostrophe]re welcome,[quotation mark] you add, glad to have been helpful to at least someone today.[paragraph break][quotation mark]Naomi... I would repay Carol; let us do help her escape her Fusion and persue a more wholesome Unfolding. If we can destroy her Runes, that part at least of her Soul will be washed aclean. I ask you: Go and find a Booke inwhich are written the Source of her Past and Unmake it.[quotation mark][paragraph break][quotation mark]Tear it up?[quotation mark] you ask.[paragraph break][quotation mark]Nay, Violence be not the answer. Let us devise a Magick to unwrought them.[quotation mark] Christabell paces back and force, [quotation mark]A moment whilst I do Conceive a mete Werde for the Spell… Fazzah! No, too short. Mannagummoset! Not the easiest to remember.[quotation mark][paragraph break][quotation mark]Kwisatz haderach?[quotation mark] You suggest, being a big fan of Dune (the book, not the film).[paragraph break][quotation mark]Oh, that does have a lovely ring about it, as long as you can remember it. Yes, let us do go with that.[quotation mark]  She waves her hands, and you suppose that[apostrophe]s that. Christabell continues, [quotation mark]You need only be in the same Place as the Runes, and say those Werdes and the Spell will act. Now, getting you there… For that I do propose a trifling bit of Magick to take you thither and back to here at your Weal, for that the Spell Werde be ‘ploughver[apostrophe]. Just know you, one casting cannot follow another without pause.[quotation mark][paragraph break][quotation mark]Got it. It takes some time to recharge.[quotation mark][or]Your fingertips tingle briefly, but having no stored up ghostly energy, the spell fizzles.[no line break][stopping][paragraph break]";
	now benjack-Christabell is charged-up.

Before answering someone that "xizzi":
	say "[bracket] Hint: You can just say the magic word by itself[one of]. That's part of the magic[or] -- there's no extra charge[or][stopping]. [close bracket][paragraph break]";
	try Benjack-xizziing instead.

Chapter 2 - Ploughvering

Benjack-ploughvering is an action applying to nothing. Understand "ploughver" as Benjack-ploughvering when the location is in the benjack-realm.

Check Benjack-ploughvering:
	if yourself is not benjack-spell_enabled:
		say "[one of]Not sure what that was. Maybe not enough fiber in your diet[stopping].";
		stop the action;
	otherwise:
		if yourself is not benjack-ploughver-armed:
			say "You don't think enough time has passed to recharge your ploughver spell.";
			stop the action;
		otherwise:
			if yourself is benjack-ploughver-inhibited:
				say "You feel ready to cast the spell, but some magical force is preventing it[one of], or at least that is your best guess[or][stopping].";
				stop the action.

Carry out Benjack-ploughvering:
	say "[benjack-ploughver-cutscenes]";
	now yourself is not benjack-ploughver-armed;
	the benjack-ploughver spell arms in 15 turns from now;
	increase the benjack-times_ploughvered of yourself by one;
	if the location is DAN8:
		move the player to M2F3;
	otherwise:
		move the player to DAN8.
		
At the time when the benjack-ploughver spell arms:
	say "You sense that the ploughver spell has recharged.";
	now yourself is benjack-ploughver-armed.
		
To say benjack-ploughver-cutscenes:
	say "[one of]Around you, in no particular direction, you hear screams, strangled almost instantly, drowned in splashes and bubbles and ending in silence. At the same time, your vision fades to darkness and you feel yourself plunging, able to see only vast, hovering shapes above you, moving silently past. You become aware of sounds so low, that you more feel them in your bones than hear them; one such sounds passes below you, receding in endless distance. Then it is over[or]Mens voices, people shuffling around frantically, things moving, falling.[paragraph break][quotation mark]The brazing is blown, pressure is down to ten percent![quotation mark] The voice is just slightly louder than the blaring klaxon.[paragraph break][quotation mark]Dive planes up 30[quotation mark].[paragraph break][quotation mark]Moderators are full in, it[apostrophe]s no good, I[apostrophe]m scramming.[quotation mark][paragraph break][quotation mark]All hands. Prepare for emergency blow. Larsen, in five and then hit it.[quotation mark][paragraph break][quotation mark]Aye. Five. Four. Reactor quenched. Three. Two. We[apostrophe]re pitching. One. Blow![quotation mark][paragraph break][quotation mark]Tanks are good, but no blow. Sir, I think we[apostrophe]re iced up.[quotation mark][paragraph break][quotation mark]Crushing depth minus 200, minus 300.[quotation mark][paragraph break]And then silence[or][stopping]."

Chapter 3 - kwisatzhaderaching




Book 5 - Replacement Default Actions

[TODO]
Instead of examining the player when the location is DAN8 (this is the DAN8-PC description rule):
	say "How you look on the hillside, for example."
	
Instead of examining the player when the location is M2F3 (this is the M2F3-PC description rule):
	say "How you look in the nursery, for example."
	
Book 6 - TMWNMTK - Not For Release

Part 1 - Additional Set Up 

The player holds a flower. "A small decaying daffodil."

Part 2 - Temporary Rooms And Paths

MGR1 is south of M2F2. The printed name of MGR1 is "Temporary MGR1". The description of MGR1 is "For testing purposes, this stand-in for MGR1 has been re-mapped to allow the player to walk between the hillside (south) and hall outside the nursery (north)."

The player is in MGR1.

The printed name of M2F2 is "Hall Outside the Nursery". The description of M2F2 is "This is the hallway outside the nursery. No assumptions are made here except that there is an exit north to the nursery."

Part 3 - Items that will come from other authors

There is a thing called jpk-photo. The description of the jpk-photo is "An old photo with writing on one side." The printed name of the jpk-photo is "faded photo". Understand "photo" or "faded" or "old" as jpk-photo. [just to instantiate it off-stage for testing purposes]

The mtw-teapot is an open opaque container in MGR1. The description of the mtw-teapot is "A white, ceramic teapot." The printed name of the mtw-teapot is "teapot". Understand "teapot" or "ceramic" or "kettle" as mtw-teapot.

Part 4 - Uberuser Actions

[to simulate having another cup of tea in N1]
Liptoning is an action applying to nothing. Understand "lipton" as liptoning.

Carry out liptoning:
	if benjack-times_bestowed of yourself is 3:
		say "Any more caffeine and you will vibrate to death.";
	otherwise:
		increase the benjack-times_bestowed of yourself by one;
		say "You drank [benjack-times_bestowed of yourself] cups of tea.";
		let C be a benjack-clipping;
		if the benjack-times_bestowed of yourself is:
			-- 1:
				let C be Benjack-clipping-body;
			-- 2:
				let C be Benjack-clipping-convict;
			-- 3:
				let C be Benjack-clipping-sable;
		now C is in benjack-scrapbook-5.
		

[to simulate marking the baby]
Branding is an action applying to nothing. Understand "brand" as branding.

Carry out branding:
	say "Now the baby is branded. Yee haw!";
	now yourself is benjack-baby_marked.


Part 5 - Font Testing

Font testing is an action out of world. Understand "fonts" as font testing.

report font testing:
	say "This be a teﬅ of ſuch fontſ as one might make the uſe. Be they the afore 'ſ' or more ﬅyliʃh, but leʃʃ common 'ʃ'. Similarly, the so-called Massachusetts ligature of two o, as in sꝏn and mꝏn."
	


