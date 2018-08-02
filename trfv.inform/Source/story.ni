"TRFV" by Opsizsoft

The story headline is "Two rooms for Veeder".
The story genre is "horror".
The release number is 2. [first beta-test]
The story creation year is 2018.

Use MAX_NUM_STATIC_STRINGS of 30000.

Include Cragne Suite by Ryan Veeder.

[Naming & Scoping Convention Proposal

Everything we generate needs to be prefixed by "benjack".

Grammar definitions need to be scoped for fixed items, to the room/realm in which they occur. 

Grammar definitions of possible conversation topics need to be scoped to location as well to prevent weird responses to ask/tell in the rooms of other players.  Some might need to be scoped to two rooms when the quip is shared. Some are scoped by scene as well.

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
	otherwise if benjack-N2 has ended:
		say the N3-desc of the shadow;
	otherwise:
		say "Error: no description available.";
	say "[paragraph break]".
	
Instead of doing something to a benjack-shadow (called the item):
	if the current action is examining or smelling:
		continue the action;
	if the current action is quizzing or implicit-quizzing or informing or implicit-informing:
		continue the action;
	say "[one of]You snatch at it several times, until your brain registers that it is not there. Alarmingly, when your fingers touch [the item] they penetrate the surface. You know it is not the case, but visually, it appears that your has been severed neatly at the surface, the fingers lost somewhere in the interior. Reflexively, you whip your hand back.[paragraph break]Carol holds her hands to her face and giggles. [quotation mark]Silly Naomi! You should see the look on your face![quotation mark][paragraph break] [quotation mark]That’s not something you can play with,[quotation mark] instructs Carol. [quotation mark]Not worth the trouble. You can play with my [bold type]scrapbook[roman type], though. I made that real enough because I like to show it off[or]Your hand goes right through it[stopping]." 

A benjack-clipping is a kind of thing. 
Benjack-clippings have some text called title.
Benjack-clippings have a list of text called content.
The printed name of a Benjack-clipping is "the clipping entitled [quotation mark][title][quotation mark]". Understand "clipping/clippings/article/articles/printout/paper/cutting/cuttings" as a benjack-clipping when the location is in the benjack-realm.

A benjack-runebook is a kind of opaque openable container. 
A benjack-runebook can be either open or closed. A benjack-runebook is usually closed.
The examine containers rule does nothing when examining a benjack-runebook.

Instead of taking a benjack-runebook:
	say "That's the thing about Rune Books: they like to be where they are an no where else. They are very finicky in that way.".

[Paralleling the project's use of read, but scoped down for this special case]
Understand "read [a benjack-runebook]" as reading when the location is M2F3.
Instead of opening a benjack-runebook, try reading the noun.

Instead of inserting something (called the item) into a benjack-runebook:
	try dropping the item.

Part 2 - Conversation Disambiguation

Understand "tell about [any known thing]" as implicit-informing when the location is in the benjack-realm.

Part 3 - I asked Ben and there is no part 3 - why would there be a part 3?

Part 4 - The Player

The player has a number called benjack-times_bestowed. The benjack-times_bestowed of the player is 0. [number of cups of tea consumed]

Yourself can be benjack-spell_enabled. Yourself is not benjack-spell_enabled. [has player learned to cast xizzi, ploughver and kwisatz haderach]

Yourself can be benjack-baby_marked. Yourself is not benjack-baby_marked. [has carol marked Naomi's baby]

Yourself can be benjack-lin_aware. Yourself is not benjack-lin_aware.
[ever heard of the town of Lin?]

Yourself can be benjack-ploughver-armed. Yourself is benjack-ploughver-armed.[on timer]

Yourself can be benjack-ploughver-inhibited. Yourself is not benjack-ploughver-inhibited. [e.g., if room is warded, set]

Yourself has a number called benjack-times_ploughvered. The benjack-times_ploughvered of yourself is 0.

Yourself can be benjack-ragchewing. Yourself is not benjack-ragchewing.

Yourself can be benjack-KH_accomplished. Yourself is not benjack-KH_accomplished.

Yourself can be benjack-guilty. Yourself is not benjack-guilty.

Part 5 - Locations 

Chapter DAN8 Hillside Path

DAN is a region.

DAN8 is a room in DAN. DAN8 is northeast of DAN3 and south of MGR1.
PLA0 is southeast from DAN8.

Definition: A room is juxtaDAN8 if it is DAN3 or it is MGR1 or it is PLA0.

Printed name of DAN8 is "Hillside Path (Jack Welch)".

The commentary of DAN8 is "[benjack-commentary]".

To say benjack-commentary:
	say "[bold type]Commentary[roman type][paragraph break]Jack Welch and Ben Collins-Sussman[paragraph break]Thanks first of all to Ryan Veeder and Jenni Polodna for giving so many IF authors a chance to work together on this project. The best part of IF is the community and we all had a blast chatting with each other about everything from coding compliance to fungating masses while we were writing. We want to acknowledge just how huge a task R&J took on in not only trying to compile code coming from 85 different directions, but in herding us cats.[paragraph break]Of course, none of us would have been doing this at all had Michael S. Gentry not written Anchorhead in 1998 -- a foundational game, which we both enjoyed and were only too happy to have a chance to emulate.[paragraph break]As the time of writing this, as you can imagine, the deadline is a few hours away and the bug list still needs some swatting, so commentary here will be brief, but I'm sure we will add some additional commentary online. Interactive Fiction Professors of the 24th Century will probably have to pull this from the planetary cybermind, but for now, the URL is http://blog.templaro.com/some-thoughts-about-cragne-manor/. But ";
	say "in case the internet evaporates, here are, at least, some initial thoughts about where our two rooms came from.[paragraph break]Having worked together on a number of IF projects, like [italic type]Rover's Day Out[roman type] and [italic type]Hoosegow[roman type], and some collaborative community projects like Speed-IFs ([italic type]Lobsters on a Plane[roman type]) and [italic type]Narrow Your Eyes[roman type] for the TMBG Apollo 18 20th Anniversary game, we asked R&J if we could have two rooms, but collaborate on plot. And they said yes.[paragraph break]So we did. The nature of the overall project meant that authors had to more or less isolate their games from each other to assure the whole thing would compile reasonably, so we figured that the best way to collaborate between to separate rooms without having items floatings around in circulation would be to focus just on conversation. We've ";
	say "always enjoyed writing conversation and have tried to make NPCs interesting, but we've never really buckled down and used any of the conversation extensions. So, at the start of the project, we asked to include a conversation extension, and with some assistance from Zarf, R&J agreed to include a modified version of Eric Eve's Conversation framework.[paragraph break]Our task then was to come up with a plot that would involve an NPC in each room and a story that would bridge them together. We thought the player should have to interact with them a few times each so they could gradually reveal the story, but didn't want to force the player to spend too much time schlepping back and forth, so we limited it to three interactions with each character and added a spell to magically hop back and forth between the locations.[paragraph break]As for inspiration, most of it came from the original Anchorhead, but other bits were drawn from actual history. Most of the names and events in the game are real. As Christabell mentions, she's originally from Lyn, Massachusetts, which became known as Saugus. If that name is familiar, it's a homage to the long-running Halloween literary competition run by that town, which has always included interactive fiction. Here's one more ghost story to add to that collection.[paragraph break]Hope you enjoy it -- and remember, hints are enabled in our rooms for every scene, just type [quotation mark]hints[quotation mark].[paragraph break]"

Description of DAN8 is "[one of][benjack-hint-prompt][or][stopping][one of]You follow a mud-trampled trail, which leads you blindly through a narrow trench bordered by overgrown brambles and shrubs, once smartly trimmed hedges of the Cragne Estate. The intimidating thorn-studded walls arch over you, all but obscuring the grey marbled clouds overhead.[paragraph break]Turning the corner, you feel the ground beneath your feet suddenly harden. Although the shrubs recede behind you, the shadows deepen as you walk towards a clearing set into the hillside, surrounded on three sides by black cliffs.[paragraph break]As you advance, sound is conspicuous by its absence -- gone is the squealchy sound of the muddy trail, the cracking of branches underfoot, and the rustling sounds of trailside wilderness. You are left contemplating the rocky bowl cut into the cliffside, a natural amphitheater.[paragraph break][italic type]Or is it? Could this hollow have been worked by the hand of man in some earlier time? How much labor and what dedication would have been required in an earlier era to work the ageless Vermont granite into such a perfect shape?[roman type][paragraph break]Your eye is drawn to a raised, brown mass centered before the cliffs; you muse that if the rockface formed a parabola, that mass would be at its focus, like an altar in a cathedral. The earthen lump grows in your vision and you realize that you must have walked towards it, lost in your thoughts. It has already been a long day, and it has barely started.[paragraph break]Up close, you realize that it is not an earthen mound, but a pile of long, rusted iron railway tracks. Tons of them. Stacked taller than you in this remote corner of the estate and forgotten.[paragraph break]You move your head in just the right way and light glances sharply off a glistening corner of track, momentarily blinding you. You rub your eyes reflexively, and when your vision clears, you realize with some embarrassment that a woman sits not even an arm[apostrophe]s length from your face atop the pile[or]You are in a hillside hollow flanked on three sides by sheer granite cliffs and on the other by gnarled vegetation[stopping].[paragraph break]Three trailheads hold out some chance of respite: north, southwest, and southeast."

The benjack-mound is scenery in DAN8.  The printed name of the benjack-mound is "pile of railroad tracks". The benjack-mound is a supporter.
Understand "mound/pile/pyle/lump/track/tracks/iron/sticks/rail/rayle/railroad/rail/rails/piles/lumps/irons/ironne/altar" as the benjack-mound when the location is in the benjack-realm.
The description of the benjack-mound is "[one of]Long shafts of weathered, rusted iron, jutting in all directions for a great mound as if dropped like puny sticks from the sky[or]A tall pile of rusted railway tracks[stopping].".  

Instead of climbing the benjack-mound, say "It doesn't look particularly safe to scramble up those tracks; they're covered with rusty, sharp edges and not as nicely balanced as they appear."

The benjack-altar is a supporter. The description of benjack-altar is "A large, roughly rectangular slab of the same black granite as the surrounding cliffs.". The printed name of benjack-altar is "stone altar". Understand "stone/altar" as benjack-altar when the location is in the benjack-realm.

Before entering or climbing the benjack-altar:
	say "That would [one of]probably be[or]likely be[or]definitely be[or]be incautiously[or]be dangerously[or]be insanely[or]be suicidally[stopping] sacreligious.";
	stop the action.
	
Before entering or climbing the benjack-altar for the eighth time:
	end the story saying "SACRIFICED".
	
The benjack-trail is scenery. benjack-trail is in DAN8. The printed name of benjack-trail is "trailheads".
Understand "trail" or "trails" or "trailhead" or "trailheads" as the benjack-trail when the player is in DAN8.
The description of the benjack-trail is "[one of]Seething nature guards its distance from this place. Between the wispy weeds and degenerate, stunted trees that edge the clearing, you can distinguish three potential escape routes, one each to the north, southwest, and southeast, as the crow flies.[or]Three trailheads hold out some chance of respite: north, southwest, and southeast.[stopping]".

The benjack-sky is a backdrop. benjack-sky is in DAN8.  benjack-sky is in m2f3. The printed name of benjack-sky is "sky". 
Understand "clouds" or "sky" as the benjack-sky when the location is in the benjack-realm.
The description of the benjack-sky is "Leaden clouds gather from all corners, rumbling purposefully towards the area where the curved cliff face meets the sky.". 

The benjack-cliffs are a backdrop.  benjack-cliffs is in DAN8. benjack-cliffs is in M2F3. The printed name of benjack-cliffs is "cliffs". 
Understand "cliff/granite/hill/hillside/mica/cliffs/hills/hillsides" as the benjack-cliffs when the location is in the benjack-realm.
The description of the benjack-cliffs is "[one of]The granite walls are sheer and angle ever so slightly inward, overhanging the clearing; they would be impossible to climb without assistance from the top. The granite itself is fine-grained, but far darker than Vermont granite, is the color of burnt candle wick, all but invisible in this light save for tiny inclusions of reflective, jet-black mica, which impart a numinous glow.[or]The granite walls are sheer and angle ever so slightly inward, overhanging the clearing.[stopping]".  

Instead of climbing the benjack-cliffs, say "Even champion rock-climbers couldn't scale them."

The benjack-weeds are a backdrop. benjack-weeds is in DAN8.  benjack-weeds is in m2f3. The printed name of benjack-weeds is "vegetation".
Understand "hedge/hedges/bramble/brambles/shrub/shrubs/tree/trees/grass/grasses/vegetation/plant/plants/weed/weeds/stump/stumps/branch/branches" as the benjack-weeds when the location is in the benjack-realm.
The description of the benjack-weeds is "[one of]Nothing grows anywhere near the pile of railroad track in the center of the clearing; perhaps the soil has been compacted by eons of spectators who stood just where you do, watching or taking part in ceremonies, perhaps dancing around whatever had occupied the central place. Or maybe the ground here is just unwholesome, unwelcoming to life, poisoned in some way. Only at the periphery, does nature scratch its way towards redemption of this lost grotto. A somber carpet of flaky lichens and mouldering moss gives way to bent fingers of crippled weeds at the edge of the clearing. Some trailheads leading away are barely distinguishable between snaking tendrils of withered vine and fungus-covered rotting stumps that mark the boundary of the surrounding woods.[or]Decrepit vegetation fights for a foothold at the edge of the clearing.[stopping]".

Instead of touching the benjack-weeds:
	say "The gnarled, twisted weeds are nothing but thorns and vicious spines. You pull back."
	
The benjack-clearing is a backdrop. benjack-clearing is in DAN8.  benjack-clearing is in m2f3.  The printed name of benjack-clearing is "clearing".
Understand "bowl" or "amphitheater" or "amphitheatre" or "clearing" as the benjack-clearing when the location is in the benjack-realm.
The description of the benjack-clearing is "[one of]In contrast to the drive up through rolling green hills studded with pines, endless tracts of lush crop lands, and an endless succession of dairy farms, life seems not to have taken hold within this tiny pocket of the Cragne Estate. It is a world apart, sterile and unchanging.[or]While impressive for its natural grandeur, this place is lifeless and still.[stopping]".  

The benjack-dirt is a backdrop. benjack-dirt is in DAN8.  benjack-dirt is in m2f3.  The printed name of benjack-dirt is "[if benjack-N3 is happening or benjack-denouement is happening]snow-covered [end if]dirt".
Understand "soil" or "ground" or "dirt" as the benjack-dirt when the location is in the benjack-realm.
The description of the benjack-dirt is "[one of]Compacted to the consistency of concrete, its blackness seems to eat light and sound, leaving you cold and alone.[or]Cold and dark.[or]Raspy and sharp, perhaps volcanic.[or]Abrasive.[stopping]".  

Instead of smelling the benjack-dirt,  say "Iron, sulfur, and coke. The odor of an idle forge.".

Instead of doing something other than examining with a backdrop (called the locale) when the location is M2F3:
	say "You can only see that in the distance."
	
Instead of examining a backdrop (called the vista) when the location is M2F3:
	if benjack-denouement has ended:
		try searching benjack-window;
	otherwise:
		say "Through the window's aged glass, you can see the [vista].[paragraph break][description of the vista][paragraph break]".

Chapter M2F3 Nursery

M2F is a region.

The M2F3 is a room in M2F. M2F3 is north from M2F2.

Printed name of M2F3 is "Nursery (Ben Collins-Sussman)".

Description of M2F3 is "[benjack-nursery-description][no line break]".

To say benjack-nursery-description:
	if benjack-N1 is happening:
		say "[one of][benjack-hint-prompt][or][stopping][one of]You would have killed to have this charming room when you were yourself five years old: a fluffy pink and white dotted comforter covers a bed overflowing with stuffed animals. Beside it, a play kitchen replete with pots, pans, and a very realistic looking oven. On the far wall, a large bay window trimmed in lacy curtains matching the bedspread. To the left of the window, a small writing desk and tiny lamp, and nearer to the entrance, a an old-fashioned record player rests on wooden stand. [paragraph break]Your eye is quickly drawn, however, to one discordant item: framed black and white photo of a bald man smiles down towards the center of the room. The exquisitely carved heavy gilded frame obviously predates photography by centuries, and you are hard pressed to guess how this odd portrait fits into the decor.[paragraph break]In the center of the room, the tea-party itself is already underway. Seated on each side of the table in toy chairs are several stuff animals. Carol stands just opposite you with teapot in hand.[or]An ideal room for a well-heeled little girl of five. Room furnishings include a bed, a play kitchen, a desk, and a record player. A large bay window occupies most of the external wall, and a large portrait hangs at the foot of the bed. The exit [if benjack-bigmirror is in M2F3]should be to the south, but is currently blocked by a magical mirror[otherwise]is to the south[end if].[paragraph break]A tea party with Carol and a bunch of stuffed animals is in full swing in the middle of the room.[no line break][stopping]";
	otherwise if benjack-N2 is happening:
		say "[one of][benjack-hint-prompt][or][stopping][one of]You walk into Carol's room.[paragraph break]It is the same room as before, but no longer outfitted for a five-year-old.[paragraph break]A somewhat older Carol stands behind her table, her back to you, combing her long blonde hair[or]The room has changed since you last saw it: there are fewer toys and it is less cluttered; in a word, more mature. [paragraph break]The bed now sports a light blanket, pastel blue in color, pulled taut over the twin mattress, with two pillows stacked at the head of the bed. To one side of the window stands a small table with a number of items on it, including a small mirror and some makeup. The large bay window looks out on the same scene as before, but leaves on the trees far below are just now beginning to sport autumn colors. To its side, the small writing desk has been replaced with a larger one and some books are stacked beside the same desk lamp you saw last time. A few pieces of artwork are stuck to the wall next to the desk. Nearer to the entrance, an old-fashioned turntable rests on a wooden stand.[paragraph break]Notably missing is the large framed portrait of President Eisenhower and its weighty golden frame. A single bent nail remains in the wall surrounded by a slightly discolored patch of wall where the picture once hung. [paragraph break]Below that space, three stuffed toys sit in a tight circle on the same tiny chairs that you saw last time[or]The room is surprisingly neat and tidy, particularly for a teenager, and the furnishings are sparse: a bed, table, desk, and a turntable.[paragraph break]A few toys are gathered neatly in one corner beneath a blank patch of wall, where a large framed portrait once hung. A few pieces of artwork are affixed to the wall above the desk[or]The room is surprisingly neat and tidy, and the furnishings are sparse: a bed, table, desk, and a turntable. [paragraph break]A few toys are gathered neatly in one corner beneath a blank patch of wall. Some artwork is affixed to the wall above the desk[stopping]. The exit is to the south.";
	otherwise if benjack-N3 is happening:
		say "[one of][benjack-hint-prompt][or][stopping]The room is brighter, but colder. A fluorescent fixture fills the room with blue-white light, which reflects harshly off the newly painted white walls. The stubby light gray carpet dulls the sound in the room, but contributes no warmth. At least one item in the room has not changed: the bed, same frame, although the blanket is now a darker blue, and there are no pillows. A small reading light is clamped to the headboard and there are a couple books on the nightstand. At the foot of the bed, the heavy gold frame is back, this time occupied by Richard Nixon. On the ground far below the bedroom window, a heavy padding of snow has covered the ground. To the left of the window, the desk is a now a steel and chrome affair, very modern. A computer terminal occupies about half the desk and a notebook lies next to it. Above the desk, two rows of metal shelves have been installed. The record player is gone, replaced now by a reel-to-reel tape machine on the same little stand. The exit is to the south.".
			
The commentary of M2F3 is "[benjack-commentary]".
	
Chapter The benjack realm

[Region is normally the way to do this, but the rooms are already part of DAN and M2F regions, 
and a room isn't allowed to be in more than one region!]
Definition:  a room is in the benjack-realm if it is DAN8 or it is M2F3.

Part 6 - NPC Definitions

Chapter Christabell

benjack-Christabell is a female person in DAN8.  The printed name of benjack-Christabell is "[if benjack-Christabell is unaddressed or benjack-Christabell is eager or benjack-Christabell is bypassed]the bonnet-clad woman[else]Christabell". Understand "woman/Christabell/herself" as benjack-Christabell when the location is DAN8.

The description of benjack-Christabell is "[one of]When you direct your attention to her, she becomes more substantial, or perhaps that is just a trick of the light filtering through the passing cover of clouds.[paragraph break]Her face is not old, but she is no child. It is rimmed by a bonnet, which you guess is some pastel color, but rendered grey in these shadows. Her eyes burn with intelligence below an inclined brow.[paragraph break][or]A bonnet-clad woman with an intense gaze.[stopping]".

Understand "talk to [someone]" as a mistake ("[benjack-talk-hint].") when the location is in the benjack-realm.

[A state-machine that transitions the dialogue between a chain of behaviors in R0.  See "Chapter Scene R0".]
benjack-Christabell can be unaddressed or eager or chatty or candid or bypassed.  benjack-Christabell is unaddressed.

benjack-Christabell can be either run-down or charged-up. benjack-Christabell is run-down.

benjack-Christabell has a number called chargeQuips. The chargeQuips of benjack-Christabell are 0.

Chapter Carol

benjack-Carol is a female person in M2F3.  The printed name of benjack-Carol is "Carol".  Understand "Carol/girl/child/herself" as "[benjack-CarolToken]" when the location is in the benjack-realm. Understand "[benjack-CarolToken]" as benjack-Carol when the location is M2F3. 
Benjack-Carol can be disruption_informed. Benjack-Carol is not disruption_informed.
Benjack-Carol can be requesting_permission.  Benjack-Carol is not requesting_permission.
Benjack-Carol can be teapot-angry. Benjack-Carol is not teapot-angry.

The description of benjack-Carol is "[benjack-Carol-description].".

To say benjack-Carol-description:
	if benjack-N1 is happening:        
		say "A pretty young girl, with wavy hair held in place with hair band, penetrating blue eyes, and cherubic cheeks. Her perfectly pressed powder blue dress is cinched at the waist with an oversize bow of matching color, and below it her skirt balloons outward like a parachute. Below that, she wears brilliant white knee socks and polished shoes with small silver buckles";
	otherwise if benjack-N2 is happening:
		say "Carol is wearing a her highschool uniform";
	otherwise if benjack-N2 has ended:
		say "Carol now wears her hair in a tight, efficient bob, giving her a more mature appearance, but you would put her age at nineteen or twenty".

Instead of touching benjack-Carol, say "Your hand goes right through her, and it doesn’t seem to bother her in the least."

Part 7 - Utilities

Chapter 1 - Stage Crew

To benjack-stage-on ( setnumber - a number):
	let L be a list of things;
	if setnumber is:
		-- 1: 
			now L is N1-furnishings;
		-- 2: 
			now L is N2-furnishings;
		-- 3:
			now L is N3-furnishings;
		-- otherwise:
			say "Error: attemped illegal stage-on";
	repeat with item running through L:
		now item is seen;
		move item to M2F3.
			
To benjack-stage-off ( setnumber - a number):
	let L be a list of things;
	if setnumber is:
		-- 1: 
			now L is N1-furnishings;
		-- 2: 
			now L is N2-furnishings;
		-- 3:
			now L is N3-furnishings;
		-- otherwise:
			say "Error: attemped illegal stage-off";
	repeat with item running through L:
		now item is unseen;
		now item is nowhere.
		
Chapter 2 - Annoying Conversation Default Responses

To benjack-conversation-customize:
	Now the block telling rule response (A) is "[benjack-BTRR]";
	Now the block informing rule response (A) is "[benjack-BTRR]";
	Now the block asking rule response (A) is "[benjack-BARR]";
	Now the block quizzing rule response (A) is "[benjack-BARR]".
	
To benjack-conversation-restore-defaults:
	Now the block telling rule response (A) is "This [provoke] no reaction.";
	Now the block informing rule response (A) is "This [provoke] no reaction.";
	Now the block asking rule response (A) is "[There] [are] no reply."; 
	Now the block quizzing rule response (A) is "[There] [are] no reply.".

Book 2 - Scenes

Part 1 - Scene Start and Stop Criteria

[R0 -> N1 -> R1 -> N2 -> R2 -> N3]

[Only R0 is a recurring scene, so generally we do not need to specify "for the first time". Once a scene ends, it won't trigger again even if its begin conditions are true.

We shouldn't chain scenes together, like "N2 begins when R1 ends" since other people's game scenes may come in between our scenes and we don't want to expose any scene-scoped items during that interval.

Our scenes should also not run when the player is outside our rooms to avoid loading down the game and to help prevent unforeseen interactions]

benjack-R0 is a recurring scene. ["Meet Christabell"; Christabell is unaddressed]
benjack-R0 begins when the player is in DAN8 and M2F3 is not visited.
benjack-R0 ends when the player is not in DAN8. [nursery]

benjack-N1 is a scene. ["Tea Party"]
benjack-N1 begins when the player is in M2F3 and the player has mtw-teapot.
benjack-N1 ends when the benjack-times_bestowed of yourself is greater than 0 and the player is not in M2F3.[safe because Naomi hasn't learned ploughver yet]

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
benjack-N3 ends when benjack-window is open.

benjack-Denouement is a scene. [Jump out window or not]
benjack-Denouement begins when benjack-window is open.
benjack-Denouement ends when M2F3 encloses benjack-naomiRunes or DAN8 encloses benjack-naomiRunes.


[might need some auxiliary scenes -- we'll figure that out as we code.]

Part 2 - Scene-specific Hints

[hints are defined in the begin statement for each scene. Hints are rot13 text]

Benjack-scene-specific-hint is a text that varies. Benjack-scene-specific-hint is "".

benjack-hinting is an action applying to nothing. Understand "hints" or "hint" or "help" or "info" as benjack-hinting when the location is in the benjack-realm.

Carry out benjack-hinting:
	say "[bracket] HINT: An unearthly voice whispers guttural rot13 text from the void beyond the stars. To view it, shift each letter by 13 characters, or more simply, just paste it into the online translator at www.rot13.com[close bracket][paragraph break][bold type][benjack-scene-specific-hint][roman type].". 

Part 3 - Scene R0 Meet Christabell

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

Chapter 1 - R0 Begins

When benjack-r0 begins:
	now Benjack-scene-specific-hint is "Gnyx gb Puevfgnoryy nf zhpu nf lbh jbhyq yvxr sbe fbzr onpxtebhaq vasbezngvba gung znl or vzcbegnag yngre";
	benjack-conversation-customize.
	
[hint text:
Talk to Christabell as much as you would like for some background information that may be important later]
	
To say benjack-hint-prompt:
	say "[bracket] HINT: you can type [quotation mark]hints[quotation mark] for a hint for this location [close bracket][paragraph break]".

Chapter 2 Conversation

Instead of quizzing or informing someone about something when benjack-R0 is happening for the first time:
	say "[benajack-hint-shorter-form]";
	continue the action.
	
Instead of quizzing or informing someone about something when benjack-N1 is happening for the first time:
	say "[benajack-hint-shorter-form]";
	continue the action.
	
To say benajack-hint-shorter-form:
	say "[bracket] HINT: For short, say [quotation mark]a [bold type]subject[roman type][quotation mark] or [quotation mark]t [bold type]subject[roman type][quotation mark] to ASK/TELL about a [bold type]subject[roman type] [close bracket][paragraph break]".

Section R0 Subjects

benjack-salem is a subject.  Understand "salem" as benjack-salem when the player is in DAN8. The printed name of benjack-salem is "Salem".

benjack-puritan is a subject.  Understand "puritan/puritans" as benjack-puritan when the player is in DAN8. The printed name of benjack-puritan is "puritans".

benjack-pilgrim is a subject.  Understand "pilgrim/settler/pilgrims/settlers" as benjack-pilgrim when the player is in DAN8. The printed name of benjack-pilgrim is "pilgrims".

benjack-colony is a subject.  Understand "colony/Massachusetts/colonies" as benjack-colony when the player is in DAN8. The printed name of benjack-colony is "The Massachusetts Colony".

benjack-indian is a subject.  Understand "indian/native/tribe/indigenous/indians/natives/tribes/people" or "native american" or "native americans" or "indigenous american" or "indigenous americans" as benjack-indian when the player is in DAN8. The printed name of benjack-indian is "Indians (Native Americans)".

benjack-Lin is a subject.  Understand "Lin/town/towne/saugus/lyn/lynne/lynne" as benjack-Lin when the player is in DAN8. The printed name of benjack-Lin is "Lin, Massachusetts".

benjack-youth is a subject.  Understand "youth/youthe" as benjack-youth when the player is in DAN8. The printed name of benjack-youth is "youth".

benjack-knotte is a subject.  Understand "knotte/reason/sanity/madness/sane/insane/crazy/insanity" as benjack-knotte when the player is in DAN8. The printed name of benjack-knotte is "knotte of reason".

benjack-ironworks is a subject.  Understand "ironworks/ironwork/ironworke/ironworkes/ironwerke/ironwerkes/ironnewerke/ironnewerkes/forge/forges/smithy/smithies" as benjack-ironworks when the player is in DAN8. The printed name of benjack-ironworks is "ironworks".

benjack-lineage is a subject.  Understand "lineage/lineages" as benjack-lineage when the player is in DAN8. The printed name of benjack-lineage is "lineage".

benjack-gift is a subject.  Understand "gift/gifte/gifts/giftes" as benjack-gift when the player is in DAN8. The printed name of benjack-gift is "gift".

benjack-newgrace is a subject.  Understand "grace" or "new grace" as benjack-newgrace when the player is in DAN8. The printed name of benjack-newgrace is "new grace".

benjack-malificium is a subject.  Understand "malificium" as benjack-malificium when the player is in DAN8. The printed name of benjack-malificium is "malificium".

benjack-Carolsubject is a subject. Understand "[benjack-CarolToken]" as benjack-Carolsubject when the player is in DAN8. The printed name of benjack-CarolSubject is "Carol".

benjack-PC is a subject. Understand "self/myself/me/Naomi" as benjack-PC when the location is in the benjack-realm. The printed name of benjack-PC is "me".

Rule for clarifying the parser's choice of benjack-PC: do nothing.

benjack-Cragne is a subject.  Understand "Cragne/Cragnes" as benjack-Cragne when the location is in the benjack-realm. The printed name of benjack-Cragne is "the Cragnes".

benjack-death is a subject.  Understand "death/deathe/deaths/deathes" as benjack-death when the location is in the benjack-realm. The printed name of benjack-death is "death".

benjack-ghost is a subject.  Understand "ghost/ghosts" as benjack-ghost when the location is in the benjack-realm. The printed name of benjack-ghost is "ghost".

benjack-mark is a subject.  Understand "mark/marks/marke/markes" as benjack-mark when the location is in the benjack-realm. The printed name of benjack-mark is "mark".

benjack-mattanit is a subject.  Understand "Mattanit" as benjack-mattanit when the location is in the benjack-realm. The printed name of benjack-mattinit is "Mattanit".

benjack-Peter is a subject.  Understand "spouse/hubby/husband/Peter/mate" as benjack-Peter when the location is in the benjack-realm. The printed name of benjack-peter is "Peter".

benjack-seight is a subject.  Understand "seight/sight/spectral/spektral" as benjack-seight when the location is in the benjack-realm. The printed name of benjack-seight is "sight".

benjack-spirit is a subject.  Understand "spirit/spirits" as benjack-spirit when the location is in the benjack-realm. The printed name of benjack-spirit is "spirit".

benjack-covenant is a subject.  Understand "third/covenant" as benjack-covenant when the location is in the benjack-realm. The printed name of benjack-covenant is "covenant".

benjack-Vermont is a subject.  Understand "Vermont" as benjack-Vermont when the location is in the benjack-realm. The printed name of benjack-Vermont is "Vermont".

benjack-witch is a subject.  Understand "witch/witches/witchcraft/hex/hexes/spell/spells/witchery/witching/witchhunt/warlock/warlocks/sorcerer/sorcerers/sorceress/sorceresses" as benjack-witch when the location is in the benjack-realm. The printed name of benjack-witch is "witches".

Section R0 Quips

To benjack-jumpTheShark:
	if benjack-Christabell is not candid:
		Ben and Jack jump the shark in four turns from now;
		now benjack-Christabell is candid.
		
At the time when Ben and Jack jump the shark:
	if benjack-R0 is happening:[to make sure this doesn't go off in another location or scene]
		say "Caught up in the conversation, the surrealism of your situation now lands with its full weight and you take a long breath.[paragraph break][quotation mark][bold type]Naomi[roman type], wherefore doth your Countenance so cloud?[quotation mark][paragraph break][quotation mark]I just realized how weird it is to be talking to a [bold type]ghost[roman type].[quotation mark][paragraph break][quotation mark]A [bold type]spirit[roman type].[quotation mark][paragraph break][quotation mark]Okay, a [bold type]spirit[roman type],[quotation mark] you concede. [quotation mark]Maybe all this hanging around with the [bold type]Cragnes[roman type] has rubbed off on me. Maybe I[apostrophe]m the one who has lost her marbles.[quotation mark][paragraph break][quotation mark]Nay, your Marbles be firmly within your Skull, and your [bold type]Knotte of Reason[roman type] still tightly woven.[quotation mark][paragraph break][quotation mark]Mark my words, [bold type]Peter[roman type] is going to have a field day when I tell him how my day has gone.[quotation mark][paragraph break][quotation mark]That I cannot [bold type]mark[roman type], it being beyond my powers.[quotation mark][paragraph break]".

Before quizzing or informing benjack-Christabell about a subject for the first time:
	say "You consider whether it is prudent to kick off a conversation with this stranger, secluded as you are in this deathly quiet corner of the [bold type]Cragne[roman type] Property, but your gregarious nature carries the day. You reason that she’s only a stranger because you haven’t met her yet, and considering that you don’t really know anything about [bold type]Peter[roman type]’s family, maybe it is time to start reaching out a little more. You sit down next to Christabell, and she rewards you with a smile and rapt attention.";
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
	say "[one of][quotation mark]As for [bold type]Peter[roman type], my husband, what you see is what you get: he’s a lovable teddy bear.[quotation mark][paragraph break][quotation mark]Is he?[quotation mark][paragraph break][quotation mark]Yes, but a bit of a workaholic. He puts in a full day, but then he’s up all night with the books. I’ve never seen anyone pour their soul out so much over a job.[quotation mark][paragraph break][quotation mark]Into what Sorte of Bookes does he pour his Soul?[quotation mark][paragraph break][quotation mark]At this point, he’s management, so mostly going over audit summaries. In truth, he’d rather do the bean counting himself. Crunching numbers floats his boat.[quotation mark][paragraph break][quotation mark]I am amazed to hear such news as you have to tell; the Worlde is greatly changed since my [bold type]Youth[roman type].[quotation mark][or]You ramble on for a while about your husband, Peter.[no line break][stopping][paragraph break]".
After quizzing benjack-Christabell about benjack-Peter:
	say "Christabell politely mentions that she has not made his acquaintance."

After informing benjack-Christabell about benjack-Vermont:
	say "[one of][quotation mark]Geography isn’t my strong suit,[quotation mark] you admit. [quotation mark]I think I was supposed to have gone to Vermont when I was a kid, but the ski trip got canceled.[quotation mark]  Looking around, you remark, [quotation mark]I’m not sure Vermont quite agrees with me. The weather seems kind of gray here.[quotation mark][paragraph break][quotation mark]More like that be a Reflexion of the Locale.[quotation mark][or]If you said anything more about Vermont, you’d be making it up.[no line break][stopping][paragraph break]".
After quizzing benjack-Christabell about benjack-Vermont:
	say "[one of]Christabell replies, [quotation mark]There be not much to say on my Part, [bold type]Vermont[roman type], being far from where I spent my [bold type]youth[roman type][if benjack-Christabell is candid]. In truth, I never set my Foote here all the Tymme I did live, but onely did come tardily some many Yeares after my own [bold type]Deathe[roman type], and that not of my Volition[end if]. Thus, there is little I can add of local flavour beyond the Explorations that you may set upon your own Selffe.[quotation mark][or]Christabell admits not knowing all that much about the state where she now resides.[no line break][stopping][paragraph break]".

After informing benjack-Christabell about benjack-Cragne:
	say "[one of][quotation mark]I can’t say too much about my in-laws because almost every time I have brought the subject up, [bold type]Peter[roman type] goes silent.[quotation mark][paragraph break]Christabell nods for you to continue.[paragraph break][quotation mark]But there was this one time -- one evening, we were looking through an old leather-bound album of his. I don’t know where it came from, or what became of it, but he was researching something about a remote uncle of his, Verlan Refi-Cul [bold type]Cragne[roman type] -- sounds French, right? They were fur traders along the Saint Lawrence River in the late 17th Century; most settled near Quebec, but an offshoot worked their way into [bold type]Vermont[roman type].[quotation mark]  You pause to rub some warmth back into your hands. [quotation mark][bold type]Peter[roman type] is normally so withdrawn -- I was surprised that he knew so much about that obscure ancestor, but once he got going on family history, he was like a thing possessed.[quotation mark][paragraph break][quotation mark]No doubt. Many are so-fated.[quotation mark][paragraph break][quotation mark]Yes,[quotation mark] you agree. [quotation mark]Genealogy is fascinating.[quotation mark][or]You wrack your brain for funny anecdotes concerning the Cragnes, but don’t come up with any.[no line break][stopping][paragraph break]”.
After quizzing benjack-Christabell about benjack-Cragne for the first time:
	say "[quotation mark]I suppose you must know the Cragnes; they own all this property and that mansion on the far side of the hill,[quotation mark] you prompt.[paragraph break][quotation mark]I have beheld many of the Crânes, hasting aloung the Pathes, dallying here and there, about their divers Busyness.[quotation mark][paragraph break][quotation mark]What do you think of them?[quotation mark][paragraph break][quotation mark]To witte, nunne did have [bold type]Seight[roman type] of me, thow summe haf talked within my Presence.[quotation mark][paragraph break]".
After quizzing benjack-Christabell about benjack-Cragne:
	say "Despite their proximity, Christabell doesn’t seem to know much about the Cragnes, aside from a general impression that they are creepy[one of] -- which you kind of share, Peter excepted[or][stopping]."
	
After quizzing benjack-Christabell about benjack-mound when benjack-R0 is happening:
	say "[quotation mark][one of]For as long as this great [bold type]Pyle[roman type] of [bold type]Ironne[roman type] Metall has been here, so have I.[quotation mark][or]It has been here a long, long time,[quotation mark] says Christabell.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-cliffs:
	say "[quotation mark][one of]They be nothing like any Marble Granite that I do know, first by their Colour, which is unnatural dark, but also by their Durabilitie. Summe Tymme ago, Men did come with their Tools up from the [bold type]Crâne[roman type] Manour, and did try for Dayes to saw and pierce the stony Walls of this Hollow, but theyr Tools dulled, they made not a Scratch upon the timeless Stone here. That crafted in an earlier Ayge cannot be rewrought by too soft Hand of modern Man[or]They be ancient and theyr dark Faces immutable[stopping].[quotation mark][paragraph break]".
	
After quizzing benjack-Christabell about benjack-clearing:
	say "[quotation mark][one of]I know not the Purpose of this Place, but certain I am that it doth have one most Sacred. In the Winter, when the Trees beyond the [bold type]clearing[roman type] do forsake their Leaves, I am granted a View most specktacular of the fertile Fieldes beyond clear to the River, and I do imagine a Tymme when no Thing did grow there and the People gathered here did see all their Werld layd out afront them, and did give their Thankes and make Sacrifyce to whatever they did worshippe. Then too, e’ry Yeare there be one fyne Daye when some green doth return to the Plantes, that the Rayes of the Sonne do stryke the [bold type]Cliffes[roman type] oddly, and for the briefest moment, they do glowe not black but the most seering white, and that Light doth come together like a bundle and Flash upon the [bold type]Ironne Rayles[roman type] or more like the Place where they do sit to-Daye. In that moment, I am driven from this Place I know not where, and do fynde myself always awakening atop the [bold type]Pyle[roman type]. Indeed, this Place has its owne Mysteries I cannot fathom[or]An ancient Place that doth from mee hyde its Mysteries[stopping].[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-trail:
	say "[quotation mark][one of]For as long as I be here, the [bold type]Crâne[roman type] Manor did make itself my Neighbour. At one Tymme, when the Family did have divers Holdings and Concerns scattered hereabouts, theyre Werkers would oftentimes cross this Place on yonder Trayle, but few [bold type]Crânes[roman type] deign draw near; or when they do, almost always do they scamper by like frightened Hares.[quotation mark][paragraph break][quotation mark]Yes, that’s the [bold type]Cragnes[roman type] for you, I guess. [bold type]Peter[roman type]’s always very down to business, ‘let’s get this show on the road’, no time to smell the roses, right?[quotation mark][paragraph break][quotation mark]Nay, for no Flower doth grow in this bespoilt Soyle. The [bold type]Crânes[roman type] I thinke do sense something of what this Place was, and its enduring Power, and they are rightly scared. I know not its Purpose, but to this day, twice a Yeare, [bold type]Indians[roman type] do come here avoiding those on the trayl as they do come and go. Thow now in modern Tymmes, they apport the traditional Garments and speak to the [bold type]Cliffs[roman type] in a Tongue that not even I do ken. Many tiymmes have I desired to know theyre Purpose, but they not having the [bold type]Seight[roman type] cannot mee aperceeve[or]Once frequented by Indians, it be travelled but rarely these Dayes, and almost never by Crânes[stopping].[quotation mark][paragraph break]".

After informing or quizzing benjack-Christabell about benjack-Christabell:
	say "[one of][quotation mark]I think you may be the only Christabell that I know,[quotation mark] you say.[paragraph break][quotation mark]In truth? This does surprize me greatly, for in mei [bold type]Youth[roman type] it was a most common Appellation. There were... let me render the Account,[quotation mark] Christabell counts on her fingers, [quotation mark]four of us in the Whole of the [bold type]Towne[roman type]. Contrarywise, ‘til this Day I had met ne’er a Naomi, thow the Name be familiar, being fownde in the Booke of Ruth.[quotation mark][or]You and Christabell chat for a while about names for kids -- not that you and Peter expect any, at least for a while --  on the other hand, there was that accident the other evening. No matter, you doubt you’d use any of the names that she comes up with.[no line break][or]There isn’t much else to say about Christabell.[no line break][stopping][paragraph break]".

After informing or quizzing benjack-Christabell about benjack-weeds:
	say "[quotation mark][one of]Naught doth grow near to the [bold type]Pyle[roman type] of [bold type]Ironne[roman type],[quotation mark] says Christabell, bending down to examine the hard soil.[paragraph break][quotation mark]Maybe some chemical is leeching from the [bold type]iron[roman type], like an anti-rust coating or something,[quotation mark] you offer.[paragraph break][quotation mark]I do thynke that unlikely, but do entertain your Saying as Science must needs be of such Advancement to-Daye as would make my Head spin. Rather, thow, have I thowt that the Soyl be too betrampled over the Ayges by the People who did visit this place on theyre Worshippe. As for the scraggly [bold type]Weeds[roman type] at its edge -- I know not theyre names by any modern Terme, but would call them names like Vicar’s Bayne, Creeping Lice Bush, and Widow Cancre -- those [bold type]Weeds[roman type] mostly poysonous to eat or corrosive to the Touch -- they do invade from the [bold type]Crâne[roman type] Landes, any once-productive Farm of theyrs long since fallen to ruin[or]Naught groweth in the Centre and those [bold type]Weeds[roman type] nearer the [bold type]Trayl[roman type], they be not mete to touch for their prickers, poysonous and vile[stopping].[quotation mark][paragraph break]".

After informing benjack-Christabell about benjack-youth:
	say "[one of][quotation mark]All of this is new to me[quotation mark]. You gesture to the surrounding countryside -- at least, to where there would be surrounding countryside if you could see beyond the overbearing dark [bold type]cliffs[roman type] and creeping dark woods. [quotation mark]I grew up in The Big Apple. That’s where I’m from.[quotation mark] [paragraph break] [quotation mark]Whence?[quotation mark] [paragraph break] [quotation mark]The Big Apple. The City. You know, New York. Don’t you say [apostrophe]Big Apple[apostrophe] here?[quotation mark] [paragraph break] [quotation mark]I do not beleeve it be in common Parlance, but I am of late  at far remouved from the Tymme of mei Youth and moor a poor Judge of such Thinges.[quotation mark] [paragraph break] [quotation mark]It’s probably a regional thing, like soda and pop.[quotation mark][or]Christabell seems interested in hearing more about where you grew up, so you go into some detail.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-youth for the first time:
	say "[quotation mark]So,[quotation mark] you begin, [quotation mark]what was your childhood like?[quotation mark][paragraph break]Pleased to be the center of attention, Christabell reminisces, [quotation mark]My early Youth I did spent in Engeland, Mother[apostrophe]s youngest Daughter, so was coddled. I saw little of Father in that time, him being all-waies at Worke in the [bold type]Forges[roman type] of one great [bold type]Towne[roman type] or an Other.[quotation mark][paragraph break][quotation mark]I did notice the accent,[quotation mark] you add. [quotation mark]Are you originally from London?[quotation mark][paragraph break][quotation mark]Nay, never yet Lundon; we did sayle from the Port of Bristoll and came we to the Towne of [bold type]Lin[roman type][if yourself is not benjack-lin_aware].[paragraph break][quotation mark]Never heard of it.[quotation mark][paragraph break][quotation mark]No, even in that day it was a Hamlet, somewhat removed from larger Settlements. In later Dayes, I do believe it were better known as [bold type]Saugus[roman type] for the River that did nearby course[end if]. We were deliwered there by the very Hand of Providence, for Lin was blessed with a River, plentifull Bog Ironne, and no lack of Wood.[quotation mark][paragraph break][quotation mark]About when was this?[quotation mark] you ask.[paragraph break][quotation mark]That Providence delivered us to the Colonie of Massachusetts? That Date I dewe know[apostrophe]th by Hearte: It was the Year of the Lord Sixteen-Hundreds and Fourty-Four, and I was but a Gyrll of eleffen Years.[quotation mark][paragraph break][quotation mark]Sorry -- did you say 1644?[quotation mark][paragraph break][quotation mark]Yes, and I did die in the Year of Our Lord Sixteen-Hundred and Fifty-Three; since whych I have existed as naught but a [bold type]Spirit[roman type].[quotation mark][paragraph break]";
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
	say "You shake your head trying to put her words into some order that makes more sense. [quotation mark]Back the truck up, honey. [bold type]Spirits[roman type]? As in [bold type]ghosts[roman type]?[quotation mark] [paragraph break] [quotation mark]Not precisely, but on Balance more Reight than Wronge -- and whilst you are styll of Mynd to listen, I should add that the [bold type]Gifte[roman type] is restricted a [bold type]lineage[roman type], which does fill me with Curiosity.[quotation mark] She looks appraisingly at your face, taking in the features. [paragraph break] [quotation mark]Wait. [bold type]Ghosts[roman type]?[quotation mark] you cannot get past the word. You brain doesn’t seem to be working very well just now. [paragraph break] [quotation mark]Indeed.[quotation mark] She places a hand on your shoulder, but rather than the reassuring pressure and warmth of human touch, you feel a wave of coldness wash over you. [quotation mark]Tarry a Moment,[quotation mark] Christabell instructs, [quotation mark]until your Mind ceases its Fievre, lest it berne through the [bold type]Knotte of reason[roman type] and unravell you.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Lin:
	say "[one of][quotation mark]Tell me of [bold type]Lin[roman type],[quotation mark] you say.[paragraph break][quotation mark]In that Tymme, the [bold type]Towne[roman type] was barely establyshed, us being among the first to settle along the River where the Mill came to be built. The [bold type]Ironworkes[roman type] were already conceived of and Fowndacion layd when they did sent for my [bold type]Father[roman type], he being versed deeply in the Arts of Forging and also much skilt in the Emplacement of Edifices for such Worke.[quotation mark][paragraph break]Are we far from [bold type]Lin[roman type]?[quotation mark] you prompt.[paragraph break][quotation mark]Some many Miles, I do thynk, for we are Nowe ourselves in [bold type]Vermont[roman type], but [bold type]Lin[roman type] found itselff within the Governance of the [bold type]Massachusetts Colonie[roman type].[quotation mark] Christabell looks to the distance and adds, [quotation mark]Not all of us did call it [bold type]Lin[roman type] -- my Mother and Systers -- we did know it rather for the [bold type]Indian[roman type] Name of the River whereby we were set: [bold type]Saugus[roman type].[quotation mark][or]Christabell tells you of growing up in the town of Lin, or as it may be better known by some, Saugus.[no line break][stopping][paragraph break]";
	now yourself is benjack-lin_aware.	
	
After quizzing benjack-Christabell about benjack-ironworks:
	say "[one of][quotation mark]It was a Marvell of its Day. I have not in mei minds Eye a simple [bold type]Forge[roman type] nor even a Company of Smithies, but an entyre Factorie that did smelt the Earth[apostrophe]s Ores into Pigs and thence crafte them to wrought Werkes putting to shame anything carried on the Sea to us. Even the Masters that did instructe upon a tymme my Father, they did say howe fynne were his Pieces and I think they did harbour summe not little Jealousy thereby.[quotation mark][paragraph break][quotation mark]It sounds remarkable,[quotation mark] you add.[paragraph break][quotation mark]It did make us Prowde, yes, but did become to an Undoing.[quotation mark] Christabell casts her eyes to the ground, and for a moment, she seems less substantial -- you have the impression of looking straight through her towards the dark [bold type]cliffs[roman type] that frame this hollow. [quotation mark]No more need be sayed upon this dower Subjekt.[quotation mark][or]It seems to be something of a sore point with Christabell. One one hand, she’s proud of what her father accomplished in his forge constructed in the town of Lin, but on the other hand, it took him away from Christabell and her mother.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-gift:
	say "[one of][quotation mark]You mentioned [apostrophe]a Gift[apostrophe] -- that[apostrophe]s an odd turn of phrase. A [bold type]gift[roman type] from whom?[quotation mark][paragraph break][quotation mark]Yes, One of the many [bold type]gifts[roman type] of [bold type]Mattanit[roman type], one of the ways his [bold type]new Grace[roman type] doth manifest.[quotation mark][or]You get the impression that Christabell is using this in some sort of theological sense, like a gift from the gods.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-mattanit:
	say "[one of][quotation mark]Who,[quotation mark] you begin, [quotation mark]or what is [bold type]Mattanit[roman type][quotation mark]?[paragraph break]Christabell passes her hand five times in front of her heart and replies, [quotation mark]HE is the last Face of God, and blest are we for coming to know him.[quotation mark][paragraph break]This seems to take some of her strength and she rests her hand on a rail, [quotation mark]I long to say moor, but ‘tis so very draining… I haf not such moor straynthe within mee.[quotation mark][or]It sounds like Mattanit is something that Christabell worshipped.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-newgrace:
	say "[one of]Christabell replies, [quotation mark]Has Worde of [bold type]Mattanit[roman type][apostrophe]s [bold type]Third Covenant[roman type] not reached All even in these late Days? Why, it is by HIS New Grace that many Myrickles are accomplished, the dead browt to life, the Globe delievered to its righteous End.[quotation mark][or]According to Christabell, it is a gift that Mattanit bestowed upon his worshippers.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-covenant:
	say "[one of][quotation mark]That sounds kind of creepy. Third Covenant?[quotation mark] you ask.[paragraph break][quotation mark]Certainly,[quotation mark] replies Christabell, her face full of passion but also marked by fatigue. [quotation mark]You surely must knowe the [bold type]Covenant[roman type] of Abraham, and the New [bold type]Covenant[roman type] of our Lord Jesus Christ?[quotation mark][paragraph break][quotation mark]Well… not so much. I[apostrophe]m more of a died-in-the-wool atheist.[quotation mark][paragraph break][quotation mark]That Denomination is unfamiliar to me[quotation mark], replies Christabell. [quotation mark]No matter -- all of Christendom profits of this Newe Truth, for Our Sovereign [bold type]Mattanit[roman type] says, behold this, the third and finall [bold type]covenant[roman type] to serve the End of Tymmes[apostrophe]. This then be mie cleer and onely meaning.[quotation mark][paragraph break]Housing developments aside, you[apostrophe]re not even sure what a [apostrophe][bold type]covenant[roman type][apostrophe] is, much less what Christabell is rambling on about, so you just nod [quotation mark]okay[quotation mark] and wait for her to run out of steam[or]You are hesitant to bring this up again, because last time Christabell unleashed a word salad of religious mumble-jumbo, but it seems to be some kind of a promise that Mattanit made to his followers[stopping]."

After quizzing benjack-Christabell about benjack-knotte:
	say "[one of][quotation mark]The [bold type]Knotte of Reason[roman type] is the fibre within our Being what doth together bind in a regular manner our Faculties of Ratiocination, the Wellspring of our Creativity, the Vital Forces which impart our Weal, the Tepid Vapors of our Emotions, and the Restraining Compass of Moral Direction,[quotation mark] explains Christabell.[paragraph break]Seeing your glazed expression, she continues, [quotation mark]The [bold type]Knotte of Reason[roman type] doth pull the Needful against tensions be they substantial and invisible. Onely with the [bold type]Knotte[roman type] remaining intackt can you rest lucid of Speech and Wit. Let not it yield lest your sanity flow out of your Heade like the Newe Moon Tiyd.[quotation mark][or]If you followed her explanation correctly -- and that’s not a sure thing -- it sounds like when she says the Knotte of Reason, she means sanity.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-ghost for the first time:	
	say "[if benjack-Christabell is candid]You rub your temples to dispel the growing headache. [quotation mark][bold type]Ghost[roman type], [bold type]spirit[roman type] -- seems like six of one, half a dozen of the other.[quotation mark][paragraph break][quotation mark]Equateth not these Quantities within the Newe Mathimaticks?[quotation mark][paragraph break][quotation mark]Huh? Oh, yes. I suppose. But that[apostrophe]s my point -- I say [bold type]ghost[roman type], you say [bold type]spirit[roman type], to-may-to, to-mah-to, what[apostrophe]s the difference?[quotation mark][paragraph break][quotation mark]I do see whence your confusion proceeds. Before my own [bold type]Deathe[roman type], I would not have quibbled, but nowe the Difference is made Manifest. [end if]Simply put -- and must needes simply prai you attend my Wordes with do Conviction: [bold type]Ghosts[roman type] be not real, but Confabulaycion onely; the sorte told to afrayten Childeren and enjoin theyre Obedience. Any One who maketh the claym of having one caught [bold type]Seight[roman type], I say is a lying dog and owt Penance gainst such Sinne.[quotation mark][paragraph break][quotation mark]So, [bold type]ghosts[roman type] fake, [bold type]spirits[roman type] real -- is that the gist?[quotation mark][paragraph break][quotation mark]You have shivvered the very shaft of mei Arguement with the whetted Arrow of Comprehencion.[quotation mark][paragraph break][quotation mark]I[apostrophe]ll take that as a yes.[quotation mark][paragraph break]".
	
After quizzing benjack-Christabell about benjack-ghost:
	say "According to Christabell, ghosts are made up, but spirits are real."	
	
After quizzing benjack-Christabell about benjack-spirit for the first time:
	say "Christabell has apparently been thinking about this subject at length and immediately rattles off an answer. [quotation mark][bold type]Spirits[roman type] are to be knowne by their Properties, of whych are three. Firstly, [bold type]Spirits[roman type] are Earthly but insubstantial continuations of Souls smote by Artifice rather than Nature. Secondly, a [bold type]spirit[roman type] doth find itself bownd to an objekt and hath not the freedom of mouvement. Thirdly and finally, a [bold type]Spirit[roman type] is by its Constitucion rendered Invisible, therewith accepting of [bold type]Spektral Seight[roman type], which maketh them plainly remarked, but only to those of [bold type]Lineage[roman type].[quotation mark][paragraph break][if benjack-Christabell is candid][quotation mark]So, I take it that you, Christabell, are a [bold type]Spirit[roman type]? And that you are bound here?[quotation mark][paragraph break][quotation mark]Close, but your hawrse-shew does fall wide its mark -- a [bold type]Spirit[roman type] I most assuredly am, and you [bold type]seighted[roman type] behold me, but ‘tis not to this hillside that I be affixed, but rather in some unexpected manner, to this great heap of [bold type]iron[roman type].[quotation mark][paragraph break][quotation mark]How…[quotation mark] you start to formulate some questions.[paragraph break][quotation mark]Tis a long and painful story, and more than I can bear to discuss at the moment.[quotation mark] Cristabel slumps forward, but catches herself. [quotation mark]I am owt of Practice, that this enjoyable Discourse of oures, so appreciated as Respite to my Solitude, has exhausted me to my Core.[quotation mark][end if][paragraph break]".
	
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
	say "[one of][quotation mark]Nowe that you do mention it, I am given to refleckt the Oddity that stands in Contrast to Experience of the Past, the [bold type]Native[roman type] People being both so numberous and skattered a-far and widely within these Shoures, Mountains, and Playns, each Home to sundry [bold type]Tribes[roman type] and Kinships, the Relations betwixt running like Streams o[apostrophe]er these Landes, that not One have I upon layd mei Eyes to sally along these Pathes or threw these [bold type]Woods[roman type], despite my ever-constant Vigil. Strike you not that a Perplexity?[quotation mark][paragraph break]Still parsing that sentence, you reply, [quotation mark]I guess.[quotation mark][paragraph break]Christabell welcomes your remark as a confirmation with a nod and then gestures towards the dark [bold type]cliffs[roman type] surrounding you. [quotation mark]Ne[apostrophe]er the Lesse, do I sense they have long dwelt here, in this Place of Power. Though I have not the [bold type]Seight[roman type] of them, but not a doubt do I entertain in mind that they are all about us, teeming like bilge Ratts.[quotation mark][paragraph break][quotation mark]Yuck.[quotation mark][paragraph break][quotation mark]I meant in Numericity, not Demeanour.[quotation mark][if benjack-Christabell is candid][paragraph break][quotation mark]In my [bold type]Youth[roman type], I did well knowe the [bold type]Tribes[roman type] near the [bold type]Towne[roman type] of [bold type]Lin[roman type] and after awhile, those further owt from not onely our mutual Trade, but in later Tymmes, mei Werke in the Understanding of theyr divers Tongues, Coustumes and Teachings. It was threw them that mei Father did profit summe of their Science, any mei Mother of theyr Wisedom, they haffing made introducion to us of [bold type]Mattanit[roman type] and the [bold type]Third Covenant[roman type].[quotation mark][end if][or]There used to be a lot of American Indians around this area, but Christabell says that few are seen these days.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-mark when benjack-R1 is happening or benjack-R0 is happening:
	say "[one of][quotation mark]A [bold type]Mark[roman type] is a special Touch whereby a [bold type]Spirit[roman type] does grant Favour to One still a-live by laying upon the One so-[bold type]gift[apostrophe]d[roman type] summe small Splintre of their own Essence. Those haffing the [bold type]seight[roman type] will reckognise it a brawnish Stain upon the marked, but Others will not it ken.[quotation mark][paragraph break][quotation mark]Sounds like an evil cow brand for the soul.[quotation mark][paragraph break][quotation mark]The Marking is neither maleficent nor beneficent, it being onely a Reflection of [bold type]Spirit[roman type] from whence it doth floe.[quotation mark][paragraph break][quotation mark]Why would anyone agree to be marked, though?[quotation mark] [paragraph break][quotation mark]In a sense, it be a Blessing for it doth warde the One a-gainst depredations of inimickal [bold type]Spirits[roman type] and by its Presence exclude unwillful Markings thereafter. More of a Pointe, such Magickal Capacities as possessed the Donor are bestown thereby for exercise upon the Will of the Begift[apostrophe]d.[quotation mark][or]According to Christabell, spirits can imprint their mark on people, and it somehow endows those people with magical powers. Apparently, a person can only be marked once, or so she says.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Carolsubject when benjack-R0 is happening:
	benjack-jumpTheShark;  [jumping the shark]
	say "[one of][quotation mark][bold type]Carol[roman type]. Yes, what to say of [bold type]Carol[roman type]...[quotation mark] Cristabell stares into the sky, collecting her thoughts. [quotation mark]I do not Knowe. In different tymmes, she was many things to mee, and I to her, being related not onely of [bold type]Lineage[roman type] but of Minde. She lived not far from here in Manse of Family [bold type]Crâne[roman type].[quotation mark][paragraph break][quotation mark]Then you knew her in your [bold type]youth[roman type]?[quotation mark][paragraph break][quotation mark]No, not mine but hers -- I had long before met my owne [bold type]Deathe[roman type]. In her [bold type]Youth[roman type], she would oft come here and suffer my Companionship; less so, as she did flower to Womanhood, though. I do sincerely avow committing every Efforts and Care to her goode and proper Upbringing and polite Formation, but she was remarkable headstrong and sharp of wit like broken Glass. Even with my [bold type]mark[roman type] set upon her, she did suffer the Corruption and Poyson of that House. I urged her to remain away, but every Summer it did call her back to itself.[quotation mark][paragraph break][quotation mark]Is she still there? In the mansion?[quotation mark][paragraph break][quotation mark]I need so beleeve, though I have not seen her since her [bold type]Deathe[roman type].[quotation mark][or]Carol received Christabell’s mark and was at one time her protegée.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-death:
	say "[one of]Christabell shrugs, [quotation mark][bold type]Deathe[roman type] is much exaggerated Botheration. For most, an end; for [bold type]Spirits[roman type], a temporary annoyance. I would not dwell much upon it, for generally it is unavoidable.[quotation mark][or][quotation mark]Why so morose?[quotation mark] asks Christabell, promptly changes the subject.[no line break][or][quotation mark]Enough about me,[quotation mark] says Christabell, [quotation mark]do tell me of [bold type]yourself[roman type].[quotation mark][stopping][paragraph break]".


Chapter 3 Events

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

The player has a number called benjack-guiltLevel.  The benjack-guiltLevel of the player is 0.
Before going when benjack-Christabell is eager:
	if benjack-guiltLevel of the player is 0:
		now benjack-guiltLevel of the player is 1;
		instead say "Although this unexpected encounter is unnerving, the stranger[apostrophe]s eager smile puts you at ease.[paragraph break][italic type]Perhaps she is lost,[roman type] you think. [italic type]Maybe she is one of Peter[apostrophe]s cousins. In any event, it would be the height of impoliteness to just wander off.[roman type][paragraph break][quotation mark]So, you can then? See me, that is?[quotation mark][paragraph break]";
	else:
		say "[one of][italic type]Screw politeness,[roman type] you say to yourself. [italic type]This day has been weird enough. Whoever she is, if she’s just going to loom at you in the darkness, that’s her problem.[roman type][paragraph break]With renewed determination, you steam off towards the trail, glad to be quit of her.[paragraph break][quotation mark]Fine, then, waifsome Trompe,[quotation mark] she mutters.[quotation mark] Stickly Clod. Upstuckt Wench! Be that like. I expect not Civility from a Crâne, their Rudeness does tell the Tale. Be off then, and the long Vigil I onely will endurre.[quotation mark][paragraph break][or]You wander off, ignoring the woman.[stopping]”;
		continue the action.	

Instead of saying no when benjack-Christabell is eager:
	say "[one of][quotation mark]No?[quotation mark] Her head cocks to one side. [quotation mark]No, you can’t see me?[quotation mark][paragraph break]She walks around you, looking you over, [quotation mark]Yet, Evidence lets no Doubte but that you can perceeve in some Manner mee, that the Sound of mie Speeche is made apparent to you. Mayhap your Visione be afflickted and dim, nonetheless if you lacked the [bold type]Gifte[roman type] of specktral [bold type]Seight[roman type], you would not know me apart from a will-o[apostrophe]-the-wisp.[quotation mark][paragraph break][quotation mark]In Truth now, I pray you unless the English Tongue has so changed that my Wordes meaning is opposed to Itself, grant me that you have Comprehension of mie Speeche, will you?[quotation mark][or]She starts to reply, but then appears confused. [quotation mark]No.[quotation mark] she says to herself.[paragraph break][quotation mark]But then in what Fashion… if you cannot make understoode…[quotation mark][paragraph break]She stares at the black face of the surrounding [bold type]cliffs[roman type] for inspiration.[no line break][or]She appears utterly puzzled at your reply.[no line break][stopping][paragraph break]".

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

Chapter 4 R0 Tests

test r0-benjack with "s / talk to woman / say hello / yes / tell christabell about me / g / t peter / g / t vermont / g / t cragne / g / a christabell / g / t youth / g / a sight / g / a youth / g / a lin / g / a vermont / g / a naomi / g / a peter / g / a cragne / g / a rayle / g / a mound / x mound / a christabell / look / a cliff / climb cliff / g / x clearing / g/ a clearing / g/ a trail / g / x weeds / a lin / a forge / g / a gift / g / a mattanit / g / a grace / g / a third / g / a knotte / g / a ghost / g / a spirit / a lineage / a witch / g / a malificium / g / a salem / g / a puritan / g / a pilgrim / g / a colony / g / a indian / g / a mark / g / a carol / a carol / n / s / n / s / n / n / s / s / s / sw / ne / se / nw".

Chapter 5 - R0 Ends

When benjack-R0 ends:
	benjack-conversation-restore-defaults.

Part 4 - Avant N1

Before going north from M2F2 when benjack-N1 has not happened:
	if the player does not carry the mtw-teapot:
		say "A blonde kindergartner in a blue dress bars your way northward into a bedroom.[paragraph break][one of][benjack-no-teapot1][or][benjack-no-teapot2][or][benjack-no-teapot3][or][benjack-no-teapot4][or]Since you don’t have Carol’s grand-uncle’s teapot, she refuses to let you into her room to the north.[no line break][stopping][paragraph break]";
		stop the action;
	otherwise:
		say "[quotation mark]Oh, we[apostrophe]re all so happy! And it is just about tea time too! Come right in.[quotation mark] The girl turns to face a sock puppet monkey and scolds him, [quotation mark]You just stay in your seat, [bold type]Young Master Sweetpaws[roman type] -- [bold type]mother[roman type] says we will have manners in this house![quotation mark][paragraph break]Much bustling ensues: sounds of porcelain being laid, clinking of utensils, and the heavy thunk of a chair being put in place.[paragraph break][quotation mark]Ready! Come in, [bold type]Naomi[roman type][quotation mark], sings Carol as she ushers you inward.[paragraph break]Perhaps against your better judgement, you follow her.[paragraph break][quotation mark]Here, let me take that for you,[quotation mark] offers Carol as she accepts the teapot and walks to a table at the center of the room.[quotation mark][paragraph break]".
		
				
To say benjack-no-teapot1:
	say "[quotation mark]Hi [bold type]Naomi[roman type]. That[apostrophe]s a funny name -- are you an [bold type]immigrant[roman type] or something? [bold type]Daddy[roman type] says [bold type]immigrants[roman type] don[apostrophe]t understand plain English and that[apostrophe]s why we hate [bold type]communists[roman type]. My name is [bold type]Carol[roman type]. Before you come through my door, want to hear a joke?[quotation mark][paragraph break][quotation mark]But, there[apostrophe]s no door here[quotation mark], you complain.[paragraph break][quotation mark]Knock, knock[quotation mark], says the girl, ignoring your objection.[paragraph break][quotation mark]Who[apostrophe]s there?[quotation mark] you reluctantly respond.[paragraph break][quotation mark]Naomi![quotation mark][paragraph break][quotation mark]Naomi, who?[quotation mark] you ask, confused.[paragraph break][quotation mark]Naomi with a chicken on top![quotation mark] The little girl giggles uncontrollably. [quotation mark]It[apostrophe]s funny because it has a chicken on top, get it?[quotation mark][paragraph break]When the girl stops giggling, she somehow ejects you back into the hallway, adding, [quotation mark]We[apostrophe]re so glad you came for the [bold type]tea party[roman type], but aren[apostrophe]t you missing something important?[quotation mark]".

To say benjack-no-teapot2:
	say "Again, you hear some shuffling around behind the door. You can[apostrophe]t quite make it out, but you think you hear the girl debating something with a number of other whispered voices behind the door.[paragraph break][quotation mark]My [bold type]tea party[roman type] guests are getting bored. Could you just get [bold type]grand-uncle[roman type][apostrophe]s [bold type]teapot[roman type] so you can drink tea with us?[quotation mark][paragraph break]Once again, you find yourself ejected from the bedroom into the hallway.[no line break]".

To say benjack-no-teapot3:
	say "A low rumble builds from within the room before you, shaking the venerable foundations of the mansion, and giving flight to dust that had rested comfortably in various corners of the stately edifice for many long centuries. The sound soars upward in a multitude of tortured voices and ends just as quickly in an exodus of chitinous skittering.[paragraph break]You stand motionless in the aftermath.[paragraph break][quotation mark][bold type]Mister Snortles[roman type] says you don[apostrophe]t have the [bold type]teapot[roman type] and he[apostrophe]s getting rather cross about it. Why don[apostrophe]t you get the [bold type]teapot[roman type]?[quotation mark][paragraph break]Once again, you find yourself ejected from the bedroom into the hallway.[no line break]".
	
To say benjack-no-teapot4:
	say "[quotation mark]That[apostrophe]s a shame, [bold type]Naomi[roman type], still no teapot?[quotation mark][paragraph break]There is a wailing of strange voices within the room just at the limit of your hearing.[paragraph break][quotation mark][bold type]Naomi[roman type],[quotation mark] she continues, [quotation mark]you must be one of the new [bold type]servants[roman type]. It[apostrophe]s okay if you want to play with me -- I used to play with some of the other [bold type]servants[roman type]. Some don[apostrophe]t think it[apostrophe]s okay to come in, but it is. I think some don[apostrophe]t want to play or maybe they don[apostrophe]t know how and that[apostrophe]s why they cry and scream so much, but playing is fun![quotation mark][paragraph break]This elicits a round of muted laughter from the room.[paragraph break][quotation mark]Anyhow, if you want to play tea later, could you pretty, pretty please bring [bold type]grand-uncle[roman type][apostrophe]s [bold type]teapot[roman type]? Thanks![quotation mark][paragraph break]You are once again back in the hallway and from the sound of it, Carol has gone back to play and probably forgotten about you.[no line break]".		

Part 5 - Scene N1 Tea Party

benjack-N1 has a number called benjack-times_whined. Benjack-times_whined is 0.

Rule for printing the name of a benjack-runebook (called the evil tome):
	say "[printed name of the evil tome]";
	omit contents in listing.
	
Chapter 1 -  

When benjack-N1 begins:
	now Benjack-scene-specific-hint is "Lbh arrq gb uhzbe Pneby ol cynlvat nybat jvgu ure grn cnegl. Fur arrqf gb lbh gur zntvp jbeqf [quotation mark]obggbzf-hc[quotation mark] gb freir n ebhaq bs grn. Lbh pna unir n srj phcf bs grn vs lbh jnag, ohg bapr lbh unir unq bar, lbh pna yrnir. Lbh pna nyfb nfx/gryy nobhg n ahzore bs pbairefngvba gbcvpf gung jvyy or hfrshy yngre va gur tnzr";
	benjack-stage-on 1;
	say "[benjack-nursery-description]";
	now the current interlocutor is benjack-Carol;
	now the benjack-bigmirror is in M2F3;
	now mtw-teapot is nowhere;
	now benjack-teapot is in M2F3;
	benjack-conversation-customize.
	
[hint text: You need to humor Carol by playing along with her tea party. She needs to you the magic words bottoms-up to serve a round of tea. You can have a few cups of tea if you want, but once you have had one, you can leave. You can also ask/tell about a number of conversation topics that will be useful later in the game]
	
	
Chapter 2 - N1 Nursery Furnishing Updates

[benjack-shadows are ghost objects (a kind of scenery) that you mostly can't interact with. Note that everything is a shadow except for the {rune book and window}.]

[template:

The benjack- is a benjack-shadow in M2F3. The printed name of the benjack- is "".
Understand "" as the benjack-   when the player is in M2F3.
The N1-desc of the benjack-  is "".
The N2-desc of the benjack-  is "".
The N3-desc of the benjack-  is "".
]
 
The benjack-bigmirror is a scenery closed openable opaque container. The printed name of benjack-bigmirror is "full-length mirror". Understand "full-length/mirror" as the benjack-bigmirror when the player is in M2F3. The description of benjack-bigmirror is "The mirror is about four feet high and half that wide and is affixed to the wall. The bottom of the mirror a good half foot above the floor."

Instead of searching benjack-bigmirror:
	say "This mirror works like every mirror you have ever encountered, reflecting everything in the room."
	
Instead of attacking the benjack-bigmirror:
	say "The mirror becomes insubstantial and your entire force is directed against the wall, which, being old but of excellent quality, is not damaged in the least[one of][paragraph break][quotation mark]Good thing you didn’t break it. Breaking mirrors is bad luck![quotation mark]. Carol claps, pleased with herself[or][stopping]."
	
Instead of entering the benjack-bigmirror:
	say "[one of]Having read too much Lewis Carroll, y[or]Y[stopping]ou walk confidently into the mirror and slam into the wall[one of]. [paragraph break][quotation mark]Nope. It’s not that kind of mirror,[quotation mark] adds Carol, helpfully[or][stopping]."
	
Instead of throwing something held (called the projectile) at benjack-bigmirror:
	say "The [projectile] bounces harmlessly off the not very mirror-like mirror[one of]. On reflection, perhaps it is somewhat mirror-like, after all[or][stopping]."
	
Instead of opening the benjack-bigmirror:
	say "You search the edges of the mirror for hinges, but none are evident." 
	
Before closing the benjack-bigmirror:
	say "There isn't anything to close on this mirror.";
	stop the action.

The benjack-comforter is a benjack-shadow.  The printed name of benjack-comforter is "comforter".
Understand "comforter/ blanket / duvet /cover" as the benjack-comforter when the player is in M2F3.
The N1-desc of the benjack-comforter is "A fluffy white comforter with tiny point dots; snug and comfy even through a Vermont winter."

The benjack-bed is a benjack-shadow in M2F3.  The printed name of benjack-bed is "bed".
Understand "bed" as the benjack-bed when the player is in M2F3.
The N1-desc of the benjack-bed is "A child’s bed of just the right size."

The benjack-pillow is a benjack-shadow in M2F3.  The printed name of benjack-pillow is "pillow".
Understand "pillow"  or "pillows" as the benjack-pillow when the player is in M2F3.
The N1-desc of the benjack-pillow is "A white, fluffy pillow."

The benjack-dolls are benjack-shadows. The benjack-dolls are scenery.  The printed name of the benjack-dolls is "dolls". The indefinite article of the benjack-dolls is "some".
Understand "doll/dolls/animal/animals/stuffed/toys" as the benjack-dolls when the player is in M2F3.
The N1-desc of the benjack-dolls  is "Four dolls dutifully attend the tea party, sitting two to a side on tiny chairs. To one side, a stuffed elephant and a monkey, and to the other some sort of clown and a lamb.[paragraph break]A ravenous horde of other stuffed animals crowd the edges of the bed silently observing the ceremony."

The benjack-elephant is a benjack-shadow. The printed name of the benjack-elephant is "toy elephant".
Understand "elephant" or "mister" or "snortles" as "[benjack-snortlesToken]" when the location is in the benjack-realm.
Understand "[benjack-snortlesToken]" as the benjack-elephant when the player is in the benjack-realm.
The N1-desc of the benjack-elephant is "The leathery elephant’s head is disproportionately large and slumps forward slightly, weighed down by pendulous tusks and a meaty trunk.[paragraph break][one of][quotation mark]I[apostrophe]ve had [bold type]Mister Snortles[roman type] as long as I can remember -- [bold type]daddy[roman type] got him for me when I was just a baby and he had one of his trips to Africa. He has real tusks from a real elephant![quotation mark][or][stopping][paragraph break]From his dry, cracking gray hide, you suspect that the rest of Mister Snortles is equally authentic."

The benjack-monkey is a benjack-shadow. The printed name of the benjack-monkey is "toy monkey".
Understand "monkey" or "master" or "sweetpaws" or "master sweetpaws" or "young master sweetpaws" or "henry/kissinger" as "[benjack-sweetpawsToken]" when the location is in the benjack-realm.
Understand "[benjack-sweetpawsToken]" as benjack-monkey when the player is in M2F3.
The N1-desc of the benjack-monkey is "The limp and gangly sock puppet wears a baseball cap and an Army-Navy sweater.[paragraph break][first time][quotation mark][bold type]Young Master Sweetpaws[roman type] recently joined us, right Sweetpaws?[quotation mark][paragraph break]The monkey sits there, inert, but Carol continues, [quotation mark]Sometimes he gets up to naughtiness, but he[apostrophe]s always back in the morning, aren[apostrophe]t you, [bold type]Sweetpaws[roman type]?[quotation mark][paragraph break]The monkey stares blankly ahead.[only]".

The benjack-cap is a benjack-shadow.  The printed name of the benjack-cap is "cap".
Understand "cap" or "hat" as the benjack-cap when the player is in M2F3.
The N1-desc of benjack-cap is "A Brooklyn Dodgers cap, blue with a white [quotation mark]B[quotation mark]."

The benjack-sweater is a benjack-shadow.  The printed name of the benjack-sweater is "sweater".
Understand "sweater" as the benjack-sweater when the player is in M2F3.
The N1-desc of benjack-sweater is "A grey woolen sweater with an [quotation mark]Army/Navy[quotation mark] logo."

The benjack-clown is a benjack-shadow.  The printed name of the benjack-clown is "toy clown".
Understand "clown/malice" or "malice the clown" as "[benjack-MaliceToken]" when the location is in the benjack-realm. 
Understand "[benjack-maliceToken]" as the benjack-clown when the player is in M2F3.
The N1-desc of benjack-clown is "[one of]Despite his painted smile, the clown[apostrophe]s plastic face conveys a sense of surrender as it stares into an empty tea cup. [paragraph break]It is the largest of the stuffed playmates, almost as tall as Carol. [paragraph break][quotation mark]That[apostrophe]s [bold type]Malice the Clown[roman type],[quotation mark] Carol chirps.[paragraph break][quotation mark][bold type]Malice?[roman type][quotation mark] you prompt. [quotation mark]The [bold type]Clown[roman type]?[quotation mark][paragraph break][quotation mark]Yes, originally I called him Alice, but [bold type]grand-uncle[roman type] said he[apostrophe]s a boy [bold type]clown[roman type] and thought [apostrophe][bold type]Malice[roman type][apostrophe] sounded nice.[quotation mark][or]Like all clown puppets, he exudes visceral evil.[stopping]"

The benjack-lamb is a benjack-shadow.  The printed name of the benjack-lamb is "toy lamb".
Understand "lamb" or "Winkelbottom" or "Misses Winkelbottom" as "[benjack-WinkelbottomToken]" when the location is in the benjack-realm.

Understand "[benjack-WinkelbottomToken]" as the benjack-lamb when the player is in M2F3 and benjack-N1 is happening.
The N1-desc of benjack-lamb is "[one of]The toy is the threadbare, dirty yellowed remnant of what was once a lamb. It stands rigidly on its chair, bits of its underlying metal wire frame poking through where the fur has been rubbed shiny. It has no mouth, no nose, and only some bits of glue suggest where the eyes must have been.[paragraph break][quotation mark][bold type]Misses Winkelbottom[roman type], let me introduce our new friend, [bold type]Naomi[roman type].  Naomi, Misses Winkelbottom.[quotation mark][or]A well-worn toy lamb.[stopping]".

The benjack-kitchen is a benjack-shadow.  The printed name of the benjack-kitchen is "play kitchen".
Understand "kitchen" or "play kitchen" as benjack-kitchen when the player is in M2F3.
The N1-desc of benjack-kitchen is "The play kitchen is all one piece and attached to a plywood backboard. The centerpiece is a metal stove with four pretend gas burners above an oven door. Some pots and pans poke out of the cabinets above the stove. To one side of the stove is a full size ice box, and an apron hangs on a hook to the other side of the stove.".

The benjack-apron is a benjack-shadow.  The printed name of the benjack-apron is "apron".
Understand "apron" as benjack-apron when the player is in M2F3.
The N1-desc of benjack-apron is "A red and white checkered apron just Carol’s size.".

The benjack-pots is a benjack-shadow.  The printed name of the benjack-pots is "pots".
Understand "pots" or "pans" as benjack-pots when the player is in M2F3.
The N1-desc of benjack-pots is "Sauce pans of different sizes, a large frying pan and, perhaps not too surprising this close to Maine, a toy lobster steamer.".

The benjack-pantry is a benjack-shadow.  The printed name of the benjack-pantry is "pantry".
Understand "pantry" or "cabinet" as benjack-pantry when the player is in M2F3.
The N1-desc of benjack-pantry is "Assorted cooking and baking accessories like colanders, measuring cups, a cheese grater, cookie cutters, and a rolling pin.".

The benjack-desk is a benjack-shadow.  The printed name of the benjack-desk is "desk".
Understand "desk" as benjack-desk when the player is in M2F3.
The N1-desc of benjack-desk is "A child-size replica colonial roll top desk with several drawers. The top portion of the desk is open and the writing surface folded down. A spiral-bound book lies on it next to a small lamp with a yellow shade.".

The benjack-drawer is a benjack-shadow.  The printed name of the benjack-drawer is "drawers".
Understand "drawer/drawers" as benjack-drawer when the player is in M2F3.
The N1-desc of benjack-drawer is "Below the desktop, the desk is flanked on each side by three closed drawers.".

The benjack-desktop is a benjack-shadow.  The printed name of the benjack-desktop is "desktop".
Understand "desktop" or "surface" as benjack-desktop when the player is in M2F3.
The N1-desc of benjack-desktop is "Polished walnut[first time]. Probably. You’re not really sure. It is sort of dark, but not too. Let[apostrophe]s face it, most of your furniture is IKEA, so you are a little out of your depth here[only].".

The benjack-lamp is a benjack-shadow.  The printed name of the benjack-lamp is "lamp".
Understand "lamp/cord/shade/light" as benjack-lamp when the player is in M2F3.
The N1-desc of benjack-lamp is "An ordinary desk lamp stands upright on the desktop, its power cord wrapping around the back of the desk. It provides an unusually soft, pleasant yellow light.".
Instead of taking the benjack-lamp, say "It is as insubstantial as everything else in the room; luckily, there are no grues in this corner of Cragne Mansion."

The benjack-recordplayer is a benjack-shadow.  The printed name of the benjack-recordplayer is "record player".
Understand "record player" or "phonograph" or "turntable" as benjack-recordplayer when the player is in M2F3.
The N1-desc of benjack-recordplayer is "A wooden turntable with speakers built into the cabinet rests on a folding wooden table. There is a record on the turntable, but the turntable is off.".

The benjack-record is a benjack-shadow.  The printed name of the benjack-record is "record".
Understand "record" as benjack-record when the player is in M2F3.
The N1-desc of benjack-record is "It is a full size record, black vinyl of course, with a cardboard center, labelled [quotation mark]Perry Como Sings Merry Christmas Music[quotation mark]. According to the label, it is a 78 rpm album produced by RCA Victor in 1946.".

The benjack-table is a benjack-shadow.  The printed name of the benjack-table is "folding stand".
Understand "fold/stand" as benjack-table when the player is in M2F3.
The N1-desc of benjack-table is "A small folding stand.".

The benjack-frame is a benjack-shadow.  The printed name of the benjack-frame is "photo frame".
Understand "frame" or "photo frame" as benjack-frame when the player is in M2F3.
The N1-desc of benjack-frame is "The frame is not well matched to the photograph, it would go much better with an oil painting from an earlier century, and indeed it is not unlikely that some portrait of a remote ancestor was gutted when the need for a frame arose. The four-inch wide frame is intricately carved with fanciful beasts and has seen many applications of gold-leafing.".

The benjack-beasts is a benjack-shadow.  The printed name of the benjack-beasts is "beasts".
Understand "beasts" as benjack-beasts when the player is in M2F3.
The N1-desc of benjack-beasts is "The artist that crafted the heavy golden frame, while expressive and skilled, obviously had little grounding in anatomy. Ten-legged beetles with long, scaly tails chase plump babies with bat wings through forests of spiny-tentacled trees. Ornate, but utter rubbish. ".

The benjack-Eisenhower is a benjack-shadow.  The printed name of the benjack-Eisenhower is "portrait".
Understand "portrait/picture/man/eisenhower/president/ike" as benjack-Eisenhower when the player is in M2F3 and benjack-N1 is happening.
The N1-desc of benjack-Eisenhower is "This is clearly a formal portrait of a balding man probably in his sixties. He has an air of authority, but also an avuncular warmth. There is a nameplate at the bottom of the portrait.".

The benjack-nameplate is a benjack-shadow.  The printed name of the benjack-nameplate is "nameplate".
Understand "nameplate" or "name plate" as benjack-nameplate when the player is in M2F3.
The N1-desc of benjack-nameplate is "[quotation mark]Dwight D. Eisenhower, 34th President of the United States of America.[quotation mark]".

The benjack-toychair is a benjack-shadow.  The printed name of the benjack-toychair is "toy chairs".
Understand "toy chair" or "toy chairs" as benjack-toychair when the player is in M2F3.
The N1-desc of benjack-toychair is "The tiny toy chairs remind you of those found in grammar schools: a shaped plywood seat on a gray tubular steel frame.".

The benjack-teacup is a benjack-shadow.  The printed name of the benjack-teacup is "cup".
Understand "cup" or "tea cup" as benjack-teacup when the player is in M2F3.
The N1-desc of benjack-teacup is "There is a tea cup for each of you, that is, Carol, the four toys sitting at the table, and you. Yours is larger, but the design is the same: alternating blue and gold striped porcelain with a band of little skulls around the rim."

Before taking the benjack-teacup:
	say "Except when it has tea in it, it has only a shadowy existence. Your hand passes through it[one of]. How annoying[or][stopping].";
	stop the action.

The benjack-clothing is a benjack-shadow.  The printed name of the benjack-clothing is "clothing".
Understand "clothing/dress/shoes/buckle/skirt/sock/shift" as benjack-clothing when the player is in M2F3. Understand "uniform" as benjack-clothing when benjack-N2 is happening.
The N1-desc of benjack-clothing is "Every bit of her outfit is picture perfect: every skirt pleat ironed, her socks cloroxed to an actinic glow, and her patent leather shoes polished like black marble.".

The benjack-bow is a benjack-shadow.  The printed name of the benjack-bow is "bow".
Understand "bow" as benjack-bow when the player is in M2F3.
The N1-desc of benjack-bow is "It must be heavily starched to remain that crisp.".

The benjack-wall is a benjack-shadow.  The printed name of the benjack-wall is "wall".
Understand "wall" as benjack-wall when the player is in M2F3.
The N1-desc of benjack-wall is "The walls are painted eggshell white.".

The benjack-floor is a benjack-shadow.  The printed name of the benjack-floor is "floor".
Understand "floor" as benjack-floor when the player is in M2F3.
Understand "rug" or "carpet" as  benjack-floor when the player is in M2F3 and benjack-denouement has not ended.

The N1-desc of benjack-floor is "[one of]Wall-to-wall carpet.[or]A durable blue carpet[stopping]".

[REAL OBJECTS, not shadows:]

The benjack-window is a container.  The benjack-window is fixed in place, openable and closed.
The printed name of the benjack-window is "window".
Understand "window/safety/lock/child-proof/glass/pane/panes" as benjack-window when the player is in M2F3.
The description of benjack-window is "The large[if open], wide open[end if] bay window is framed in the same[if benjack-N2 is happening] age-worn[end if][if benjack-N2 has ended] termite-infested[end if] rosewood trim that decorates the rest of this once great mansion[if benjack-N2 has ended]. It looks like the child-proof lock that once secured the window shut has long since fallen off[end if].". 

Benjack-window can be cracked. Benjack-window is not cracked.
	
Instead of inserting something (called the item) into the benjack-window:
	try dropping the item.

Instead of touching the benjack-window, say "The glass is cool to the touch.".

Instead of opening the benjack-window:
	if the benjack-window is open:
		say "The window is already open.";
	otherwise if benjack-N3 is not happening:
		say "The window has a [if benjack-N1 is happening]complicated[otherwise]badly rusted[end if] child-proof safety lock -- on the outside[one of]. How very uncharacteristically responsible for the Cragnes[or][stopping]."

Understand "look through [something]" or "look out [something]" as searching when the location is M2F3.

Instead of searching benjack-window:
	if benjack-denouement has ended:
		say "The glass is too dirty to see through.";
	otherwise:
		say "Through thick glass warped by time, you can see the estate grounds far below you. The [if benjack-n2 has ended]snow-capped [end if]dark hills[if benjack-n2 is happening], now surrounded by colorful autumn trees,[otherwise] where you encountered Christabell[end if] are in the distance."
	
Instead of attacking benjack-window:
	say "The house has survived Vermont winters, it will survive you.".

The benjack-scrap-5 is a benjack-runebook. The printed name of the benjack-scrap-5 is "scrapbook".
Understand "scrapbook" or "book" as the benjack-scrap-5 when the player is in M2F3 and benjack-N1 is happening.
The description of the benjack-scrap-5 is "[benjack-scrap-5-desc]".

To say benjack-scrap-5-desc:
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
		
Instead of reading the benjack-scrap-5:
	if benjack-scrap-5 is closed:
		say "You flip open the scrapbook, with Carol reading";
		now benjack-scrap-5 is open;
	otherwise:
		say "Carol reads";
	say " along, over your shoulder. In keeping with the cover, the scrapbook contains a number of newspaper clippings, bearing the titles: ";
	let L be a list of text;
	repeat with clip running through benjack-clippings enclosed by benjack-scrap-5:
		add title of clip to L;
	say "[italic type][L][roman type].".
	
The list of things called N1-furnishings is always {benjack-comforter, benjack-pillow, benjack-dolls, benjack-elephant, benjack-monkey, benjack-cap, benjack-sweater, benjack-clown, benjack-lamb, benjack-kitchen, benjack-apron, benjack-pots, benjack-pantry, benjack-desk, benjack-drawer, benjack-desktop, benjack-lamp, benjack-recordplayer, benjack-record, benjack-table, benjack-frame, benjack-beasts, benjack-eisenhower, benjack-nameplate, benjack-toychair, benjack-teacup, benjack-clothing, benjack-bow, benjack-wall, benjack-floor, benjack-window, benjack-scrap-5, benjack-carol, benjack-teacup}.

Chapter 3 - N1 Conversation

Section 1 - N1 Subjects

benjack-Stonington is a subject.  Understand "Stonington" as benjack-Stonington when the location is M2F3. The printed name of benjack-Stonington is "Stonington".

benjack-Connecticut is a subject.  Understand "connecticut" as benjack-connecticut when the location is M2F3. The printed name of benjack-Connecticut is "Connecticut".

benjack-DeepOnes is a subject.  Understand "deep/ones/one" as benjack-DeepOnes when the location is in the benjack-realm. The printed name of benjack-DeepOnes is "The Deep Ones".

benjack-CarolFather is a subject.  Understand "father/dad/daddy/Hugo" as benjack-CarolFather when the location is M2F3. The printed name of benjack-CarolFather is "Carol's father, Hugo".

benjack-NewLondon is a subject.  Understand "new/london" as benjack-NewLondon when the location is M2F3. The printed name of benjack-NewLondon is "New London".

benjack-Groton is a subject.  Understand "groton" as benjack-Groton when the location is M2F3. The printed name of benjack-Groton is "Groton".

benjack-GeneralDynamics is a subject.  Understand "general/dynamics/dynamic" as benjack-GeneralDynamics when the location is M2F3. The printed name of benjack-GeneralDynamics is "General Dynamics".

benjack-submarine is a subject.  Understand "submarine/submarines/boat/boats/sub/subs/bathyscaphe/bathyscaphes/bathysphere/bathyspheres/submersible/submersibles" as benjack-submarine when the location is M2F3. The printed name of benjack-submarine is "submarine".

benjack-job is a subject.  Understand "job/work/employment/occupation/business" as benjack-job when the location is M2F3. The printed name of benjack-job is "employment".

benjack-nautilus is a subject.  Understand "nautilus" as benjack-nautilus when the location is M2F3. The printed name of benjack-nautilus is "Nautilus".

benjack-date is a subject.  Understand "date/year/today" as benjack-date when the location is M2F3. The printed name of benjack-date is "today's date".

benjack-CarolMother is a subject.  Understand "mother/mom/mommy/mum/Joan" as benjack-CarolMother when the location is M2F3. The printed name of benjack-CarolMother is "Carol's mother".

benjack-communists is a subject.  Understand "communist/communists/commie/commies/red/communism/soviet/russian/russians/spy/spies/enemy/enemies/russki/russkis/russky/ruskies/russkys/menace" as benjack-communists when the location is M2F3. The printed name of benjack-communists is "communist menace".

benjack-CarolteaParty is a subject.  Understand "tea/party/ceremony/ritual/rite/parties/rituals/rites" as benjack-CarolteaParty when the location is M2F3. The printed name of benjack-CarolteaParty is "tea party".

benjack-bottomsUp is a subject.  Understand "bottoms/up/bottoms-up" or "bottoms up" as benjack-bottomsUp when the location is in the benjack-realm. The printed name of benjack-bottomsUp is "[quotation mark]bottoms-up[quotation mark]".

benjack-ChristabellSubject is a subject.  Understand "Christabell/Bella/Christie/Christabelle/Christobell/Christobelle" as benjack-ChristabellSubject when the location is M2F3. The printed name of benjack-ChristabellSubject is "Christabell".

benjack-Undesirables is a subject. Understand "foreigner/foreigners/immigrant/immigrants/poor/criminal/criminals/democrat/democrats/union/unions/blacks/mexicans/chinese/vietnamese/undesirable/undesirables" as benjack-Undesirables when the location is M2F3. The printed name of benjack-Undesirables is "undesirables".

benjack-Servants is a subject.  Understand "servant/servants/slave/slaves/indentured/maid/maids/butler/butlers" as benjack-Servants when the location is M2F3. The printed name of benjack-Servants is "servants".

benjack-aMerica is a subject.  Understand "america/united/states" or "united states of america"  as benjack-aMerica when the location is M2F3. The printed name of benjack-aMerica is "America".

benjack-school is a subject.  Understand "school/kindergarten/pre-k/preschool/grammar/elementary" as benjack-school when the location is M2F3 and benjack-N2 has not happened. The printed name of benjack-school is "school".

Section 2 - N1 Quips

After quizzing benjack-Carol about benjack-bigMirror:
	say "[one of][quotation mark]That mirror wasn’t there when I came in, where did it come from?[quotation mark][paragraph break][quotation mark]Oh, I'm sure it will wander off when we've had enough tea.[quotation mark][or]Carol suggests that the mirror will disappear when you have had your fill of tea at her tea party.[no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-Carol:
	say "[one of][quotation mark]About me?[quotation mark] the girl grins and folds her hands, [quotation mark]I am five years old and I can tie my own shoes, except that these ones don[apostrophe]t have laces, and I can read some books, even if they don[apostrophe]t have pictures, although I prefer the ones with pictures.[quotation mark][paragraph break]She looks around the room. Gesturing to the animals seated at the table and perched on the bed, she continues, [quotation mark]I have a lot of friends to keep me company when I[apostrophe]m here, which is all the time now, since my father says that it is better for me to be raised by the [bold type]Cragnes[roman type] on account of he is so busy at [bold type]work[roman type] and [bold type]mother[roman type] has so many guests to entertain. Which is fine. I[apostrophe]m used to it because I have been here since I was a baby except sometimes when I visit [bold type]Stonington[roman type].[quotation mark][or]Carol is only too happy to prattle on about her daily routine of kindergarten and playing in her room with her toys. You do a lot of nodding.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-Stonington:
	say "[one of][quotation mark]That[apostrophe]s where mom and [bold type]dad[roman type] live. It[apostrophe]s in Connecticut. They live there because it is near where [bold type]Dad[roman type][apostrophe]s [bold type]job[roman type].[quotation mark][or][quotation mark]I don[apostrophe]t know. It[apostrophe]s a place, I guess. It takes us a while to drive there and there are more buildings around. I like going there because I can see the water -- not like a lake, but real salt water where the [bold type]Deep Ones[roman type] live.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-Connecticut:
	say "[quotation mark]I don[apostrophe]t know. It[apostrophe]s a place, I guess. It takes us a while to drive there and there are more buildings around. I like going there because I can see the water -- not like a lake, but real salt water where the [bold type]Deep Ones[roman type] live.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-DeepOnes:
	say "[quotation mark]I[apostrophe]ve never seen one, but I guess they are sort of like squid or something, but really huge. I think [bold type]dad[roman type] talks to them sometimes.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-CarolFather:
	say "[one of][quotation mark]His name is Hugo, which is a weird name, but [bold type]dad[roman type] says it[apostrophe]s not too weird because lots of [bold type]Cragnes[roman type] have been named Hugo. He[apostrophe]s the kind of engineer that doesn[apostrophe]t work on trains. He works really hard all the time and helps build [bold type]boats[roman type] to keep [bold type]America[roman type] safe. Sometimes he works in an office across the river, that[apostrophe]s in [bold type]New London[roman type] and sometimes he goes to the dock on our side of the river, where they build the [bold type]boats[roman type]. I went there once, but didn[apostrophe]t see much because everything is indoors where you can[apostrophe]t go except the [bold type]boat[roman type] and I didn[apostrophe]t see much of the [bold type]boat[roman type] because only the top sticks out of the water. That[apostrophe]s the part where you go in and out, so it has to stick out.[quotation mark][or]Carol says that her father, Hugo, is an engineer at a firm that constructs [bold type]submarines.[roman type][no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-NewLondon:
	say "[quotation mark]It is sort of a city, but not a big one. [bold type]Dad[roman type][apostrophe]s office is there, and it[apostrophe]s pretty close to our house in [bold type]Stonington[roman type].[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-Groton:
	say "[quotation mark]Yeah, that[apostrophe]s the place where they build the [bold type]boats[roman type] at [bold type]General[roman type] Dynamite, or something like that.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-Groton:
	say "[quotation mark]That[apostrophe]s the company my [bold type]dad[roman type] works at.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-submarine:
	say "[one of][quotation mark][bold type]Dad[roman type] says that he does the math that helps the other men build the [bold type]boats[roman type] and he helps them go really far and stay underwater for a long, long time. He is making a new one right now that doesn[apostrophe]t even need gas. [bold type]Dad[roman type] says that math is really important because if they make mistakes, the [bold type]boats[roman type] can sink. Sometimes the [bold type]boats[roman type] sink, but not because of mistakes, and [bold type]dad[roman type] says that is the [bold type]Deep Ones[roman type] taking their due, and there isn[apostrophe]t much you can do about that, so he just tried to get the math right.[quotation mark][or]In talking about the submarines that her father helps design, Carol also, alarmingly, frequently mentions the Deep Ones.[no line break][stopping][paragraph break]".
	
Instead of quizzing benjack-Carol about benjack-job when benjack-N1 is happening:
	try quizzing benjack-Carol about benjack-submarine.

After quizzing benjack-Carol about benjack-nautilus:
	say "[quotation mark]I think that[apostrophe]s what [bold type]dad[roman type] calls his new [bold type]boat[roman type].[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-date:
	say "[quotation mark]I dunno,[quotation mark] says Carol with a shrug."
	
After quizzing benjack-Carol about benjack-CarolMother:
	say "[one of][quotation mark]Her name is Joan, but everyone just says Misses [bold type]Cragne[roman type]. I don[apostrophe]t see [bold type]mom[roman type] hardly at all because she has so many parties to run all the time. I don[apostrophe]t understand why so many; some are called luncheons, and people have lunch and talk, and some are called cocktail parties, and I don[apostrophe]t see the point of that because there isn[apostrophe]t very much to eat and people yell a lot and sometimes a taxi has to come and they need to leave. [bold type]Mom[roman type] says all the wives have to have parties, and that is their [bold type]job[roman type], just like the husbands need to go to the office, except for [bold type]poor[roman type] families, which don[apostrophe]t have jobs or parties.[quotation mark][or]Carol[apostrophe]s mom sounds like a stereotypical 1950[apostrophe]s housewife.[no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-communists:
	say "[one of][quotation mark][bold type]Communists[roman type] are the bad guys,[quotation mark] explains Carol. [quotation mark]They always want to hurt us and take our stuff. But we[apostrophe]re lucky, because Ike will keep [bold type]America[roman type] safe.[quotation mark][or][quotation mark][bold type]Dad[roman type] says they[apostrophe]re our enemy. That[apostrophe]s why he builds [bold type]boats[roman type] to go get them.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about mtw-teapot:
	say "[one of][quotation mark]It[apostrophe]s [bold type]grand-uncle[roman type][apostrophe]s [bold type]teapot[roman type]. He got it on one of his ocean voyages and he really likes it, so I[apostrophe]m not suppose to touch it, but it[apostrophe]s just perfect for the [bold type]tea party[roman type] because it is so fancy. Cristabell tried to show me the party without the tea once but that didn[apostrophe]t make any sense, so I asked if her we could be like [bold type]mom[roman type] and have a party and she said that might be more easier, so that[apostrophe]s what we did, and when I want to have a [bold type]tea party[roman type], I always find [bold type]grand-uncle[roman type][apostrophe]s tea pot.[quotation mark][or]Apparently, it is Carol[apostrophe]s [bold type]grand-uncle[roman type][apostrophe]s teapot, and she[apostrophe]s not really supposed to be playing with it.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-GrandUncle:
	say "[one of][quotation mark]He[apostrophe]s really cranky and is always telling me not to touch his stuff and to get off stuff and not too sing too loud.[quotation mark][paragraph break][quotation mark]Yes,[quotation mark] you say, trying to reign in the conversation, [quotation mark]but does he have a name?[quotation mark][paragraph break][quotation mark]I[apostrophe]m sure he does, but I just call him [bold type]great-uncle[roman type]. He says that only the [bold type]Deep Ones[roman type] should not be named.[quotation mark][or]Carol sure doesn[apostrophe]t know much about this grand-uncle of hers, except that he[apostrophe]s a grumpy old guy.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-CarolteaParty:
	say "[one of][quotation mark]I do just love tea parties![quotation mark] Carol buzzes. [quotation mark]I invite all my friends, and it[apostrophe]s so grown up![quotation mark][paragraph break][quotation mark]Why a [bold type]tea party[roman type]?[quotation mark][paragraph break][quotation mark]Because we drink tea at it, of course.[quotation mark][paragraph break][quotation mark]No, I mean, why did you decide to have a [bold type]tea party[roman type] and not some other sort of party, like the kind with balloons.[quotation mark][paragraph break][quotation mark]I don[apostrophe]t have any balloons. Besides, when we were trying to do this, [bold type]Christabell[roman type] said that a [bold type]tea party[roman type] would help us focus and showed me how, and now when I get tired or start to fade, we have a tea party and that sets everything right again. Plus, I really like tea.[quotation mark][if benjack-times_bestowed of yourself is 0][paragraph break][quotation mark]Are you ready to begin?[quotation mark] she asks eagerly. [quotation mark]I[apostrophe]ll pour. Since you[apostrophe]re the guest, you have to be the one to say ‘[bold type]bottoms-up[roman type][apostrophe].[quotation mark][end if][or][if benjack-times_bestowed of yourself is 0]Carol had some odd tastes for a five-year-old and seems hell bent on having a tea party. She reminds you that to start it you have to (for some reason known only to Carol) say, [quotation mark]bottoms-up[quotation mark][otherwise]It[apostrophe]s Carol[apostrophe]s idea of a fun afternoon[end if].[no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-bottomsUp:
	say "In the make-believe logic that only five year-olds can understand, Carol believes that saying [quotation mark][bold type]bottoms-up[roman type][quotation mark] is the right way to start a [bold type]tea party[roman type].[no line break][if benjack-times_bestowed of yourself is 0][paragraph break][quotation mark]Oh, I do wish you would say it -- as my [bold type]father[roman type] says when he comes home, ‘today was murder -- I really need a drink[apostrophe].[quotation mark][paragraph break][quotation mark]I don[apostrophe]t want to ruin your fun,[quotation mark] you say, [quotation mark]but there[apostrophe]s no tea in the [bold type]teapot[roman type]. What are you going to pour?[quotation mark][paragraph break][quotation mark]Geez Louise, [bold type]Naomi[roman type]. It[apostrophe]s pretend! All right? It[apostrophe]s just pretend tea. if you would just say ‘[bold type]bottoms-up[roman type][apostrophe] we could get this party started.[quotation mark][end if][paragraph break]".

After quizzing benjack-Carol about benjack-ChristabellSubject:
	say "[one of][quotation mark]She[apostrophe]s out by those rocks,[quotation mark] says Carol, pointing out the window towards some dark cliffs. [quotation mark]I go out there all the time and we talk and play and do stuff. She taught me to read, you know.  [bold type]Mom[roman type] and [bold type]Dad[roman type] aren[apostrophe]t around and the [bold type]Cragnes[roman type] don[apostrophe]t really care about me ([bold type]mom[roman type] once said they only took me for the money, because they[apostrophe]re not rich like they used to be), so that[apostrophe]s where I go when the weather isn[apostrophe]t too bad.[quotation mark][paragraph break][quotation mark]You know, she[apostrophe]s not alive, right?[quotation mark] You try to say it gently, but feel the girl needs to know.[paragraph break][quotation mark]Sure, she[apostrophe]s a spirit -- don[apostrophe]t call her a ghost because she says that not correct. I mean, gee whiz, at this point, I[apostrophe]m one too. It[apostrophe]s no big deal.[quotation mark][or][quotation mark]So,[quotation mark] you inquire, [quotation mark]it sounds like we have a mutual friend -- [bold type]Christabell[roman type]. How did you meet her?[quotation mark][paragraph break][quotation mark]Oh, [bold type]Christabell[roman type]? We met a long time ago -- maybe when I was four? And I was playing out in the woods, sharpening sticks or something, and I found a great big pile of railroad tracks. Right out there,[quotation mark] she points out the window towards a range of dark cliffs.[paragraph break][quotation mark]Yes, I[apostrophe]ve been there.[quotation mark][paragraph break][quotation mark]You have? Most people can[apostrophe]t see her, you know. They don[apostrophe]t have the sight, but I do because of my [bold type]mom[roman type]. [bold type]Christabell[roman type][apostrophe]s and my [bold type]mom[roman type] are cousins or something, so I got the sight. Anyhow, [bold type]Christabell[roman type][apostrophe]s great. She taught me a lot of stuff.[quotation mark][paragraph break][quotation mark]Like what?[quotation mark][paragraph break][quotation mark]Like reading and how to skin rabbits, but she also taught me special stuff that I had to have the [bold type]mark[roman type] for, like the tea party. She wants to teach me more stuff like that, but says I can concentrate enough, but I can too.[quotation mark][or]It sounds like Christabell has played a role in mentoring and looking after young Carol.[no line break][or]Carol says she knows all about Christabell and seems surprisingly comfortable knowing that she is a spirit.[no line break][stopping][paragraph break]".

	After quizzing benjack-Carol about benjack-Cragne:
	say "[one of][quotation mark]This place is full of them. I[apostrophe]m not supposed to wander around the mansion, but whenever I escape from my room and poke around I find new ones -- in the fountain, behind the bookcase, under the floorboards, above the attic -- it[apostrophe]s like playing hide and seek.[quotation mark][paragraph break][quotation mark]Which ones in particular?[quotation mark] you ask.[paragraph break][quotation mark]Oh, they[apostrophe]re all pretty much the same, so I don[apostrophe]t pay attention. The only I really talk to much is [bold type]grand-uncle[roman type].[quotation mark][or]From Carol[apostrophe]s description, it doesn[apostrophe]t sound like the Cragnes have taken very good care of Carol at the mansion.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-elephant:
	say "[quotation mark][bold type]Mister Snortles[roman type] is a busy executive and he makes a lot of money and is very powerful, so people do things for him. He tends to be a bit short-tempered sometimes, but that is only because he doesn[apostrophe]t have a wife to take care of him.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-lamb when benjack-N1 is happening:
	say "[quotation mark][bold type]Misses Winkelbottom[roman type] lives in a very fancy house and has a lot of luncheons at her house, although she spends some of her afternoons at the country clubs as well. Her closets are full of beautiful dresses and she knows how to dance.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-monkey:
	say "[one of][quotation mark][bold type]Daddy[roman type] showed me some of the monkeys where he works, and I thought they looked sad in their cages since they couldn[apostrophe]t run around because of all the wires. [bold type]Father[roman type] said that they are happier than they look and besides the experiments are important and that they[apostrophe]re helping us fight our enemies, so they should be happy. Then he sent me Young Master Sweetpaws, so I could have a monkey of my own.[quotation mark][paragraph break]She pats the sock monkey on his shoulder, [quotation mark]Yes, [bold type]Sweetpaws[roman type], I know that the other monkeys are not happy, but [bold type]father[roman type] says they need to suck it up.[quotation mark][or]Carol says that her sock puppet monkey disappears at night to do who knows what.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-Eisenhower:
	say "[one of][quotation mark]I like Ike,[quotation mark] says Carol firmly.[paragraph break][quotation mark]You do?[quotation mark][paragraph break][quotation mark]Sure do. That[apostrophe]s what people say, they say, ‘I like Ike[apostrophe], he[apostrophe]s the President. They said it so much that he got elected from being a General, so now he[apostrophe]s in charge of everything.[quotation mark][paragraph break][quotation mark]Is that President [bold type]Eisenhower[roman type]?[quotation mark] You try to remember what years he was in office. Definitely after Lincoln, probably after World War II, and he[apostrophe]s not someone you[apostrophe]ve ever seen on the news, so let[apostrophe]s say Vietnam or before. So that would be what, the fifties? Early sixties? Somewhere in there.[paragraph break][quotation mark]I think so, that sounds right.[quotation mark][or]Carol is one of President Eisenhower[apostrophe]s biggest fans.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-clown:
	say "[one of][quotation mark]Malice is middle class, so before when he was a she, she was a waitress, but now I think he has a real [bold type]job[roman type] and works in a store and sells stuff. Malice lives in a house, but not a big one, and doesn[apostrophe]t have a lot of stuff.[quotation mark][or]There is little that Carol can say that would convince you that Malice the Clown is not a serial killer.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-mark:
	say "[one of][quotation mark]I[apostrophe]ve heard about the ‘mark[apostrophe] -- can you tell me what that is?[quotation mark] you ask.[paragraph break][quotation mark]I can show you.[quotation mark] Carol pirouettes around and pulls down the shoulder of her dress, revealing a small brown mark between the base of her neck and her left shoulder blade. It looks like a birthmark, except that its edges are indistinct and seem to keep shifting, like a living thing. Carol spins back around and takes a bow. [quotation mark]Did you see it?[quotation mark][paragraph break][quotation mark]Yes, I think so. But what[apostrophe]s it for?[quotation mark][paragraph break][quotation mark][bold type]Christabell[roman type] gave it to me because she said that there[apostrophe]s something she doesn[apostrophe]t trust about these [bold type]Cragnes[roman type], so it would protect me. She also said I needed to do be able to do stuff, but I[apostrophe]m not old enough yet for most of the stuff, so I stopped bugging her about it.[quotation mark][or]Carol says that Christabell put her magical mark on her so that she could cast magical spells.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-death:
	say "[one of]Carol holds still a minute, thinking hard, [quotation mark]It[apostrophe]s funny, but I don[apostrophe]t know how I died. Not yet anyway. [bold type]Christabell[roman type] says that[apostrophe]s just a thing I go through sometimes and it[apostrophe]s pretty normal.[quotation mark][or]Death is the least of Carol[apostrophe]s worries.[no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-witch:
	say "[quotation mark]I[apostrophe]ve heard [bold type]dad[roman type] talk about them -- they[apostrophe]re Red [bold type]Communists[roman type] and want to [apostrophe]destroy our way of life[apostrophe], so what[apostrophe]s why we hunt them.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-Vermont:
	say "[one of][quotation mark]This is all Vermont,[quotation mark] says Carol gesturing vaguely out the window. [quotation mark]It[apostrophe]s one of the forty-eight United States.[quotation mark][paragraph break][quotation mark]Isn[apostrophe]t it fifty?[quotation mark][paragraph break][quotation mark]Maybe. I don[apostrophe]t know how that works. My parents live in Connecticut, which is another state, but they don[apostrophe]t want me at home, so I came here for nursery [bold type]school[bold type] and Kindergarten, but [bold type]dad[roman type] says I have to go back to [bold type]Stonington[roman type] next year because he pays taxes, so it[apostrophe]s where I need to go.[quotation mark][or]Carol says that aside from visiting the hillside near the mansion, she doesn[apostrophe]t get out very much.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-Undesirables:
	say "[quotation mark][bold type]Dad[roman type] told me not to talk to any of them because they want to take away the stuff that we have and they are all dirty and criminals. I would never invite any of them to the [bold type]tea party[roman type].[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-Servants:
	say "[quotation mark][bold type]Father[roman type] told me a story once about how one day some [bold type]servants[roman type] got too greedy for their own good and forgot their place and said that they wouldn[apostrophe]t serve their masters and more. They had a big fight and the [bold type]servants[roman type] won, but only for a while, because just when they weren[apostrophe]t looking, the masters came back even more powerful than ever and killed every single last one of them. I love that story and want to hear it all the time when I[apostrophe]m home.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-aMerica:
	say "[quotation mark]That where we are, duh.[no line break][one of] Are you a retard or something?[quotation mark][paragraph break][quotation mark]That[apostrophe]s not a nice thing to say, Carol.[quotation mark][paragraph break][quotation mark]Sooooorry.[quotation mark][or][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-school when benjack-N1 is happening:
	say "[quotation mark][bold type]Father[roman type] and [bold type]mother[roman type] sent me here for pre-K and kindergarten because [bold type]school[roman type] in [bold type]Stonington[roman type] is only a half day and they have lives.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-PC when benjack-N1 is happening:
	say "[quotation mark]Not everybody can see me, so I like you, because you can see me.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-Mattanit:
	say "[quotation mark][bold type]Christabell[roman type] talks about him sometimes. I think I sometimes see him out the window near where the woods starts. He has goat feet[one of], and I[apostrophe]m not even making that up[or][stopping].[quotation mark][paragraph break]".
	
After informing benjack-Carol about benjack-death:
	say "[quotation mark]Oh, I know all about it,[quotation mark] says the little girl cheerfully. [quotation mark]Lots of things die around here all the time.[quotation mark][paragraph break]".
	
Instead of informing benjack-Carol about benjack-mark when benjack-N1 is happening:
	try quizzing benjack-Carol about benjack-mark.
	
Instead of informing benjack-Carol about benjack-ChristabellSubject when benjack-N1 is happening:
	try quizzing benjack-Carol about benjack-ChristabellSubject.
	
After informing benjack-Carol about benjack-PC:
	say "[one of][quotation mark]Do you know where I[apostrophe]m from, Carol?[quotation mark][paragraph break][quotation mark]Connecticut?[quotation mark][paragraph break][quotation mark]Close, I[apostrophe]m from New York City. Have you ever been to New York City?[quotation mark][paragraph break][quotation mark]No, the [bold type]Cragnes[roman type] never take me anywhere. They say just stay in my room and don[apostrophe]t bother them.[quotation mark][or]You tell Carol a little more about yourself.[no line break][stopping][paragraph break]".
	
After informing benjack-Carol about benjack-Cragne:
	say "[one of][quotation mark]You know, we might be related, Carol.[quotation mark][paragraph break][quotation mark]Yeah, I knew that because you can see me.[quotation mark][paragraph break][quotation mark]No, I meant because we are both Cragnes.[quotation mark][paragraph break][quotation mark]Oh, you[apostrophe]re a [bold type]Cragne[roman type] too?[quotation mark] Carol squints. [quotation mark]You don[apostrophe]t seem like one.[quotation mark][paragraph break][quotation mark]Yes, well, by marriage. My husband [bold type]Peter[roman type] is a Cragne. This is my first time here, I[apostrophe]m visiting his relatives.[quotation mark][paragraph break][quotation mark]Well, good luck with that,[quotation mark] giggles Carol playfully[or]You don[apostrophe]t have much more to say about the Cragnes, but you try to keep the conversation going in case Carol says anything useful[stopping]."
	
After informing benjack-Carol about benjack-Peter:
	say "[one of][quotation mark]I wonder if you[apostrophe]re related to my husband, [bold type]Peter[roman type].[quotation mark][paragraph break][quotation mark]Maybe. I dunno. If you want you could bring him up here and I could have a [bold type]tea party[roman type] with him too,[quotation mark] offers Carol[or]You tell Carol more about Peter, trying to see if they have any relatives in common[stopping]."
	
After quizzing benjack-Carol about benjack-GeneralDynamics:
	say “[quotation mark]That’s the company my dad works at.[quotation mark][paragraph break]”.
	
Definition: a subject is Connecticocentric if it is benjack-stonington or it is benjack-newLondon or it is benjack-Groton or it is benjack-Connecticut.
	
After informing benjack-Carol about a Connecticocentric subject:
	say "You admit to Carol that aside from driving through Connecticut on the way up here, you don[apostrophe]t know that state at all."
	
After informing benjack-Carol about benjack-Vermont:
	say "You mention to Carol the few fun facts you know about Vermont."
	
Definition: a subject is Progressive if it is benjack-aMerica or it is benjack-Undesirables.

After informing benjack-Carol about a Progressive subject:
	say "[one of][quotation mark]Listen, Carol, it sounds like your [bold type]dad[roman type] has been filling your head with some pretty mean things that I don[apostrophe]t think are true.[quotation mark][paragraph break][quotation mark][bold type]Dad[roman type] says that truth is what the good guys say.[quotation mark][paragraph break][quotation mark]Um, no. Did you know that [bold type]America[roman type] was founded by [bold type]immigrants[roman type]? Your friend [bold type]Christabell[roman type] -- she was one. She came from England, right? Everyone here was originally a foreigner and many were [bold type]poor[roman type], and now they are all here and everyone should be treated equally, right?[quotation mark][paragraph break][quotation mark]I don[apostrophe]t like the way you tell it. No, I am sure [bold type]dad[roman type] is right. You[apostrophe]re spoiling the [bold type]tea party[roman type]![quotation mark][or]You try to talk some sense into Carol, but you find that trying to change the beliefs of someone with the intellect of a five-year-old is like beating your head against the wall. She can[apostrophe]t focus on anything other than the tea party.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-scrap-5:
	say "[one of][quotation mark]I think everyone should have their own [bold type]scrapbook[roman type],[quotation mark] Carol replies. [quotation mark]Don[apostrophe]t you?[quotation mark][paragraph break]Carol leaves through it.[paragraph break][quotation mark]How do you choose what to paste into it?[quotation mark] you ask.[paragraph break][quotation mark]I don[apostrophe]t know. Just things. News from here and there. Interesting stuff.[quotation mark] Carol stretches and adds with a yawn, [quotation mark]I[apostrophe]ve just started the [bold type]scrapbook[roman type], so there isn[apostrophe]t much in it yet.[quotation mark][or][if benjack-scrap-5 contains more than 2 things][quotation mark]Carol, is it me, or are there more articles pasted into the scrapbook than earlier?[quotation mark][end if]Carol sounds out each title and looks back at you with [if benjack-scrap-5 contains more than 2 things]a shrug. [quotation mark]Looks the same to me.[quotation mark][otherwise]pride.[no line break][end if][stopping][paragraph break]".

Chapter 4 - N1 Events

The benjack-slithering-vomit-bladder-of-Katallakh is an open container. Understand "slithering/vomit/bladder/katallakh/slimy/dark-green" or "slithering vomit bladder bladder of Katallakh" or "vomit bladder of Katallakh" or "bladder of Katallakh" as the benjack-slithering-vomit-bladder-of-Katallakh. The printed name of the benjack-slithering-vomit-bladder-of-Katallakh is "slithering vomit bladder of Katallakh". The description of the slithering vomit bladder of Katallakh is "A  thick, rugated envelope of flesh. Occasionally, it slithers a bit.".

[kill the (empty) in inventory listings durng this scene]
Rule for printing the name of a mtw-teapot when benjack-N1 is happening:
	say "[printed name of mtw-teapot]";
	omit contents in listing.

Before going a direction when the location is juxtaDAN8 and benjack-N1 has happened and yourself is not benjack-spell_enabled:
	if the room the noun from the location is DAN8:
		say "You round the path and find yourself in a familiar knoll flanked on three sides by tall, dark cliffs. In the center of a clearing before you is a huge pile of rusting railroad track.[paragraph break]Leaning back against the pile of iron, [benjack-Christabell] gives you a fatigued wave and after some exertion of effort becomes more substantial.";
	otherwise:
		continue the action.
		
Instead of going south when the location is M2F3 and benjack-N1 is happening and benjack-bigmirror is in M2F3:
	say "[one of]You turn around to walk out, but the door isn’t there. The wall behind you is bare, except for a mirror, which is about where the door was.[paragraph break]That doesn’t make any sense, you think to yourself. I didn’t hear anything change, and I’m sure there was a door there. Looking around the room, there is no other exit, which makes no sense at all since you obviously did enter the room somehow[or]Where there used to be an entrance, a full-length mirror now occupies the wall[stopping].[paragraph break]Carol [one of]gives you a puzzled look and [or][stopping]points to her tea cup."
	
Definition: A thing is benjack-Katallakh-devourable if it is not worn and it is not mtw-teapot.

Definition: A thing is a benjack-henchling if it is benjack-monkey or it is benjack-lamb or it is benjack-elephant or it is benjack-clown.

Every turn during benjack-N1:
	if the benjack-times_bestowed of yourself is less than 1:
		increase the benjack-times_whined of benjack-N1 by 1;
		if benjack-times_whined of benjack-N1 is:
			-- 1:
				do nothing;
			-- 2:
				say "[benjack-whine1]";
			-- 3:
				do nothing;
			-- 4:
				say "[benjack-whine2]";
			-- 5:
				say "[benjack-whine3]";
			-- 6:
				say "[benjack-whine4]";
			-- otherwise:
				if the player carries something benjack-Katallakh-devourable (called the item):
					let L be a random benjack-henchling;
					say "[quotation mark]If you are going to be such a stick in the mud, ";
					if L is:
					-- benjack-monkey:
						say "Young Master Sweetpaws";
					-- benjack-elephant:
						say "Mister Snortles";
					-- benjack-lamb:
						say "Misses Winkelbottom";
					-- benjack-clown:
						say "Malice";
					say ", will you please help yourself to one of Naomi[apostrophe]s trinkets and drop in the Maw of Unthinkable Nothingness? Maybe that will make her want to play with us and say the magical word [apostrophe]bottoms-up[apostrophe] so we can all play tea party.[quotation mark][paragraph break]The [L] comes to suddenly to life, walks stiffly towards you and plucks [an item] out the air and tosses it into a whirling vortex of fire and ash that has opened above the tea table. The vortex folds in on itself and disappears the moment [the item] enters it.[paragraph break]It all happens so fast that you are left speechless.";
					now item is in benjack-slithering-vomit-bladder-of-Katallakh;
					now item is unseen;
				otherwise: [no stealable items]
					say "[quotation mark]Well poop,[quotation mark] exclaims the sullen little girl. [quotation mark][bold type]Mister Snortles[roman type] and [bold type]Miss Winkelbottom[roman type] both agree that it[apostrophe]s time to move things along, and I don[apostrophe]t like to do this, but....[quotation mark] Carol traces some shapes in the air, and for a moment they hang there, on fire. She then points at your mouth and commands [quotation mark]Say the words![quotation mark][paragraph break]Shit just got real. You feel an irrepressible compulsion growing like a [quotation mark]hold my hair now, I[apostrophe]m going to hurl[quotation mark] moment, and are surprised to hear yourself blurt out [quotation mark]bottoms-up![quotation mark][paragraph break]";
					try benjack-bottomsupping.
					
To say benjack-whine1:
	say "Carol glances around the table at her stuffed [bold type]animals[roman type]. [quotation mark]I don[apostrophe]t know about any of you, but I sure am getting thirsty. Yes sir, some nice hot [bold type]tea[roman type] would really hit the spot, don[apostrophe]t you think so, [bold type]Sweetpaws[roman type]? You do? Me too. I wish Naomi would say the magic words and let us get going. What[apostrophe]s that [bold type]Mister Snortles[roman type]? Maybe she forgot what to say? I[apostrophe]m sure she remembers that she is supposed to say [apostrophe][bold type]bottoms-up[roman type][apostrophe] so we can start.[quotation mark][paragraph break]".
	
To say benjack-whine2:
	say "Carol sighs, [quotation mark]I[apostrophe]m getting bored -- haven[apostrophe]t you done enough talking and poking around the room? Let[apostrophe]s start the [bold type]tea party[roman type] -- you just have to say [apostrophe]bottoms-up[apostrophe][quotation mark].[paragraph break][quotation mark]Carol, why are you so obsessed with tea. Are you sure you[apostrophe]re not British?[quotation mark][paragraph break][quotation mark]No, I don[apostrophe]t think so.[quotation mark][paragraph break]".
	
To say benjack-whine3:
	say "[quotation mark]Yes, Misses Winkelbottom,[quotation mark] nods Carol, [quotation mark]I am sure Naomi knows that she just has to say [apostrophe]bottoms-up[apostrophe] to get the tea party started, but she[apostrophe]s playing her own game now I think, and it[apostrophe]s not fun![quotation mark][paragraph break]".
	
To say benjack-whine4:
	say "[quotation mark]Uh oh, Naomi,[quotation mark] say Carol with what you can tell is feigned concern, [quotation mark][bold type]Malice the Clown[roman type] says he[apostrophe]s getting upset that you are holding up the [bold type]tea party[roman type], and he wants to know why you haven[apostrophe]t said the magic words [apostrophe]bottoms-up[apostrophe]. He says he wonders if you really want to spend all of eternity in here, and I told him that no, probably you don[apostrophe]t, but he said maybe she does, and I said, well I guess we[apostrophe]ll find out, right?[quotation mark][paragraph break]".
	
Instead of throwing mtw-teapot at something when benjack-N1 is happening:
	try dropping the mtw-teapot.
	
Understand "throw [something]" as dropping when the location is M2F3.
	
Instead of attacking mtw-teapot when benjack-N1 is happening:
	try dropping the mtw-teapot.
	
After dropping mtw-teapot:
	say "Fortunately, the valuable antique lands without incident."
	
Instead of dropping mtw-teapot when benjack-N1 is happening:
	now mtw-teapot is nowhere;
	now benjack-bigmirror is nowhere;
	say "The delicate antique smashes into a million pieces that melt like snowflakes and disappear.[paragraph break]Carol stares, immobile, in horror.[paragraph break][quotation mark][quotation mark]What did you do?[quotation mark] She whispers, more to herself than you. [quotation mark][bold type]Grand-uncle[roman type] will be… he’ll be angry.[quotation mark][paragraph break]Tears well in Carol’s eyes. [quotation mark]He will be so, so angry. Even when he’s not angry, he’s so… cruel.[quotation mark] She wipes her running nose with the back of her sleeve and through choked sobs asks, [quotation mark]Why? Why did you do that?[quotation mark][paragraph break]Carol throws her arms outward, palms towards you and you experience the memorable phenomenon of being propelled through a phantasmal wall.";
	now benjack-Carol is teapot-angry;
	try going south.

Instead of examining the mtw-teapot when benjack-N1 is happening:
	if benjack-times_bestowed of yourself is:
		-- 1:
			say "It looks like there are about two more rounds of tea in the fine china pot.";
		-- 2:
			say "One more serving remains in the teapot.";
		-- 3:
			say "The teapot is empty."
			
Instead of inserting anything into the mtw-teapot when the location is M2F3:
	say "Gross. The teapot is only for tea."
	
Chapter 5 - N1 
[test starts in DAN8 after R0]

test n1-benjack with "n / get all / n / drop teapot / n / n / n / n / n / n / get teapot / n / s / s / s / s / s / s / s / s / s / s / s / s / x scrapbook / read scrapbook / read shark / read actress / read body / read shark / look / get all / bottoms-up / read scrapbook / read watery / x comforter / x bed / x stuffed / x elephant / x monkey / x lamb / x clown / x cap / x sweater / x clown / x lamb / x kitchen / x apron / x pots / x pantry /  x window / open window / look out window / x desk / x drawer / open drawer / touch desk / touch carol. / x desktop / x desktop / turn off lamp / get lamp / x turntable / x record / x table / x frame / x beasts / x portrait / x nameplate / touch chair / x toy chair / x cup / hit tea cup / throw tea cup / x dress / x bow / ask Winkelbottom about etiquette / ask about Carol / ask about Carol / ask about Stonington / ask about Connecticut / ask about Deep Ones / ask about father / ask about father / a New London / a groton / a General Dynamics / a submarine / a submarine / a job / a nautilus / a date / a mother /  a mother / a  communists / a teapot / a teapot / a grand-uncle / a grand-uncle / a tea party / a tea  / a  bottoms-up / a  bottoms-up / a christabell / a christabell / a christabell / a christabell / a cragne / a cragne / a snortles / a winkelbottom / a sweetpaws / a clown / a eisenhower / a ike / a malice / a malice /a mark / a mark / a death / a death / a witchhunt / a vermont / a vermont / a communists / a immigrants / a poor / a servants / a america / a school / a me / a mattanit / tell about death / t mark / t christabell / t me / t me / t cragne / t cragne / t peter / t peter / t stonington / t groton / t vermont / t america / t america  / x mirror / x wall / x floor / x carpet / get cup / put cup on carpet / get cup / drop cup / look in mirror / ask about mirror / break mirror / throw frog at mirror / get frog / throw frog at carol / attack carol / look under rug/ search rug / enter mirror / open mirror / a scrapbook / a scrapbook / bottoms up /read scrapbook / read sable / n / s ".

Chapter 6 - N1 Ends

When benjack-N1 ends:
	benjack-stage-off 1;
	benjack-conversation-restore-defaults;
	now benjack-baby-door is in M2F3.
	
Chapter 7 - After N1

The description of the benjack-baby-door is "A sign on the door says [benjack-baby-door-desc]".

To say benjack-baby-door-desc:
	say "[quotation mark]Carol's Room[quotation mark] and below that, [quotation mark][if benjack-R1 has happened]Moody Teenager[otherwise]Napping Kindergartner[end if] -- DO NOT WAKE![quotation mark] and finally, at the bottom in smaller letters, [quotation mark]Come back later when awake. Signed, Victor Cragne[quotation mark][paragraph break]".

benjack-baby-door is a thing. The printed name of benjack-baby-door is "door to Carol's room". Understand "sign/door/room/kindergartner/napping/moody/teenager" as benjack-baby-door when the location is in the benjack-realm. 

After going north from M2F2 when the benjack-baby-door is in M2F3:
	say "Just down a side corridor, you encounter a closed door that says [benjack-baby-door-desc]"
	
Instead of going north when the player is in M2F3 and the benjack-baby-door is in M2F3:
	try attacking the benjack-baby-door.
			
Before doing something other than examining to the benjack-baby-door:
	say "There is nothing at all arbitrary about the justice meted out for waking a [if benjack-R1 has happened]sullen teenager[otherwise]cranky kindergartner[end if] in Crange Mansion.[paragraph break]";
	now the printed name of M2F3 is "Dungeon";
	now the description of M2F3 is "You find yourself in a dungeon, strapped by to a toffee table by candy cane manacles and slathered with delicious honey. A stalactite drips dark chocolate over your belly, luscious rivulets pooling in the small of your back.[paragraph break]The ants pour in, their mandibles clacking.[no line break]";
	repeat with item running through things in the location:
		if the item is not the player:
			now item is nowhere;
	try silently looking;
	end the story saying "EATEN".



Part 6 - Scene R1 Naomi is Marked and Learns Some Spells

Chapter 1 - R1 Begins

When benjack-R1 begins:
	say benjack-hint-prompt;
	now Benjack-scene-specific-hint is "Bapr ntnva, lbh pna gnyx jvgu Puevfgnoryy nobhg n ahzore bs gbcvpf, ohg gur xrl bar vf nfxvat ure nobhg gur [quotation mark]orfgbjnapr[quotation mark], n zrnaf bs genafsreevat zntvpny raretl sebz bar crefba gb nabgure. Guvf jvyy eryrnfr lbh sebz orvat nggenpgrq gb gur cvyr bs envyebnq genpxf naq jvyy nyybj Puevfgnoryy gb fgbc snqvat va naq bhg[one of][or]. Gb pnfg gur orfgbjnapr fcryy, glcr [quotation mark]kvmmv[quotation mark]. Nyfb abgr gung lbh pna ninvy lbhefrys bs gur [quotation mark]cybhtuire[quotation mark] naq [quotation mark]xjvfngm unqrenpu[quotation mark] fcryyf[stopping]";
	if benjack-Christabell is not candid, now benjack-Christabell is bypassed;
	benjack-conversation-customize;
	now benjack-baby-door is nowhere.
	
[hint text: Once again, you can talk with Christabell about a number of topics, but the key one is asking her about the [quotation mark]bestowance[quotation mark], a means of transferring magical energy from one person to another. This will release you from being attracted to the pile of railroad tracks and will allow Christabell to stop fading in and out[one of][or]. To cast the bestowance spell, type [quotation mark]xizzi[quotation mark]. Also note that you can avail yourself of the [quotation mark]ploughver[quotation mark] and [quotation mark]kwisatz haderach[quotation mark] spells[stopping]]

Chapter 2 - R1 Conversation

Instead of conversing or hailing when benjack-R1 is happening for the first time:
	if benjack-Christabell is candid:
		say "Christabell squints as she looks at you, shading her eyes with her hand.[paragraph break][quotation mark][bold type]Runes[roman type] of the [bold type]Deep Ones[roman type] preserve us, Naomi. By";
	otherwise:
		say "So, back are you? Let us do hope you be moor of a polayte and conversing Sorte this Tymee, [bold type]Naomi[roman type]. Oh, yes, your Name be written clear as Daye in your Eyes, and I do see that this Daye has shewn you moor of [bold type]sprit[roman type] Kinde, so I shall not be dansing about so with mie Werdes as to pull so tayt your [bold type]Knotte of Reason[roman type].[paragraph break]Now then, by";	
		now benjack-Christabell is candid;
	say " what Artefise are you so surfeited of [bold type]Potence[roman type], that [bold type]Louminance[roman type] does burne mightily about you? Had I Haires upon my Bodie, they would upon their very Ends stand aright, you do so exude [bold type]Glamour[roman type]. By what Manner did that come to pass, I do wonder?”.

Section 1 - R1 Subjects

benjack-fading is a subject. Understand "fading/fade/disappear/disappearance/weakness/weakening/dissipation/dissapating/flicker/flickers/flickering/visibility" as benjack-fading when the location is DAN8. 

benjack-Runes is a subject.  Understand "rune/runes" as benjack-Runes when the location is in the benjack-realm. The printed name of benjack-Runes is "runes".

benjack-Potence is a subject.  Understand "Potence/Power/powers" as benjack-Potence when the location is DAN8. The printed name of benjack-Potence is "potence".

benjack-Luminance is a subject.  Understand "luminance/louminance" as benjack-Luminance when the location is DAN8. The printed name of benjack-Luminance is "luminance".

benjack-Glamor is a subject.  Understand "glamor/glamour/glamors/glamours" as benjack-Glamor when the location is DAN8. The printed name of benjack-Glamor  is "glamor".

There is a subject called benjack-Marked.  Understand "marked" as benjack-Marked when the location is in the benjack-realm and benjack-R1 is happening. The printed name of benjack-Marked is "marked".

benjack-Fusion is a subject.  Understand "fusion/fusions" as benjack-fusion when the location is DAN8. The printed name of benjack-Fusion  is "fusion".

benjack-Remedy is a subject.  Understand "remedie/remedy/remedies" as benjack-Remedy when the location is DAN8. The printed name of benjack-Remedy is "remedy".

benjack-Bestowance is a subject.  Understand "bestowance" as benjack-Bestowance when the location is DAN8. The printed name of benjack-Bestowance is "bestowance".

benjack-Nirramonk is a subject.  Understand "nirramonk" as benjack-Nirramonk when the location is DAN8. The printed name of benjack-Nirramonk is "Nirramonk".

benjack-Nipmuk is a subject.  Understand "nipmuk" as benjack-Nipmuk when the location is DAN8. The printed name of benjack-Nipmuk is "Nipmuk".

benjack-Kaballah is a subject.  Understand "kaballah/alchemy/numerology/secrets/fjord/illuminati/gnomes/rosacrucians/templars/knights/templar/assassins/hashhashin/bavarian/masons/masonic/temple/ufo/ufos/smof/shambala" or "servants of chthulu" or "gnomes of zurich" or "area 51" or "warehouse 23"  as benjack-Kaballah when the location is DAN8. The printed name of benjack-Kaballah is "Kaballah".

benjack-InvisibleWorld is a subject.  Understand "invisible/world" as benjack-InvisibleWorld when the location is DAN8. The printed name of benjack-InvisibleWorld is "Invisible World".

benjack-Restful is a subject.  Understand "restful" as benjack-Restful when the location is DAN8. The printed name of benjack-Restful is "Restful Spirits".

benjack-Avenged is a subject.  Understand "avenged" as benjack-Avenged when the location is DAN8. The printed name of benjack-Avenged is "Avenged Spirits".

benjack-Creature is a subject.  Understand "creature/being/monster/abomination/werewolf/vampire/creatures/beings/monsters/abominations/werewolfs/werewolves/vampires/shapeshifter/shapeshifters/wraith/wraiths/dragon/dragons/djinn/djinns/rugaru/rugarus/ghoul/ghouls/skeleton/skeletons/chupacabra/chupacabras/zombie/zombies/changling/changlins/banshee/banshees/wendigo/wendigos" as benjack-Creature when the location is DAN8. The printed name of benjack-Creature is "creature".

benjack-Longhouse is a subject.  Understand "longhouse/lodge" or "long house" as benjack-Longhouse when the location is DAN8. The printed name of benjack-Longhouse is "longhouse".

benjack-modernAge is a subject.  Understand "modern/age/future" as benjack-modernAge when the location is in the benjack-realm. The printed name of benjack-modernAge is "modern age".

benjack-Demise is a subject.  Understand "demise" as benjack-demise when the location is DAN8. The printed name of benjack-Demise is "demise".

Understand "death/deathe" as benjack-demise when benjack-R0 has happened and the location is DAN8. 

benjack-Obsession is a subject.  Understand "obsession/compulsion/obsessions/compulsions" as benjack-Obsession when the location is DAN8. The printed name of benjack-Obsession is "Carol's father's obsession".

benjack-Mill is a subject.  Understand "timber/lumber/wood/mill/spur" as benjack-Mill when the location is DAN8. The printed name of benjack-Mill is "mill".

benjack-Edgar is a subject.  Understand "Edgar" as benjack-Edgar when the location is DAN8. The printed name of benjack-Edgar is "Edgar".

benjack-Victor is a subject.  Understand "Victor" as benjack-Victor when the location is DAN8. The printed name of benjack-Victor is "Victor".

benjack-Hugo is a subject.  Understand "Hugo" as benjack-Hugo when the location is DAN8. The printed name of benjack-Hugo is "Hugo".

Understand "father/dad" as benjack-Hugo when benjack-R2 is happening and the location is in the benjack-realm.

benjack-CircularPrison is a subject.  Understand "circular/prison/circular prison" as benjack-CircularPrison when the location is DAN8. The printed name of benjack-CircularPrison is "circular prison".

benjack-ChFather is a subject.  Understand "father/dad/daddy" as benjack-ChFather when the location is DAN8 and benjack-R2 has not happened. The printed name of benjack-ChFather is "Christabell's father".

benjack-ChMother is a subject.  Understand "mother/mom/mommy/mum" as benjack-ChMother when the location is DAN8. The printed name of ChMother is "Christabelle's mother".

benjack-Breeves is a subject.  Understand "preacher/ewen/breeves/pastor/priest" as benjack-Breeves when the location is DAN8. The printed name of benjack-Breeves is "Ewen Breeves".

benjack-Leif is a subject.  Understand "doctor/prichard/leif/professor" as benjack-Leif when the location is DAN8. The printed name of benjack-Leif  is "Prichard Leif".

benjack-Jealousy is a subject.  Understand "jealousy/adultery/adulter" as benjack-Jealousy when the location is DAN8. The printed name of benjack-Jealousy is "jealousy".

benjack-Skirmish is a subject.  Understand "skirmish/skourmuch/skirmishes" as benjack-skirmish when the location is DAN8. The printed name of benjack-Skirmish is "skirmish".

benjack-Sachim is a subject.  Understand "sachim/chief/chieftess/chiefs/sachims/chieftesses" as benjack-Sachim when the location is DAN8. The printed name of benjack-Sachim  is "sachim".

benjack-ChristabellTeaParty is a subject.  Understand "tea/party" as benjack-ChristabellTeaParty when the location is DAN8. The printed name of benjack-ChristabellTeaParty is "tea party".

benjack-ChristabellToys is a subject.  Understand "toy/toys/stuffed/animals/monkey/lamb/clown/elephant/mister/snortles/misses/winkelbottom/malice/master/sweetpaws/chimpanzee/animal/doll/dolls/puppet/puppets/sock/sockpuppet" or "[benjack-snortlesToken]" or "[benjack-MaliceToken]" or "[benjack-SweetpawsToken]" or "[benjack-WinkelbottomToken]" as benjack-ChristabellToys when the location is DAN8. The printed name of benjack-ChristabellToys is "Carol's toys".

benjack-Unfolding is a subject.  Understand "unfolding" as benjack-Unfolding when the location is DAN8. The printed name of benjack-Unfolding is "unfolding".

benjack-GrandUncle is a subject.  Understand "grand-uncle/grand/uncle" as benjack-GrandUncle when the location is in the benjack-realm. The printed name of benjack-GrandUncle is "grand-uncle".

benjack-Mansion is a subject.  Understand "mansion/manse/estate/edifice/house/building" or "cragne mansion" or "cragne manse" or "cragne estate"  as benjack-Mansion when the location is DAN8. The printed name of benjack-Mansion is "Cragne mansion".

benjack-Mirror is a subject.  Understand "mirror" as benjack-Mirror when the location is DAN8. The printed name of benjack-Mirror is "mirror".

benjack-Seeming is a subject.  Understand "Seeming" as benjack-Seeming when the location is DAN8. The printed name of benjack-Seeming is "seeming".

benjack-XizziSpell is a subject.  Understand "xizzi" as benjack-XizziSpell when the location is DAN8. The printed name of benjack-XizziSpell is "xixxi spell". 

benjack-PloughverSpell is a subject.  Understand "ploughver" as benjack-PloughverSpell  when the location is DAN8. The printed name of benjack-PloughverSpell is "ploughver spell".

benjack-KHSpell is a subject.  Understand "kwisatz/haderach" as benjack-KHSpell when the location is DAN8. The printed name of benjack-KHSpell is "kwisatz haderach spell".

benjack-babySubject is a subject.  Understand "baby/babies/pregnancy/pregnancies/spawn/daughter/offspring/pregnant/preggers" as benjack-babySubject when the location is in the benjack-realm. The printed name of benjack-babySubject is "pregnancy".

Section 2 - R1 Quips

After informing benjack-Christabell about benjack-fading when benjack-R1 is happening:
	say "[one of][quotation mark]Christabell, I think your [bold type]fading[roman type] is getting worse -- every time I pass by you seem a little less radiant, a bit more transparent.[quotation mark][paragraph break]Christabell makes an effort and becomes more solid for a moment. [quotation mark]Truly, there be no mistaking that, after summe many Centuries, it is the Waye of [bold type]Spirits[roman type] to gently fade from Perception. As [bold type]Potence[roman type] wayneth, so our [bold type]Louminance[roman type]  does diminish [apostrophe]til even those with the [bold type]Seight do not aperceeve. To compound the Matter, with each Generation, the [bold type]Seight[roman type] does itself dilute, it being in the Blood.[quotation mark][or]You tell Christabell that she seems to be fading from sight, growing more and more transparent and dim. At this rate, you don[apostrophe]t know how much longer you[apostrophe]ll be able to see her.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-fading when benjack-R1 is happening:
	say "[one of][quotation mark]Christabell, I can[apostrophe]t help but noticing that you are sort of flickering.[quotation mark][paragraph break]She raises an eyebrow, [quotation mark]Flickering? By that you do mean spittle wingeth from my Mouthe when I do speake?[quotation mark][paragraph break][quotation mark]No, I mean that you seem to be solid and bright some times, but other times you sort of [bold type]fade[roman type] out.[quotation mark][paragraph break][quotation mark]Oh, that. Verily, [apostrophe]tis not your Eyes, but my Condition. Indeed, I being so very long upon this Earthe in mie State, my [bold type]Potence[roman type] is diminished summe what, and with it mie [bold type]Louminance[roman type]  to your [bold type]Seight[roman type]. Onely do I appear nowe before you through diligent Efforte of Minde and great Expenditure of my Substance.[quotation mark][paragraph break][quotation mark]So, you mean that you will keep getting dimmer?[quotation mark] you ask with concern.[paragraph break][quotation mark]Aye, absent replenishing [bold type]Bestowance[roman type], the Light that poureth forthe from your Eyes will more me transperce, revealing the Worlde beyond by Back [apostrophe]til I am no more that a shadoe of a shadoe and my Voice not even a Whisper.[quotation mark][quotation mark][paragraph break]That[apostrophe]s awful![quotation mark][or][quotation mark]When you fade, what[apostrophe]s that like?[quotation mark] you ask.[paragraph break][quotation mark]I had not given that one bit of Thinking,[quotation mark] replies Christabell. [quotation mark]All the world seemeth unchanged, no less bright -- the Fading is merely how I am seen, not how I do see. But this be mie greatest Fear: that one Daye I shall see right well, but no Soule will ever see nor speake again to me, forever exiled, shorn of my Substance.[quotation mark][paragraph break][quotation mark]That does sound dismal,[quotation mark] you agree. [quotation mark]Is there any way to avoid [bold type]fading[roman type]?[quotation mark][paragraph break][quotation mark]Yes, glad I do be that you did come to this talk of [bold type]remedie[roman type], for it may serve us both in summe divers Wayes.[quotation mark][or]Christabell explains that with time, she is fading more and more and if something isn[apostrophe]t done, she will soon disappear entirely and forever. However, she does suggest that there might be a remedy.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Runes:
	say "[one of]Pleased that you are taking an interest, Christabell launches into an explanation.[paragraph break][quotation mark]Whomesoever do werke a Magick, hee leaveth in Posterity Signes that summe might read thereafter; these be their [bold type]Runes[roman type].[quotation mark][paragraph break][quotation mark]Sort of a record, then?[quotation mark] you inquire.[paragraph break][quotation mark]Not onely, for in wroughting any Magick, a natural Direction must be followed as Ice doth melt and flow downward as a Mountain Stream and not upwards to the Peake, so [bold type]Potence[roman type] must channel fruitfully. As a Log burnt doth comforting Heat provide, so [bold type]Runes[roman type] be the Ashes. Get you mie Drifte?[quotation mark][paragraph break][quotation mark]So, it[apostrophe]s sort of a nebulous mystical wake left behind by magic?[quotation mark][paragraph break][quotation mark]Nay, come you rightly downe to the Firmness of Earth -- it be not but like a Booke, it be a true Folio, though not seen but for Seight -- Leaves and Werdes in Leather bound: the Story of good Werkes upon one Shyt, sorrowfull sinnes the next.[quotation mark][or]Christabell explains that they are sort of a permanent sign of the price paid in the world to perform magic.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-DeepOnes when benjack-R1 is happening:
	say "[one of][quotation mark]I[apostrophe]m not really sure how to approach this delicately,[quotation mark] you begin, [quotation mark]but what exactly are the [bold type]Deep Ones[roman type]?[quotation mark] You refrain from air quotes, as it would just confuse her.[paragraph break][quotation mark]Your Apprehension I do gently understande, for many Miscreantes do beare false Witness against them and thow powerful they are, know you this: they do serve as me and my [bold type]longhouse[roman type], the mighty Weal of [bold type]Mattanit[roman type].[quotation mark][paragraph break][quotation mark]Yes, but what are they -- I mean, could you draw me a mental picture of them?[quotation mark][paragraph break][quotation mark]No Representation of them can I render, for their Forme supporteth not the weake Minde of Man, but summe few jotts of Wisedom I did learne among the [bold type]Nirramonk[roman type], and these they are: firstly, they are Olde, older than the Earthe itself (this, thow we did know from the naym itself, but see you now how they did come by it); secondly, it is in the Seven Oceans and multitudinous Seas that they do dwell; and finally, and paramounte, the [bold type]marked[roman type] of [bold type]Mattanit[roman type] can call upon them to scribe their [bold type]Runes[roman type] in his Service.[quotation mark][paragraph break]Christabell adds, [quotation mark]They be not the onely of their Kinde, but the onely I did come to know in mei too brief Tymme among the Nirramonk.[quotation mark][or]According to Christabell, the Deep Ones are some sort of ancient beings that serve Mattanit.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Potence:
	say "[one of][quotation mark][bold type]Potence[roman type] be a Strength that lends to Magick; you do burn with it.[quotation mark] Christabell adds somberly, [quotation mark]It be also what I do most direly desire that I might cast aside my [bold type]Fusion[roman type].[quotation mark][paragraph break]Christabell pokes your aura tentatively with her index finger; the aura deforms around it, bending inward. [quotation mark]Naomi, by what Providence came you to wield such [bold type]Potence[roman type]? I can but thinke of one Sourse: my [bold type]Carol[roman type].  Could she by summe mirickell dwell yet in this [bold type]modern[roman type] Ayge of yours?[quotation mark][paragraph break][quotation mark]When I was at [bold type]Cragne[roman type] Manor, I met her. She[apostrophe]s a spirit -- as I suppose you already know.[quotation mark] Christabell nods and you continue, [quotation mark]She is a very strange kid and it seems stuck in the 1950s.[quotation mark][paragraph break][quotation mark]Yes, such be the Nature of her [bold type]Fusion[roman type], a circular [bold type]prison[roman type]. A good Childe she was, thow gone wrong in later Life, twisted by the Crânes.[quotation mark][or]Seems pretty straightforward: according to Christabell potence is the some sort of magical energy. She mentioned that something called the [quotation mark]bestowance[quotation mark] would fix the situation.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Luminance:
	say "[one of][quotation mark]Naomi, surely you must needs have yourself remarked your terrifick Shyne in the Eyes of the Seight? Thereby doth the [bold type]Potence[roman type] with make manifest. Yet, I must needs forewarn: a [bold type]Potence[roman type] too closely held, or too long, does risk injurious Consequence.[quotation mark][paragraph break][quotation mark]Oh[quotation mark]?[paragraph break][quotation mark]Yes, it is thereby that I do pray you consider the [bold type]Bestowance[roman type].[quotation mark][or]Christabell says [bold type]creatures[roman type] with a lot of potence have an visible aura for those with spectral sight. Further, that having as much potence as you do right now is not healty for a mortal.[no line break][stopping][paragraph break]"
	
After quizzing benjack-Christabell about benjack-Glamor:
	say "[one of][quotation mark]A [bold type]Glamour[roman type] be not moor than the outwarde Signe to the Seighted of Werked Magick. In the Case of you, it be raw and avid, the very Stuff taken of Life.[quotation mark][or]Based on Christabell[apostrophe]s explanation, a glamour is a kind of aura around magical things. Only those with spectral sight can see it.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Marked:
	say "[one of][quotation mark]By that I do mean a person who doth bear the Spirit Mark, whereby the Annointed may conduct the Affaires of the allied Spirit, whom from to obtain Protections and Wardes against malign [bold type]Spirits[roman type]. Further, onely one Mark may a Person endure, thow many a Spirit may touch.[quotation mark][or]According to Christabell, someone who is [bold type]marked[roman type] has been chosen by a spirit and can more or less channel magical energies supplied by that spirit to work magic.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Fusion:
	say "[one of][quotation mark]The [bold type]Fusion[roman type] bindeth a Spirit to a Place, just as my unhappy [bold type]Demise[roman type] did bind me in Perpetuity to this Ironne,[quotation mark] Christabell says, gesturing to the railroad track. [quotation mark]Onely threw a princely summe of [bold type]Potence[roman type] keenly wielded can the [bold type]Fusion[roman type] be broken and a Spirit set a-free.[quotation mark][or]Christabell uses the term [quotation mark]fusion[quotation mark] to mean that which binds a spirit to the physical world.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Remedy:
	say "[one of][quotation mark]I do see clearly a simple answer to remitte your Libertie of Mouvement: the [bold type]Bestowance[roman type].[quotation mark][or]Christabell recommends that you perform a magical ritual called [quotation mark]the bestowance[quotation mark] in order to rid yourself of magical energy, which over time can be harmful to mortals.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Bestowance:
	say "[one of]Christabelle replies, [quotation mark]The [bold type]Bestowance[roman type] is the Magick whereby [bold type]Potence[roman type] be conveid from one to another. If you would deign permitte, I could shew by what meenes this Magick could be wrought.[quotation mark][paragraph break][quotation mark]You mean I could cast a spell to charge you up?[quotation mark], you ask. [quotation mark]How?[quotation mark][paragraph break][quotation mark]In so many Werdes. Yes, my Marke being upon you, you could werke it. Upon a Tymme, it were the first Magick I did teach [bold type]Carol[roman type], when she saw but five Yeares. But you a Woman full grow[apostrophe]d need no trappings of Ceremonie to conduct it, but only the Comprehension of what you do, and a Werde bespoken to set the Magick in Motion.[quotation mark][paragraph break][quotation mark]What[apostrophe]s the word?[quotation mark][paragraph break][quotation mark]It be [apostrophe][bold type]xizzi[roman type][apostrophe],[quotation mark] replies Christabelle. [quotation mark]If you do but say it, all will be put to Righte. Here, let me place my Mark that you may werke summe Magicks.[quotation mark][paragraph break][quotation mark]Hang on a…[quotation mark] Christabell pokes your shoulder before you can finish the sentence.[paragraph break][quotation mark][apostrophe]Tis done, and naught did it hurt, yes?[quotation mark][paragraph break][quotation mark]I suppose,[quotation mark] you say, rubbing your shoulder, which does tingle a little[or]Your understanding of this might not be perfect, but you believe that it[apostrophe]s a magical spell of some sort that transfers magical energy, or potence, from one being to another. To cast the bestowance, you just need to say the word [apostrophe][bold type]xizzi[roman type][apostrophe][stopping].";
	now yourself is benjack-spell_enabled.

After quizzing benjack-Christabell about benjack-Nirramonk:
	say "[one of][benjack-Nirramonk1][benjack-Nirramonk2][or]Christabell and her [bold type]mother[roman type] took up with a local tribe, the [bold type]Nirramonk[roman type], when they left Christabell[apostrophe]s [bold type]father[roman type]. They learned the Nirramonk language and their culture, including their religion, which she says is one step beyond Christianity[stopping]."
	
To say benjack-Nirramonk1:
	say "[quotation mark]When first we did arrive to [bold type]Lyn[roman type], my Parents did ardently applie their Labours to make Home, and I with them. Thow soon we did but little see of mei [bold type]Father[roman type] so powerfull was his Devotion to the [bold type]Forge[roman type]. He did desire above all to see its Heat increased beyond even yet again what those [bold type]Forges[roman type] in Engeland did achieve. This, in the speite of meagre Tools and shoddy Coal which to him availed.[quotation mark][paragraph break][quotation mark]The Nirramonk?[quotation mark] you remind her.[paragraph break][quotation mark]Verily, the Subject has not fled by Minde, thow I admit my Tongue doth journey to it by a Road not straite.[quotation mark] Christabell continues, [quotation mark]So, the Nirramonk, then: My [bold type]Father[roman type] did toil at the [bold type]Forge[roman type] Daye and Neight bothe, so, my pious [bold type]Mother[roman type] bereft of his Attentions did seek to perform goode Werkes for our Congregation, yet [bold type]Preacher[roman type] Breeves, being thick of Skull and disdainful of Womenkind did spurn her kinde Offer. She being considerable pridefull did quit that Congregation upon that very Daye and finde herselfe (and mee) another at the Inconvenience of summe Distance from [bold type]Lyn[roman type]. The [bold type]Doctor[roman type] Prichard Leif did establysh this Congregation, which greatly amazing did welcome not onely us, but also many [bold type]Indians[roman type] of those Parts; not onely those Praying [bold type]Indians[roman type] taught our Holy Bible, but [bold type]Doctor[roman type] Leif did wee learne each the Wisedom the other did have.[quotation mark][paragraph break][quotation mark]So, the Nirramonk?[quotation mark] you remind her once again, trying to keep her on track.[paragraph break][quotation mark]Hold tight to your Reines,[quotation mark] chides Christabell. [quotation mark]For five hundred Years have I thought on this -- I pray you abide your Patiyence yet another moment, that I may complete this Journie, upon which you have set us.[quotation mark][paragraph break]Having your full attention, Christabell continues, [quotation mark]So then, coming at last to the Nirramonk.[quotation mark][paragraph break]";
	
To say benjack-Nirramonk2:
	say "[quotation mark]Phew.[quotation mark][paragraph break][quotation mark]I do your Pardon begge?[quotation mark][paragraph break][quotation mark]Nothing.[quotation mark][paragraph break]Christabell folds her hands and resumes her discourse, [quotation mark]One day did come to us a Council of the Nirramonk. Thow versed in the Tongue of the [bold type]Nipmuk[roman type], scarce could we comprehend their Tongue. By the Grace of Providence, One among theyr Number summe Fackulitie with Engelish possessed, he and his Kin having many years before helped the Engelish Colonie of Roanoke to their Prosperity.[quotation mark][paragraph break][quotation mark]Knowing me quick witted, [bold type]Doctor[roman type] Leif did me task to apprend of their Tongue and they Ours by setting to Paper a Grammar. No simple Affaire this was, and threw a Winter and Summer compleat, we did labour, the legion Differences so diffickulte to reconcile. Not onely Grammar did I employe to this Tasking, but made use of Maths and Shapes, some of Artes Newlie devised, some drawn from [bold type]Kaballah[roman type]. In Grammar I did find Keys to the [bold type]Invisible World[roman type] -- take you for instance their Nowns, being infleckted not for Male and Female, but Animate and Inanimate; and amongst the animate they choose their Werde Endings differently for [bold type]Spirits[roman type], the [bold type]Restful[roman type], and the [bold type]Avenged[roman type].[quotation mark][paragraph break][quotation mark]Five years I did spend amoung them and did Comprehend their Tongue flowingly. As much as I did deliver unto them the Good News of Christ Jesus, I did discover [bold type]Mattanit[roman type] and did learne to perform his Werkes through Means more immediate and vigorous than those beknownst to the Church of Engeland.[quotation mark][paragraph break]Her eyes heavy, Christabell concludes, [quotation mark]It were a true Calamity that all did end so dreadful in the [bold type]Skourmuch[roman type].[quotation mark][paragraph break][quotation mark]My head is -- literally -- going to explode,[quotation mark] says Naomi compressing her temples".
	
After quizzing benjack-Christabell about benjack-Nipmuk:
	say "[quotation mark]They were a [bold type]Indian[roman type] Tribe nearby [bold type]Lyn[roman type], friendly and allied with their Neighbours. We did trade with them oftentimes.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Kaballah:
	say "[quotation mark][bold type]Doctor[roman type] Leif did bring many arcane and wonderfull Bookes with him to the New Worlde, amongst them Tomes on Alchemy, Numerology, and Secrets of the Orient.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-InvisibleWorld:
	say "[quotation mark]By that I do mean the incorporeal world of [bold type]Spirits[roman type] and other such Beings perceived onely by the Seight.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Restful:
	say "[quotation mark]This be the final Respite of most, those not being aggrieved and who do achieve eternall Slumber.[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Avenged:
	say "[quotation mark]Answering the injury that rendered them [bold type]Spirits[roman type], one may at last join the [bold type]Restful[roman type].[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Creature:
	say "[quotation mark]I onely am experimented of [bold type]Spirits[roman type], thow the [bold type]Nirramonk[roman type] know many Creatures far weirder that do dwelle in divers corners of the [bold type]Invisible World[roman type].[quotation mark][paragraph break]".

After quizzing benjack-Christabell about benjack-Longhouse:
	say "[one of][quotation mark]The [bold type]Nirramonk[roman type] did dwell in the [bold type]longhouse[roman type] and I amongst them for a Tymme. In it we did sleep and take our Meals. Those of us learned did study and practice the Werkes of [bold type]Mattanit[roman type]. Alas, the [bold type]longhouse[roman type] and all its Treasures was razed in the [bold type]Skourmuch[roman type][quotation mark][or]When Christabell and her mother lived with the Nirramonk tribe, they all lived together in a communal longhouse[stopping]."
	
After quizzing benjack-Christabell about benjack-modernAge:
	say "[one of][quotation mark]I know not the Date to-day, for I have long quit the recording of Daye and Neight[apostrophe]s passing. Were I to guess, I would needs say, perhaps summe nearly two Millennia since the Appearance of Christ Jesus upon the Earth.[quotation mark][paragraph break][quotation mark]A bit less, but close enough for government work,[quotation mark] you agree[or]Christabell is aware that it[apostrophe]s the 1990s[stopping]."
	
After informing benjack-Christabell about benjack-modernAge:
	say "[one of][quotation mark]You wouldn[apostrophe]t know it to look around here, but this is an [bold type]age[roman type] of technological marvels: PDAs, dial-up internet, and video cassettes for rent any time of day or night,[quotation mark] you brag.[paragraph break][quotation mark]I know only too well of Locomotives, and the Ironne Roads upon which they do travel, and [bold type]Carol[roman type] has told me of Automobiles and how one travels Highways many Rods across. But also do I know your Science has conceived of Contrivances so Powerful that one may lay waste Nations. This I do not think Wise.[quotation mark][paragraph break][quotation mark]Yes,[quotation mark] you admit. [quotation mark]It[apostrophe]s a bit of a trade-off.[quotation mark][or]Christabell is not very impressed by the technological miracles of the 1990s.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Demise:
	say  "[one of][quotation mark]As you might well imagine, my Death was something of a shock to me.[quotation mark][paragraph break]You nod agreement with that likely understatement.[paragraph break]Cristabell continues, [quotation mark]Many lives were lost the Neight the [bold type]Skourmuch[roman type] did take place first at the [bold type]Longhouse[roman type] but finally at the [bold type]Forge[roman type]. There did I seek last Parlay with my [bold type]Father[roman type], but so jealous was he and so under the [bold type]Obsession[roman type] of his Werke, that he did leaf me no recourse, but to plunge hee and me both into the fierie Layke of Metall at our Feete. And thereby did I end my life and birthe my [bold type]Fusion[roman type].[quotation mark][or]Christabell told you a pitiful story about how her father, driven mostly by jealousy, took both his life and hers by plunging them into a vat of molten iron.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Obsession:
	say  "[one of][quotation mark]Smythies, [bold type]Father[roman type] and Sonne for many Generations of mei Family, you could say Ironne was in our Blood,[quotation mark] explains Cristabell.[paragraph break][quotation mark]I guess in a sense that[apostrophe]s true,[quotation mark] you mutter, mostly to yourself. [quotation mark]Please, go on.[quotation mark][paragraph break]Christabell continues without interruption, [quotation mark]Driven was my [bold type]Father[roman type] to keep always the [bold type]Forge[roman type] afire, to churn out Metall the Measure of whych the Colonie could scarce make use, for [bold type]Preacher[roman type] Breeves did foresee a great Need of Musquets and other Implements to make War, so to claim the Landes around them in the Name of his God.[quotation mark][paragraph break][quotation mark]Breeves sounds like a real dick,[quotation mark] you add.[paragraph break][quotation mark]Indeed, a most vexacious Phallus he was,[quotation mark] Christabell acknowledges[or]According to Christabell, her father[apostrophe]s single-minded obsession to churn out more and more from the forge was in part stoked by the local preacher, Ewen Breeves, who wanted muskets to drive the Indians off the land[stopping]."

After quizzing benjack-Christabell about benjack-mound when benjack-R1 is happening or benjack-R2 is happening:
	say  "[one of][quotation mark]How my Spirit came to be fused to this Rayle Road Track, and it here, far from my Home in [bold type]Lyn[roman type] does a summut tortuous Storie mayke, but leave me Condense it for the telling: after the [bold type]Skourmuch[roman type], mei owne [bold type]Demise[roman type], and consequent [bold type]Fusion[roman type], Father Breeves did add Insult by having made a Great Bell, of all the Metall in the [bold type]Forge[roman type]. This Bell he had placed in the newe Church, which did succeed the Prayerhouse and there it did stay until whenupon, one Christmas Night, a Bolt of Lightning did strike the Bell smartly and its Ring was heared to Boston. Also did the Church burn to the very Grownd. Being thowt Cursed, Merchants did take Possession of the Bell, it changing hands many Tymmes, until it did end up melted and mayde to Rayle some Yeares layter and solde to one [bold type]Edgar[roman type] Crâne to serve their [bold type]Mill[roman type] hereabouts.[quotation mark][or]Christabell relates that her spirit is bound to the huge pile of railroad tracks because after she and her father died in a vat of iron, that iron was subsequently made into a church bell that more recently was recycled into these railroad tracks.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Mill:
	say  "[one of][quotation mark]The original Crânes, being Traders, did build their Home and Place of Busyness at the Banks of the River that now borders their Lande. In theyr Tymme of Fortune, they did displace themselves to the Manse, wherein their degenerate Descendants dwell to this very Daye.[quotation mark][paragraph break][quotation mark]The Building they left then became a [bold type]Mill[roman type] for Woode, and the Profit therefrom did fuel the Excesses of the Crânes. Although the River served to transport the Timbre and Produckts thereof, even a Century back, the Crânes did look with envious Eye towards the Rayle Road that ran not far away, serving the Towne of Backwater. By that means they might increase theyr Profit by delivering the Goodes to Boston and Ville-Marie.[quotation mark][paragraph break][quotation mark][bold type]Victor[roman type] Crâne did conceive this Plan, and his son [bold type]Edgar[roman type] did purchase the Rayle, although his Tymming was poor and he did suffer for it. [bold type]Caro[roman type]l did relate to me that her Father, [bold type]Hugo[roman type] Crâne, did once regard the Pyle of Rayles and try to sell it to the Navie, for greatly in need were they of such metall for a Great War, but there being too much of Charbon in the Olde Ironne, they did not deem it mete. Thus, it layeth here to this Daye.[quotation mark][or]Once, the nearby wood mill was a major source of profit for the Cragnes. Around the turn of the century, they wanted to switch from transport along the river to use of railroads, and Victor Cragne proposed building a spur on the main rail line to serve the mill. His son, Edgar, tried to carry out his plan and defaulted on a bank loan after the purchase. More recently, Carol[apostrophe]s father tried to sell the [bold type]rails[roman type] as scrap iron during World War II, but the metal was considered of inferior quality and the deal rejected by the Navy.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Edgar:
	say  "[one of][quotation mark]Poor [bold type]Edgar[roman type] did often come here, to this Hollow, to escape the [bold type]Mill[roman type], to smoke his Tobacco, and to sulk. As the Crânes do go, he was almost a decent Person, but stupid was he like a Stick blunted upon a Rock. He did purchase these very Rayles -- with Monies lent -- and to hear [bold type]Carol[roman type] tell the tale a Great Impression did fall upon the Bankes.[quotation mark][paragraph break][quotation mark]Depression?[quotation mark] you suggest.[paragraph break][quotation mark]Yes, a Great Depression did befall the Bankes, and [bold type]Edgar[roman type] did bathe thereby, said she. Having taken Deliverie of the Rayles, [bold type]Edgar[roman type] could not recompense the Bankes and he was so ruined, taking his owne Lyfe.[quotation mark][or]Edgar Cragne was Victor Cragnes son. He killed himself after defaulting on a bank loan that he used to purchase the pile of railroad track.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Victor:
	say  "[one of][quotation mark]Victor Crâne? Yes, I have heared his Tale as well from [bold type]Carol[roman type] (the Ignomy of the Crânes being a favourite Topick of ouwr Gossip). [paragraph break][quotation mark]Amongst the Crânes, [bold type]Victor[roman type] was the most successful in Busyness, and as well the one most bereft of Character. Despite Vices uncowntable, he was unusually long-of-life and made much of his Fortune building Roads of Rayle. Indeed, it was he who did first conceive Construction of a Spur from Backwater to his [bold type]Mill[roman type] hereabouts. He did err in leaving that Project and the [bold type]Mill[roman type] itself, the onely among his Busynesses a failure, to his doltsih Sonne, [bold type]Edgar[roman type], who did prove unsuited to the Task. Victor did little care though, being past the Ayge of one-hundred, and lodging [apostrophe]till his purported Death in an Opium Den in Singapore.[quotation mark][or]Victor Cragne was a successful businessman, but given to numerous vices including opium. It is said that he lived to extreme old age.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Hugo when benjack-R1 is happening:
	say  "[one of][quotation mark][bold type]Carol[roman type] did not oftentimes speake of her [bold type]Father[roman type], but I do know, much to the belike of the [bold type]Deep Ones[roman type], I doubt me not, that a man of the Sea was he -- not in the sense of a Saylor, but drawn to the Deep by Intelleckt and Inclineation, being more a Shipswrighte or one who does put his Designe upon Paper that others might put Hammer to Nayle in its Construcion.[quotation mark][paragraph break]Christabelll laughs, [quotation mark]At one Poynt, [bold type]Carol[roman type] did inform me, he did sit bodily upon my very Pyle of Ironne, but perceived me not for lack of the Seight. In that Moment he did hatch an Idea to sell the Ironne for the making of Ships to bring War to his Enemies, for he was bloodthirsty and did detest those not spaking Engelish, putting me much in Mynd of Ewen Breeves, a [bold type]Preacher[roman type] I did once have the Misfortune to know.[quotation mark][or]Christabell says that Carol[apostrophe]s father Hugo once tried to sell the railroad tracks to the navy as scrap iron.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-Hugo:
	say "[one of]You recount your impressions of Carol[apostrophe]s [bold type]father[roman type] based on what she told you and then ask Christabell if she knows anything more about him.[paragraph break][quotation mark]I have a similar impression of him,[quotation mark] replies Christabell. [quotation mark]He was hateful and did hunger for Power, and he did bend her to serve his Politiks. Yet, thow he did send her away to Relatives for much of her Childehood, still they had moor to say to each other than did I and mie [bold type]Father[roman type].[quotation mark][or]Christabell has a poor opinion of Carol[apostrophe]s father, Hugo, who she says manipulated Carol to serve his political ends.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-CircularPrison:
	say "[one of][quotation mark][bold type]Carol[roman type][apostrophe]s [bold type]Fusion[roman type] taketh a Forme circular in Shape, like a Belte closed upon itself, wherein her Doom is to repeat the Steppes of her Damnation, appearing Nowe as a Babe, then later a Gyrll, and Finally One of Majority, up to that Tymme what she did take her Leyfe. Why summe [bold type]Spirits[roman type] do endure this rotary Existence, while others like me do remain fixed, I know not, thow mayhap I play a Role in her Revolving about.[quotation mark][or]It sounds like Carol is caught in some sort of a loop, doomed to grow up over and over again.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-ChFather:
	say "[one of][quotation mark]My [bold type]father[roman type] was no Scholar, there be no Mystake. From young Ayge he did in a Smythie werke and for many Yeares all aspects of the Trade he did learn be it smelting, casting or the wrothing of Ironne -- knew he it all, he did.[quotation mark][paragraph break][quotation mark]When we did hear of the Colonies, the Idea did much take [bold type]Mother[roman type], who did desire to separate from the Church of Engeland. On that, [bold type]Father[roman type] held no Accounte, but when he did hear of the Oppourtunities abounding in the New Worlde, it was he faster on a Boat than us all. He did secure a Contracte most generous with the Ironwerkes company and a House built for us as well in [bold type]Lyn[roman type].[quotation mark][paragraph break][quotation mark]But once come to [bold type]Lyn[roman type], he became a Man changed, spending ne[apostrophe]er a minute at Home, but in the [bold type]Forge[roman type] with his Dear Metall. I do thinke some malific Vapour or inimicall Spirit did direct his Minde to so Oppose his owne Family. After Suffering  indecent long [bold type]Mother[roman type] did quit his House and took we up at last with the [bold type]Nirramonk[roman type] in their [bold type]Longhouse[roman type] did we dwell many years, ‘til father[apostrophe]s [bold type]Jealousy[roman type] and wrath did reach us at last the Neight of the [bold type]Skourmuch[roman type][quotation mark][or]In the tale Christabell tells, her father became jealous after she and her mother went to live with the Nirramonk tribe; this led to the skirmish between that tribe and the town of Lin.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-ChMother:
	say "[one of][quotation mark]My [bold type]Mother[roman type] did stem from a Family by no means of Wealthe, but knowing some Success in Trade. She did tell me they did take it hard for her to marry to a Smythie, but for the Opinion she cared but little. Her fyne upbringing did benefit us in later Lyfe, for her Command of Maths and Grammar we did come to employe in ouwr Werke on the Language of the [bold type]Nirramonk[roman type]. In that Werke and our Faith, the brilliyant [bold type]Doctor[roman type] Leif did skillfully guide us.[quotation mark][or]Christabell says her mother married down and after leaving her father, took up with Doctor Leif and helped him translate the language of the Nirramonk Indians.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Breeves:
	say "[one of][quotation mark]When we did arrive in [bold type]Lyn[roman type], the Towne did welcome us joyfully, and they led by the [bold type]Preacher[roman type], a certain Ewen Breeves. He were all a-smile and many did laugh that Daye, but not a Week hence we did come to know by the Laundry Talke, of his Anger and Fear. Anger for any that would speake in Opposition to himself, even on the most petty Issue. And Fear of the [bold type]Indians[roman type], who did surround us entirely, but with whom we had to that Poynte enjoied warm Friendliness.[quotation mark][paragraph break][quotation mark][bold type]Preacher[roman type] Breeves would tolerate no other Preacher nor even Helper in his Church and turned away many from the Pews as well. It was Breeves that sent our Sick to the [bold type]Indians[roman type] to spread our Illnesses, and we did suspect him of burning summe Foods set by for Winter with the Pretensions of it being done by the [bold type]Indians[roman type] to turn the Settlers against them.[quotation mark][paragraph break][quotation mark]But the worst of it,[quotation mark] Christabell sobs, [quotation mark]is what he did to [bold type]Father[roman type] -- the [bold type]Jealousy[roman type] he did stoke. I blame the [bold type]Skourmuch[roman type] on Breeves alone.[quotation mark][or]Christabell holds Preacher Ewen Breeves responsible for her father[apostrophe]s jealousy, which led to the skirmish between the Nirramonk tribe and the Town of Lin.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Leif:
	say "[one of][quotation mark][bold type]Doctor[roman type] Leif was a Scholar of many subjects, not the least amongst them, Philology. He did break with his comfortable Accomodation as a Professor at Oxford to come live among us in the New Worlde. Hee it was who did introduce [bold type]Mother[roman type] and mee to the [bold type]Nirramonk[roman type], and also he who did encourage us to explore theyr Wisedom, although we had aught but begun when the whole Enterprize did Collapse upon us with the [bold type]Skourmuch[roman type].[quotation mark][or]With the assistance of Christabell and her mother, Doctor Prichard Leif studied the language and culture of the Nirramonk Indians. He thought the European settlers could learn from their wisdom.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Jealousy:
	say "[one of][quotation mark]First, know you that mei [bold type]Father[roman type] were in his Constitution of Jealous Blood. Once I did try help his Labour of Blackesmything by sharing with him summe small Part of the Artes, which the Narramonk do possess, and which they use for making any number of Tools and Contrievances of such Genius as you do not possess even in your Modernity, I would warrant. Their most patient Explanation of the Process to fabricate a lighter Metall they did make threw mee, but hee did throw their erudite Drawings back at them and sent us everyone fleeing.[quotation mark][paragraph break][quotation mark]So, it come not to surprise how little it did take for [bold type]Preacher[roman type] Breeves to convince him that [bold type]Mother[roman type] had left him to consort with [bold type]Doctor[roman type] Leif, sleeping wantonly in the [bold type]Longhouse[roman type] of the Narramonk as the [bold type]Indians[roman type] are want to do. The truth of that statement aside, the Rage engendered did drive my [bold type]Father[roman type] to Violence, to wit bringing about the [bold type]Skourmuch[roman type] that led to our mutual [bold type]Demise[roman type], my [bold type]Father[roman type] and I.[quotation mark][or]Christabell[apostrophe]s mother and Doctor Leif lived together in the longhouse of the Nirramonk for several years while studying the language and culture of that tribe. Christabell[apostrophe]s father suspected that were studying not only the Indians in that longhouse, but each other as well -- a point that Christabell does not deny.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Skirmish:
	say "[one of][quotation mark]The Reason doth mee escape wherefore we do call that evening[apostrophe]s fighting the [bold type]Skourmuch[roman type], that being but a fancy French worde for the same. It did begin in the Dark, the Villagers of [bold type]Lyn[roman type] having been whipped to Fury by the demented Slander of [bold type]Preacher[roman type] Breeves. Came they did with Torches, Musquets, and Swords and burnt the [bold type]Longhouse[roman type] of the Narramonk and murdered all within, there being no Exception, save for us small Band who did escape.[quotation mark][paragraph break][quotation mark]The Death of the [bold type]Sachim[roman type] did provoke them even to casting aside theyr Peaceful Waies and coming into the Towne in Anger. I had hoped even then to Speake once moor to mei [bold type]Father[roman type], but we did fall to fighting, each of us calling fierce Magicks to ouwr aide, and thereby did meet our [bold type]Demise[roman type] together.[quotation mark][or]Driven by jealousy, Christabell[apostrophe]s father led an attack on the Nirramonk longhouse, killing their chief. The enraged Indians counterattacked the Town of Lin and both Christabell and her father were killed, both sides employing magical attacks.[no line break][stopping][paragraph break]".

After quizzing benjack-Christabell about benjack-Sachim:
	say "[one of][quotation mark]The Leeder of the [bold type]Nirramonk[roman type] were called the Sachim and she did dye in the [bold type]Skourmuch[roman type].[quotation mark][or][quotation mark]The Honour of serving as Sachim did rotate amongst the [bold type]Longhouse[roman type], so many of us were Sachim for a Tymme.[quotation mark][stopping][paragraph break]".

After informing benjack-Christabell about benjack-ChristabellTeaParty:
	say "[one of]When you finish recounting the tea party, Christabell asks, [quotation mark]How olde did [bold type]Carol[roman type] appear to your Eyes in this encounter, then?[quotation mark][paragraph break][quotation mark]Oh, about five, I[apostrophe]d say. Five years, plus or minus.[quotation mark][paragraph break][quotation mark]Yes, that maketh fyne Sense give her Circular [bold type]Prison[roman type]. That was her Ayge when I did teach her to performe the [bold type]Bestowance[roman type] in that manner. Being a Childe, her Minde was not fitt for moor abstrakt Casting, so we did exercise its rituall Forme.[quotation mark][or]Christabell says that the [quotation mark]tea party[quotation mark] is actually a way of casting the bestowance spell.[no line break][stopping][paragraph break]".
	
After quizzing or informing benjack-Christabell about benjack-Carolsubject when benjack-R1 is happening:
	say "[one of][quotation mark]When she were a Childe, she did come visit me frequently, standing as you do now. I do flatter mieself to thinke she did seek my Company for Wisedom and Solace, but let us also admit that for a Childe, the Crâne Manse was naught but a Place of Boredom most profound.[quotation mark][or]	[quotation mark]I be not surprised that she did appear to you in an Aspekt childe-like, for that is a Manifestation of her strange [bold type]Fusion[roman type], the Circular [bold type]Prison[roman type], but well you would do to remember she died far from Innocent. Though I did teach her tenderly, she did bend the Craft darkly in Service to her [bold type]Father[roman type], [bold type]Hugo[roman type], a man of no moral fibre.[quotation mark][or]Christabell says that, as a child, Carol used to come visit her frequently.[no line break][stopping][paragraph break]".

After informing benjack-Christabell about benjack-ChristabellToys when benjack-R1 is happening:
	say "[one of][quotation mark]The Names are not beknownst to me, but that is merely an accident of this [bold type]Unfolding[roman type]; I know the Essence of the [bold type]Creatures[roman type] of whych you do speak. They are at this Ayge of hers mostly Play Toys, but in Tymme do become her most loyal and dangerous Consorts.[quotation mark][or]You tell Christabell about your most recent visit with Carol and about her stuffed toys.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-Unfolding:
	say "[one of][quotation mark]What little I know from the Lore of the Narramonk, I will to you relate: that one bound in Circular [bold type]Prison[roman type] does move always in one Direction in Tymme, but not along a single Path. Most Paths start and end they did in Lyfe, but there are side Paths described by other [bold type]Runes[roman type] that can come to being; summe few may put end to the [bold type]Fusion[roman type], freeing the Spirit.[quotation mark][or]According to Christabell, Carol[apostrophe]s future does not always follow the same course each time she cycles from birth to death as a spirit.[no line break][stopping][paragraph break]".
	
After quizzing or informing benjack-Christabell about benjack-scrapbookSubject:
	say "[quotation mark]These then are [bold type]Carol[roman type][apostrophe]s [bold type]Runes[roman type] that you did generate during the [bold type]Bestowance[roman type], that is the [apostrophe][bold type]Tea Party[roman type][apostrophe]; they chart her way through this [bold type]Unfolding[roman type].[quotation mark][paragraph break]".

After quizzing or informing benjack-Christabell about benjack-GrandUncle:
	say "[one of][quotation mark]Verily, it is a curiosity -- I never did come to know [bold type]Carols[roman type][apostrophe] [bold type]grand-uncle[roman type][apostrophe]s name, although I do suspect it were [bold type]Victor[roman type] Crâne, thow greatly ayged hee would have been.[quotation mark][or]Christabell suspects Carol's grand-uncle is none other than Victor Cragne, who made his fortune with the family wood mill.[no line break][stopping][paragraph break]".
	
After quizzing or informing benjack-Christabell about benjack-Mansion:
	say "[one of ][quotation mark]What about the mansion, Christabell,[quotation mark] You ask. After you recount some of your experiences at the mansion, Christabell adds, [quotation mark]Being stuck here, I have not mieself even layd Eyes upon this most strange Edifice.[quotation mark][paragraph break][quotation mark]That[apostrophe]s odd,[quotation mark] you say. [quotation mark]I can see this hillside from Carol[apostrophe]s window. How can it be that I can[apostrophe]t see the mansion from here?[quotation mark][paragraph break][quotation mark][bold type]Carol[roman type][apostrophe]s [bold type]Fusion[roman type] is to the Room itself, and what you do see be naught but her imperfect Memorie of it.[quotation mark][or]Christabell says that spent a lot of time in that creepy old estate while she was growing up and that in death, she is magically bound to her room there.[no line break][stopping][paragraph break]".
	
After quizzing or informing benjack-Christabell about benjack-Mirror:
	say "[one of]After you tell Christabell about being trapped in Carol[apostrophe]s room by the door that turned into a mirror, Christabell offers some reassurance: [quotation mark]Fret you not, I know of the [bold type]Seeming[roman type] she did Werke, and it is but a weake one and cannot be used against your Minde again.[quotation mark][or]The trick that Carol used to trap you in her room won[apostrophe]t work on you a second time.[no line break][stopping][paragraph break]".
	
After quizzing or informing benjack-Christabell about benjack-Seeming:
	say "[one of]After you tell Christabell about being trapped in Carol[apostrophe]s room by the door that turned into a mirror, Christabell offers some reassurance: [quotation mark]Fret you not, I know of the [bold type]Seeming[roman type] she did Werke, and it is but a weake one and cannot be used against your Minde again.[quotation mark][or]The trick that Carol used to trap you in her room won[apostrophe]t work on you a second time.[no line break][or][quotation mark]A [bold type]Seeming[roman type] is naught moor than a brief Illusion; it is easily washed from the Minde and with diligent Practice can be ignored without Effort.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Christabell about benjack-XizziSpell:
	say "Christabell reminds you that this is the spell that transfers magical energy from one being to another."
	
After quizzing benjack-Christabell about benjack-PloughverSpell:
	say "Christabell reminds you that this is the spell that will allow you to magically blink back and forth between Carol[apostrophe]s room and this hillside -- but won't work anywhere else."
	
After quizzing benjack-Christabell about benjack-KHSpell :
	say "Christabell reminds you that this is the spell that you can use to destroy Carol[apostrophe]s book of runes."
	
Chapter 3 - R1 Events

Instead of going a direction (called the way) during benjack-R1:
	if benjack-Christabell is run-down:
		say "[one of]As you walk away from the hillside, an Irish blessing comes to mind: May the road rise up to meet you.[paragraph break]The rest of the blessing doesn[apostrophe]t so much apply, the part about sunshine and good luck and such, but the road, or in this case the packed soil of the trail past the hillside, does fold back on itself and twist around in a way that makes you mildly nauseous and points your feet right back to where you came from.[paragraph break][quotation mark]Are you doing that?[quotation mark] you ask Christabell.[paragraph break][quotation mark]Nay -- [apostrophe]tis you. And [apostrophe]tis this place. But it be not of my Conjuration, but even summe Resulte of your ownself. The [bold type]Potence[roman type] which you do comport maketh of you like unto a Lodestone, what are then drawn by Nature to this Place.[quotation mark][paragraph break][quotation mark]So I[apostrophe]m a magnet stuck to that giant [bold type]pile[roman type] of [bold type]iron[roman type]?[quotation mark][paragraph break][quotation mark]To the [bold type]Ironne[roman type], nay. That hath no part in it, save as the object of my unwilling [bold type]Fusion[roman type]. It might as well the Trunk of a Tree as a Thimble be.[no line break][quotation mark][or]This time it[apostrophe]s worse. The path doesn[apostrophe]t so much curve around as flip inside out. Everything stretches as you swing back towards a normal orientation, colors scaling up and down the rainbow, eventually returning to their normal hue.[paragraph break][quotation mark]Please, Friend Naomi, do not Straine your Substance to depart. I have myself been for these many long Years similarly afflickted by the [bold type]Fusion[roman type], but I wish not any Portion of mei Trials on others in no Way deserving of it.[quotation mark][or]Again, the world bends so acutely around you that you see your own back walking away from yourself before time and space catch up, depositing you right where you started.[paragraph break][quotation mark]I didn[apostrophe]t get as nauseous that time,[quotation mark] you remark.[paragraph break][quotation mark]The Minde doth accommodate to Experience, even so arcane, yet this be not a [bold type]Remedie[roman type], though happily for you not bound by the [bold type]Fusion[roman type], One doth exist, and easily to wit.[no line break][or]What was initially frightening is now merely annoying, and a mild headache has replaced frank nausea.[paragraph break][benjack-mobius].[no line break][stopping][paragraph break]";
	otherwise:
		if the room the way from the location is nothing:
			continue the action;
		otherwise:
			say "I do pray you return after a Piece to let me know how you fare with [bold type]Carol[roman type]. Whilst you so occupy your Attentions, I shall myself see to a few Affayres long overdue. See you later, mie Ally great![quotation mark][paragraph break][quotation mark]In a while, crocodile![quotation mark][paragraph break]Christabell gives you a strange look and then disappears into the pile of railroad tracks.[paragraph break]You walk away from the pile of rusting metal, firmly committed to helping Carol by freeing her from her Runes.";
			now benjack-Christabell is nowhere; [in case player comes back before N2]
			continue the action.
	
To say benjack-mobius:		
		say "You [one of]are right where you started[or]haven[apostrophe]t budged an inch[or]aren[apostrophe]t getting anywhere this way[or]wonder what you need to do to get out of here[or]suspect that Christabell knows how you could break this weird spell and leave[or]are really not enjoying this at all and consider pumping Christabell for information[or]have not moved[in random order]".
		
[player starts you not inhibited and armed, so no need to test in this scene]
Before benjack-ploughvering when the yourself is benjack-spell_enabled during benjack-R1:
	if benjack-Christabell is run-down:
		say "[quotation mark][one of ]Your surfeit of [bold type]potence[roman type] does retain you Bodily.[no line break][or]Might I suggest the [bold type]Bestowance[roman type] to yield me the Excess of that [bold type]Potence[roman type] that doth draw you hither?[no line break][or]If you would cast the [bold type]Bestowance[roman type], I do warrant the [bold type]Ploughver[roman type]ing would do just.[no line break][or]If you would but make use of the [bold type]Bestowance[roman type], your Departure would no longer be infringed upon.[no line break][or]Could you cast upon me the [apostrophe][bold type]xizzi[roman type][apostrophe] spell to break the Enchantement that does you bind to this Place?[no line break][stopping][quotation mark][paragraph break]";
		stop the action;
	otherwise:
		say "Christabell calls after you, [quotation mark]Do remember to help liberate Carol from her Runes![quotation mark] and then everything goes dark."
		[could also use this to load up N2 if the scene begins rule doesn't cut it.]	
		
Every turn during benjack-r1:
	if benjack-Christabell is not charged-up:
		if the chargeQuips of benjack-Christabell are less than 5:
			if a random chance of 1 in 2 succeeds:
				say "[one of]Chirstabell seems to flicker for a moment[or]Christabell seems for a moment less substantial[or]For just a second, you can see through Christabell[or]Christabell winks out of existance for just a second[or]The light plays strangely over Christabell and for a brief instant she appears ghostly and luminous rather than solid[in random order].";
				increase the chargeQuips of benjack-Christabell by 1;
		otherwise if the chargeQuips of benjack-Christabell are less than 11:
			if a random chance of 1 in 2 succeeds:
				say "[one of]Christabell flickers like a bad light bulb for several seconds, coming and going out of existence.[no line break][or]For few moments, Christabell fades out of existence, [quotation mark]Sorry,[quotation mark] she says, [quotation mark]I do have but little control over this accursed [bold type]Fading[roman type] and it is a Botheration.[quotation mark][or]Christabell is there one instant and gone the next. When she reappears, she seems to be exerting significant effort to remain visible.[no line break][or]Christabell fades strongly, [quotation mark]I pray you one Instant,[quotation mark] and Christabell forces herself back to corporal solidity.[no line break][or]Christabell fades for a few moments leaving your alone on the hilltop and then reappears some distance away. She apologizes, [quotation mark]I do beg your Indulgence in this matter, the [bold type]Fading[roman type] has gotten quite beyond reasonable Controll[quotation mark]. She fights to remain visible.[no line break][or]Christabell's voice fades in and out as does her image.[no line break][in random order][paragraph break]";
				increase the chargeQuips of benjack-Christabell by 1;
		otherwise:
			if a random chance of 1 in 3 succeeds:
				say "[one of]Christabell disappears for more than a minute, and when she reappears, she seems fatigued from the effort.[no line break][or]Suddenly, Christabell becomes so transparent that you can barely see her, [quotation mark]Sorry, let me do try to be here a bit moor,[quotation mark] she says and with great force of will becomes more substantial, but barely.[no line break][or]Christabell kneels from the exhaustion of trying to remain substantial.[no line break][or][quotation mark]Naomi, I do fear that in but a short time my [bold type]Fading[roman type] will have become so dire as to put an end to my [bold type]Visibility[roman type][quotation mark][or][quotation mark]The situation is dire, Naomi. Without the benefit of the [bold type]Bestowance[roman type] I do fear that I shall [bold type]fade[roman type] Eternally[quotation mark][or][quotation mark]Would that you help me in combatting this afflicktive [bold type]fading[roman type] that does vex me,[quotation mark] pleads Christabell nervously as she fades yet again.[no line break][in random order][paragraph break]";
				increase the chargeQuips of benjack-Christabell by 1.

Chapter 4 - R1 Tests

Test r1-benjack with "s / hello / n / n / n / n / n / n / ask about runes / a runes / a deep ones / g / a potence / g / a luminance / g / a glamor / g/ a marked / g/ a fusion / g / a remedie / g / a bestowance / g / a  nirramonk / g / a nipmuk / a kaballah / a invisible world / a restful / a avenged / a being / a creature / a longhouse / g / a modern / g / a demise / g / a obsession / g / a railroad / g pyle / a mill / a spur / a edgar / g / a victor / g /  a hugo / g / a circular / a prison / a father / g / a mother / a breeves / a preacher / a doctor / a prichard / a jealousy / g / a skourmuch / a skirmish / a sachim / t tea party / t party / a carol / a carol / t carol / t carol / t sweetpaws / t elephant / a unfolding / t scrapbook / a grand-uncle / t grand-uncle /t hugo / t hugo / t mansion / t estate / t mirror / t mirror / a seeming / t modern / g / xizzi / g / a xizzi / a ploughver / a kwisatz haderach "

Chapter 5 - R1 Ends

When benjack-R1 ends:
	benjack-conversation-restore-defaults.

Part 7 - Scene N2 Teenage Carol Marks Naomi's Baby

Chapter 1 - N2 begins[bold type]baby[roman type]

When benjack-N2 begins:
	now Benjack-scene-specific-hint is "Pneby vafvfgf bar cynpvat ure znex ba lbh, ohg arrqf lbhe pbafrag. Lbh unir gb nterr be fur jvyy abg yrg lbh bhg bs gur ebbz. Nf nyjnlf, gurer vf cyragl bs pbairefngvba gb or unq";
	benjack-stage-on 2;
	[now the current interlocutor is benjack-Carol;]
	say "[benjack-nursery-description]";
	benjack-conversation-customize.

	
[hint text: Carol insists one placing her mark on you, but needs your consent. You have to agree or she will not let you out of the room. As always, there is plenty of conversation to be had]

Chapter 2 - Nursery Furnishing Updates

The N2-desc of the benjack-comforter is "Light blue wool[first time]. She will need a heavier one as Vermont slides into autumn[only].".
The N2-desc of the benjack-bed is "The bed is perfectly made and a light blue woolen blanket stretched drum-taut over it. The pillows are perfectly aligned with the upper edge of the blanket.".
The N2-desc of the benjack-pillow is "Fluffy white.".
The N2-desc of the benjack-dolls is "Three of the stuffed animals you met earlier -- elephant, monkey, clown -- sit immobile in a corner of the room, their heads bent together conspiratorily.".
The N2-desc of the benjack-elephant is "[one of]The toy elephant appears much the same as previously, except whereas his leathery skin was dry and flaking before, now it is moister, and areas that were previously flaking or peeling are covered in ugly, suppurating wounds, raised and and red at the edges, but necrotic and white at the center, with a foul-smelling milky green discharge.[or]A rotting toy elephant covered in purulent wounds.[stopping]".
The N2-desc of the benjack-monkey is "[one of]The monkey sock puppet looks considerably more realistic than last time, no doubt because some taxidermist has sewn the head of a real chimpanzee to its tubular shoulders. The specimen is well preserved, but lacks the glass eyes normally inserted in display trophies.[or]An eyeless sock monkey with a sewn-on chimpanzee head.[stopping]".
The N2-desc of benjack-cap is "[N1-desc of benjack-cap]".
The N2-desc of benjack-sweater is "[N1-desc of benjack-sweater]".
The N2-desc of benjack-clown is "[one of]The clown is dressed in the same primary color outfit as before, but there is something about his head -- it is too small, and his bright polyester orange hair sticks out at all angles.[paragraph break]Getting a better look, the clown[apostrophe]s head is now tiny, maybe a third the size that it was and instead of plastic, the skin is dark like charcoal and full of wrinkles. It also looks like it has been somewhat flattened on the sides, giving it a taller, thinner appearance. Its lips are sewn together by a strip of leather and it looks like the eyes were sewn shut too, but being the only parts of his face to retain their former size, they have torn through the lacing that held the eyelids shut. When you can bring yourself to look at those eyes, their pupils are jet black dots, surrounded by brilliant white orbs. The unblinking eyes stare straight ahead.[or]A clown doll with a shrunken, human head.[stopping]".
The N2-desc of benjack-desk is "A large dark wood desk and matching chair, very grown-up in appearance. Several s are stacked on the desk, along with a piece of newsprint and a desk lamp. A few drawers run down the side of the desk. Above the desk some drawings have been Scotch-taped to the wall.".
The N2-desc of benjack-drawer is "You can no more yank open these ephemeral drawers than touch any other ghostly item in this room. They are closed, and absent some divine intervention, they will stay closed.".
The N2-desc of benjack-desktop is "A wooden desktop. Nothing too fancy. It is topped by some stacked books, a piece of newsprint, and a lamp.".
The N2-desc of benjack-lamp is "[N1-desc of benjack-lamp]".
The N2-desc of benjack-recordplayer is "[N1-desc of benjack-recordplayer]".
The N2-desc of benjack-record is "The center is black, with silver writing. You can[apostrophe]t make out much beyond [quotation mark]Wagner[quotation mark] and [quotation mark]Die Walküre[quotation mark].[no line break][one of][paragraph break][quotation mark]Wagner -- that sounds kind of heavy, isn[apostrophe]t it? Should you be going crazy for the Beatles?[quotation mark][paragraph break]Carol rolls her eyes, [quotation mark]The Beatles? Why would I listen to that rubbish? In ten years no one will ever have heard of them, but Wagner is for the ages.[quotation mark][paragraph break][quotation mark]I wouldn[apostrophe]t bet the farm on that,[quotation mark] you reply.[no line break][or][stopping]"

The N2-desc of benjack-table is "[N1-desc of benjack-table]".
The N2-desc of benjack-toychair is "[N1-desc of benjack-toychair].".
The N2-desc of benjack-clothing is "A conservative school uniform.".
The N2-desc of benjack-wall is "Plain white walls, monotonous except for the few pieces of artwork on the wall above the desk and the discolored spot in the corner near the foot of the bed.".
The N2-desc of benjack-floor is "The blue carpeting has not changed[first time]; it has recently been vacuumed[only].".
The N2-desc of benjack-eisenhower is "The portrait of President Eisenhower is gone and has not been replaced.".
The N2-desc of benjack-lamb is "The well-worn lamb doll is nowhere to be found."

The benjack-makeupTable is a benjack-shadow. The printed name of benjack-makeupTable is "makeup table". The N2-desc of benjack-makeupTable is "A small ivory-colored painted wooden table, just to the side of the window. A few items of makeup are arranged neatly on one corner, and a small, round mirror stands on the other". Understand "painted/wooded/table" as benjack-makeupTable when the player is in M2F3.

The benjack-teapot is a benjack-shadow. The printed name of benjack-teapot is "[mtw-teapot]". The N1-desc of benjack-teapot is "[description of mtw-teapot]". Understand "teapot" as benjack-teapot when the player is in M2F3.

The benjack-nail is a benjack-shadow.  The printed name of the benjack-nail is "bent nail".
Understand "bent/nail" as benjack-nail when the player is in M2F3.
The N2-desc of benjack-nail is "A rusted nail driven into the wall and bent up to support a picture with a heavy frame.".

The benjack-patch is a benjack-shadow.  The printed name of the benjack-patch is "discolored patch".
Understand "empty/patch/blank/spot/discolored" as benjack-patch when the player is in M2F3.
The N2-desc of benjack-patch is "The portrait of President Eisenhower is gone and has not been replaced.".

The benjack-drawings is a benjack-shadow.  The printed name of the benjack-drawings is "drawings".
Understand "drawing" or "drawings" or "art" or "artwork" as benjack-drawings when the player is in M2F3.
The N2-desc of benjack-drawings is "Three drawings are taped to the wall above Carol[apostrophe]s desk, the top one in crayon, the middle in ink, and the bottom one painted with watercolors."

The benjack-crayon is a benjack-shadow.  The printed name of the benjack-crayon is "crayon drawing".
Understand "top/crayon/upper/crayon" or "crayon drawing" as benjack-crayon when the player is in M2F3.
The N2-desc of benjack-crayon is "[one of]Primitive technique, limited palette, crayon on manila paper. [paragraph break]There are three stick figures on the left, generously, as man, woman, and child. The man drawn mostly in gray, the woman wearing a red dress with large skirt, and the child wearing a blue dress of the same style, her blonde hair done up in braids. The figure in the middle is more of a jumble: recognizably human with a hat and beard, stooped over with a cane. On the right, are a bunch of brown lines, behind them great masses colored in black vertical lines, and in from of all that the outline of a woman, not a stick figure, but just back and forth strokes of yellow crayon. [paragraph break]In the corner, it is labelled [quotation mark]Carol, Age 5.[quotation mark][or]A picture of Carol and her [quotation mark]family[quotation mark]: [bold type]mother[roman type], [bold type]father[roman type], grand-uncle, and Christabell done when she was five years old.[stopping]". 

The benjack-ink is a benjack-shadow.  The printed name of the benjack-ink is "India ink drawing".
Understand "india/ink/pen/middle/ink" or "india ink drawing" as benjack-ink when the player is in M2F3.
The N2-desc of benjack-ink is "[one of]India ink on hot press bristol board.[paragraph break]It has the quality of being drawn hastily to capture the event. In places, the ink is smeared suggesting that the artist lacked practice with fountain pens. The drawing does not have much in terms of perspective, but some cross-hatched shading does give it depth.[paragraph break]Three creatures are outlined, their backs towards the viewer, each leaning towards the center of the drawing where another creature lays on the ground surrounded by a dark pool, suggestive of blood. The three creatures appear to be dismembering the poor creature on the ground, some sort of animal, which struggles desperately, flailing at them with its three remaining limbs. Its fourth has already been wrenched away by one of the attackers, who chomps into it with sharp simian teeth.[paragraph break]In the corner, it is labelled [quotation mark]Carol, Age 10.[quotation mark][or]A quick sketch capturing the dismemberment of [bold type]Misses Winkelbottom[roman type] by the other toys done by Carol when she was ten years old.[stopping]". 

The benjack-watercolor is a benjack-shadow.  The printed name of the benjack-watercolor is "watercolor painting".
Understand "watercolor/painting/bottom/lower" as benjack-watercolor when the player is in M2F3.
The N2-desc of benjack-watercolor is "[one of]Windsor & Newton series 1 watercolors on 140# cold press Arches paper using wet-on-wet technique. Limited palette: ultramarine blue deep, burnt umber, burnt sienna, mars black with touches of alizarin crimson.[paragraph break]At first, the paint-saturated paper looks like nothing more than muddy splotches, but as you stare at it, forms begin to emerge. There is something in the lower right hand corner that you can[apostrophe]t quite bring yourself to look at, but in the center, a long, black tubular thing fights a losing battle to escape, its back cracked and red-tinged bubbles escaping.[or]A somewhat abstract painting of a [bold type]submarine[roman type] being cracked open like a dropped watermelon, its hull crushed by… something. Carol was fourteen years old when she painted it.[stopping]". 

The benjack-makeupMirror is a benjack-shadow.  The printed name of the benjack-makeupMirror is "mirror".
Understand "mirror" as benjack-makeupMirror when the player is in M2F3.
The N2-desc of benjack-makeupMirror is "Your face is distorted in the makeup mirror and items behind you are a blur.".

The benjack-makeup is a benjack-shadow.  The printed name of the benjack-makeup is "makeup".
Understand "makeup" as benjack-makeup when the player is in M2F3.
The N2-desc of benjack-makeup is "A modest selection of products, nothing unusual. The brands are familiar -- ones you would typically find at high-end department stores.".

The benjack-newsprint is a benjack-shadow.  The printed name of the benjack-newsprint is "piece of newsprint".
Understand "newsprint/article/news/story/boston/herald/newspaper" as benjack-newsprint when the player is in M2F3.
The N2-desc of benjack-newsprint is "[one of]Your eye is first drawn to the date, November 22, 1963, and the curious fact that the paper is not yellowed at all. Below the newspaper masthead is a black and white photograph, stippled with tiny dots as they were in those days, of a number of people crowded around a convertible. Below that, a title, [quotation mark]Tragedy in Dallas[quotation mark].[paragraph break]You don’t have to read further. You know what this is.[or]A newspaper clipping from the Boston Herald recounting the assassination of JFK.[or]You don’t need to. You know what happened there and have an uneasy feeling of who might have had her hand in it.[or]You don’t need to. You know what happened there.[stopping]".

The benjack-stackedBooks is a benjack-shadow.  The printed name of the benjack-stackedBooks is "stacked books".
Understand "stacked/books/book/spine/spines" as benjack-stackedBooks when the player is in M2F3.
Understand "our colonial heritage" or "fundamentals of algebra" or "modern etiquette" or "our/colonial/heritage/fundamentals/algebra/math/textbook/modern/etiquette/primer" as benjack-stackedBooks when the player is in M2F3 and benjack-N2 is happening.
The N2-desc of benjack-stackedBooks is "Several hardcover books are stacked on one side of the desk and topped by a stapled bit of looseleaf paper. Reading along the spines from top to bottom, the books are: [quotation mark]Our Colonial Heritage[quotation mark], [quotation mark]Fundamentals of Algebra[quotation mark], and [quotation mark]Modern Etiquette: A Primer[quotation mark].".

The benjack-looseleaf is a benjack-shadow.  The printed name of the benjack-looseleaf is "looseleaf".
Understand "looseleaf/paper/report/essay/modest/more/proposal/social/studies" or "a more modest proposal" as benjack-looseleaf when the player is in M2F3.
The N2-desc of benjack-looseleaf is "[one of]The cover page of a school report. Centered in the upper third of the page: [quotation mark]A More Modest Proposal, by Carol Cragne, Grade 9, Miss Porter[apostrophe]s School.[quotation mark] In the lower right corner, she has written [quotation mark]Introduction to Social Studies, March 2, 1963.[quotation mark][or]Carol’s high school social studies paper, [quotation mark]A More Modest Proposal[quotation mark]. [stopping]".

The benjack-deskChair is a benjack-shadow.  The printed name of the benjack-deskChair is "desk chair".
Understand "desk chair" or "chair" as benjack-deskChair when the player is in M2F3.
The N2-desc of benjack-deskChair is "A high-backed wooden chair with no cushion[first time]. It looks sturdy, but not comfortable[only].".

Does the player mean doing something with the benjack-deskChair: it is likely.

[note that these items must be declared forward of this list]
The list of things called N2-furnishings is always {benjack-comforter, benjack-bed, benjack-pillow, benjack-dolls, benjack-drawings, benjack-elephant, benjack-monkey, benjack-cap, benjack-sweater, benjack-clown, benjack-desk, benjack-drawer, benjack-desktop, benjack-lamp, benjack-recordplayer, benjack-record, benjack-table, benjack-toychair, benjack-clothing, benjack-nail, benjack-patch, benjack-crayon, benjack-ink, benjack-watercolor, benjack-makeupMirror, benjack-makeup, benjack-newsprint, benjack-stackedBooks, benjack-looseleaf , benjack-deskChair, benjack-window, benjack-wall, benjack-floor, benjack-carol, benjack-makeupTable}.

Chapter 3 - N2 Conversation


Section 1 - N2 Subjects

benjack-missingIke is a subject.  Understand "portrait/president/eisenhower/picture/photo/photograph/official/portrait/frame" as benjack-missingIke when the location is M2F3 and benjack-N2 is happening. The printed name of benjack-missingIke is "President Eisenhower".

benjack-LBJ is a subject.  Understand "lyndon/baynes/bloated/johnson/president" or "president johnson" as benjack-subjectNixon when the location is M2F3. The printed name of benjack-LBJ  is "President Lyndon Johnson".

benjack-subjectNixon is a subject.  Understand "[benjack-nixonToken]" as benjack-subjectNixon when the location is M2F3 and benjack-N2 is happening.  The printed name of benjack-subjectNixon is "Richard Nixon".

Understand "president/richard/millhouse/nixon/tricky/dick" or "president nixon" as "[benjack-nixonToken]".

benjack-subjectKennedy is a subject.  Understand "[benjack-kennedyToken]" as benjack-subjectKennedy when the location is M2F3 and benjack-N2 is happening. The printed name of benjack-subjectKennedy is "Kennedy".

Understand "president/jack/john/fitzgerald/kennedy/robert/ted/teddy/kennedies/clan/jfk/rfk" or "president kennedy" as "[benjack-kennedyToken]".

benjack-scrapbookSubject is a subject.  Understand "scrapbook" or "scrap book" as benjack-scrapbookSubject when the location is in the benjack-realm. The printed name of benjack-scrapbookSubjec is "scrapbook".

benjack-highschool is a subject.  Understand "school/highschool/farmington/porter/porters" as benjack-highschool when the location is in the benjack-realm and benjack-n2 is happening. The printed name of benjack-highschool is "highschool".

benjack-lech is a subject.  Understand "freckle-faced/lech" as benjack-lech when the location is M2F3. The printed name of benjack-lech is "lech".

benjack-thresher is a subject.  Understand "thresher" as benjack-thresher when the location is M2F3. The printed name of benjack-thresher is "thresher".

benjack-WinkelbottomSubject is a subject. Understand "winkelbottom/lamb/misses" as 
benjack-WinkelbottomSubject when the location is M2F3 and benjack-N1 has happened. The printed name of benjack-WinkelbottomSubject is "Misses Winkelbottom".

Section 2 - N2 Quips

Before conversing or hailing when benjack-N2 is happening for the first time:
	if benjack-Carol is teapot-angry:
		say "[quotation mark]Don[apostrophe]t you people even knock![quotation mark] screams Carol as she realizes someone is in the room. [quotation mark]You?[quotation mark] she screeches, and then, settling down, [quotation mark]Not as tall as I remember.[quotation mark][paragraph break][quotation mark]No? Maybe I got a little shorter when you threw me through your door last time.[quotation mark][paragraph break][quotation mark]I suppose I did have a bit of a temper as a child,[quotation mark] says the teenager as she sits down at her desk. She flips through a school book and tosses it back on the pile with more drama than you thought possible. [quotation mark]I suppose it isn[apostrophe]t entirely horrible to have someone to talk to, who can hear me. You might as well stay. I haven[apostrophe]t throw anyone through the door lately.[quotation mark][paragraph break]";
	otherwise:
		say "[quotation mark]Oh, my heavens and stars,[quotation mark] says Carol, wide-eyed, [quotation mark]if it isn[apostrophe]t Auntie Naomi! What a pleasant surprise.[quotation mark][paragraph break][quotation mark]Did people really talk like that?[quotation mark] you ask, incredulous.[quotation mark]No, but I thought it would add flavor.[quotation mark] Carol pulls out the chair behind her desk and sits down. [quotation mark]I[apostrophe]d offer you a chair, but you would just go right through it.[quotation mark][paragraph break][quotation mark]Thanks, it[apostrophe]s okay, I[apostrophe]ll stand.[quotation mark][paragraph break][quotation mark]So it[apostrophe]s been, what? About a decade? Well, nice of you to look in on me again. What have you been doing with yourself?[quotation mark][paragraph break]Since smalltalk seems to be the object of the day, you reply in kind, [quotation mark]Oh, same old, same old, fritting about here and there.[quotation mark][paragraph break]Carol grins and crosses her legs.";
	stop the action.
	

After quizzing benjack-Christabell about a benjack-clipping when benjack-r1 is happening:
	say "Aye, that [one of]do have the true Ring of a Rune to it[or]haveth the Waye of the [bold type]deep ones[roman type] about it[stopping]."

After quizzing benjack-Carol about benjack-thresher:
	say "It’s the sub that the [bold type]Deep Ones[roman type] asked for in return for [bold type]Kennedy[roman type].”

After quizzing benjack-Carol about benjack-missingIke when benjack-N2 is happening:
	say "[one of][quotation mark]What happened to Ike?[quotation mark] you ask.[paragraph break][quotation mark]Democrats![quotation mark] Carol huffs. [quotation mark]That[apostrophe]s what happened. First that lout [bold type]Kennedy[roman type] ([bold type][bold type]father[roman type][roman type] says the entire [bold type]Kennedy[roman type] is a pack of criminals), and now that useless geezer, [bold type]Johnson[roman type]. There is absolutely no way I[apostrophe]m putting Lyndon Bloated Johnson on my wall.[quotation mark][or][quotation mark]I[apostrophe]m waiting for us to get a real man as President. Someone like [bold type]Nixon[roman type]. Dad says [bold type]Nixon[roman type] is the only one who knows how to run [bold type]America[roman type].[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-LBJ when benjack-N2 is happening:
	say "[quotation mark][bold type]Kennedy[roman type][apostrophe]s lacky. Not even worth discussing,[quotation mark] replies Carol."

After quizzing benjack-Carol about benjack-ChristabellSubject when benjack-N2 is happening:
	say "[one of][quotation mark]How do you and Christabell get along?[quotation mark] you ask.[paragraph break][quotation mark]When I was young, back when my parents didn[apostrophe]t want a toddler underfoot and they pushed me off on the Backwater Cragnes, she was sort of like a [bold type]mother[roman type] to me. More than any of the decrepit Cragnes, at least. That[apostrophe]s why she put her mark on me -- to protect me from them, I think. But also so she could work her magic through me.[quotation mark][paragraph break][quotation mark]So you were close?[quotation mark][paragraph break][quotation mark]Sort of, until it got creepy.[quotation mark][paragraph break][quotation mark]Because she[apostrophe]s a five-hundred-year-old spirit?[quotation mark][paragraph break][quotation mark]No, because like a year or two ago, she started staring at me strangely, and asked me to take my clothes off for a ritual. I[apostrophe]m pretty sure that wasn[apostrophe]t a real ritual. And she had me do things, which were difficult. To myself, since not having a body we couldn[apostrophe]t touch. I didn[apostrophe]t like it, but [bold type][bold type]father[roman type][roman type] said to let her have her way, because we needed her magic and cooperation of the [bold type]Deep Ones[roman type] for his [bold type]plans[roman type].[quotation mark][paragraph break][quotation mark]I am so sorry.[quotation mark][or][quotation mark]I don[apostrophe]t want to talk anymore about her; she[apostrophe]s a perv -- you know that[apostrophe]s the reason she and her mother were kicked out of their settlement, right? Because she liked girls. The Indians didn[apostrophe]t care because they were themselves depraved and uncivilized.[quotation mark][paragraph break][quotation mark]Maybe,[quotation mark] you suggest, [quotation mark]they just had a different culture that was more accepting?[quotation mark][paragraph break][quotation mark]It[apostrophe]s disgusting.[quotation mark][or][quotation mark]I have nothing more to say about her.[quotation mark][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-planSubject when benjack-N2 is happening:
	say "[one of][quotation mark][bold type][bold type]father[roman type][roman type] says that the Cragnes were meant for greatness, and that they should be running [bold type]america[roman type], not rotting away in this miserable excuse for a mansion.[quotation mark][paragraph break][quotation mark]They have kind of let it go.[quotation mark][paragraph break][quotation mark]When I got old enough, I told him about the [bold type]Deep Ones[roman type] and the [bold type]Third Covenant[roman type] of [bold type]Mattanit[roman type], but he already knew. He said that[apostrophe]s why he sent me here -- to learn more. He already knew about [bold type]Christabell[roman type] and the railroad tracks and everything. He said that the [bold type]Deep Ones[roman type] are all that[apostrophe]s left because people have spread everywhere -- mostly poor, dirty people, like Africa and other countries like that. They all had newer gods, and the [bold type]Elder Gods[roman type] left in disgust.[quotation mark][paragraph break][quotation mark]And his plan is to protect the world from them?[quotation mark][paragraph break]Carol answers with all sincerity, [quotation mark]No -- his plan is to bring The [bold type]Elder Gods[roman type] back in order to [apostrophe]Make [bold type]america[roman type] What It Once Was[apostrophe] as he says, but we need to build, what does he call it? A political base. So, that[apostrophe]s what we[apostrophe]re doing. [bold type][bold type]father[roman type][roman type] creates the opportunities, and I call upon the [bold type]Deep Ones[roman type] to write the [bold type]Runes[roman type] that make things happen.[quotation mark][or][quotation mark][bold type][bold type]Father[roman type][roman type] has an cunning plan, and it is fool-proof![quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-DeepOnes when benjack-N2 is happening:
	say "[one of][quotation mark]I[apostrophe]ve only seen flashes of the [bold type]Deep Ones[roman type]  in my dreams, which is good since people can[apostrophe]t look at them and not go crazy. I can tell you they are big, have lots of tentacles, and mouths, and eyes, and other parts that I[apostrophe]m not sure what they do. They hang out in parts of the oceans so deep that nobody bothers them there, except maybe my [bold type][bold type]father[roman type][roman type][apostrophe]s [bold type]submarines[roman type] when we need something. And when we need to work some magic, we wake them and they do their stuff, and that[apostrophe]s how we get things done -- a plane goes down, someone is hit by a bus, whatever. But mostly small things. The better I get at seeing the future, the more I can pick out the little events that will push history in the right direction.[quotation mark][or]Carol says the Deep Ones help her [bold type][bold type]father[roman type][roman type] arrange history -- for a price.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-modernAge when benjack-N2 is happening:
	say "Carol asks what the future is like."
	
After informing benjack-Carol about benjack-ModernAge when benjack-N2 is happening:
	say "[one of][quotation mark]I would like to tell you we[apostrophe]ll have flying cars, but sadly no.[quotation mark][paragraph break][quotation mark]I didn[apostrophe]t really think we would,[quotation mark] Carol admits.  [quotation mark]I can[apostrophe]t see too far, but I[apostrophe]m getting better at it. Right now, I can see another maybe five years before things get fuzzy. That[apostrophe]s why I[apostrophe]m holding out to put up the [bold type]Nixon[roman type] portrait. But there[apostrophe]s a lot coming in that time, and a lot that needs to be fixed if we[apostrophe]re going to save [bold type]america[roman type].[quotation mark][paragraph break][quotation mark][bold type]america[roman type] will do fine,[quotation mark] you assert.[paragraph break][quotation mark]Oh, I know you[apostrophe]re from the future, what, the mid-90s or so? Don[apostrophe]t look surprised, I know a lot of things. But first of all, you don[apostrophe]t know where[apostrophe]s [bold type][bold type]father[roman type][roman type][apostrophe]s plan is going. What we[apostrophe]ve set in motion doesn[apostrophe]t even begin pick up steam until a good twenty years after your time. Like the [bold type]Elder Gods[roman type], we can bide our time.[quotation mark][or]You reassure Carol that the world has not been destroyed, at least not by the 1990s.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-covenant when benjack-N2 is happening:
	say "[quotation mark]That was what [bold type]Christabell[roman type] called it -- it[apostrophe]s essentially a roadmap to bring about the return of the [bold type]Elder Gods[roman type].[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-Mattanit when benjack-N2 is happening:
	say "[one of][quotation mark]That[apostrophe]s one of his many names.[quotation mark][or][quotation mark]Let[apostrophe]s not keep saying that, okay?[quotation mark][or][quotation mark]It[apostrophe]s not like saying it three times will make him appear. There is nothing more I could say about him that would make any sense to you.[quotation mark][or][quotation mark]There is nothing more I could say about him that would make any sense to you.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-America when benjack-N2 is happening:
	say "[one of][quotation mark][bold type][bold type]Father[roman type][roman type] says that [bold type]America[roman type][apostrophe]s place in the world is on top, and that[apostrophe]s part of [bold type]Mattanit[roman type][apostrophe]s [bold type]Third Covenant[roman type], that we assume our rightful place as the Seat of the [bold type]Elder Gods[roman type] and bring all other nations to worship them.[quotation mark][paragraph break][quotation mark]He does?[quotation mark] you ask, trying to humor her.[paragraph break][quotation mark]But there is a lot wrong with [bold type]america[roman type] right now because people don[apostrophe]t follow tradition: drugs, music, people who don[apostrophe]t understand how some people are meant to be above other people, and that some people are meant to be their servants. That sort of thing. Don[apostrophe]t worry, though, [bold type][bold type]father[roman type][roman type][apostrophe]s plan will fix it all.[quotation mark][or][quotation mark][bold type][bold type]Father[roman type][roman type] says that [bold type]america[roman type][apostrophe]s place in the world is on top, and that[apostrophe]s part of [bold type]Mattanit[roman type][apostrophe]s [bold type]Third Covenant[roman type], that we assume our rightful place as the Seat of the [bold type]Elder Gods[roman type] and bring all other nations to worship them.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-ElderGods when benjack-N2 is happening:
	say "[one of][quotation mark]Naomi, please don[apostrophe]t take this the wrong way, but your mind really isn[apostrophe]t strong enough for me to talk in any detail about them. Just accept that they exist and that soon enough the [bold type]Deep Ones[roman type] will help us restore them.[quotation mark][or][quotation mark]I can say no more without turning your brains to jelly.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-CarolFather when benjack-N2 is happening:
	say "[one of][quotation mark][bold type][bold type]Father[roman type][roman type] has a brilliant plan and everyday he works to make it happen.[quotation mark][paragraph break][quotation mark]Does that pay well?[quotation mark] you ask.[paragraph break][quotation mark]Well, it[apostrophe]s not his day job, of course.[quotation mark] Apparently, Carol does not recognize sarcasm. [quotation mark]He works in Connecticut in the Electric Boats Division of General Dynamics. That[apostrophe]s a company that makes [bold type]submarines[roman type]. He used to be an engineer, but now he[apostrophe]s a supervisor, so he tells other people what to do.[quotation mark][or][quotation mark]As I said, he has a plan to bring back the [bold type]Elder Gods[roman type]. When he[apostrophe]s not doing that, he works at a company that manufactures [bold type]submarines[roman type].[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-CarolMother when benjack-N2 is happening:
	say "[one of][quotation mark]She is a proper wife and serves [bold type][bold type]father[roman type][roman type] as he desires; she is entirely committed to [bold type][bold type]father[roman type][roman type][apostrophe]s plan. For her, that means mostly hosting cocktail parties and luncheons, and sometimes being on wives[apostrophe] committees and the like. [bold type][bold type]father[roman type][roman type] says that he has made a lot of important deals because she is such a good entertainer and knows what men like.[quotation mark][paragraph break][quotation mark]Also,[quotation mark] Carol adds, [quotation mark]she makes a mean cucumber sandwich.[quotation mark][or][quotation mark]She is a proper wife, and serves [bold type][bold type]father[roman type][roman type] as he desires; she is entirely committed to [bold type][bold type]father[roman type][roman type][apostrophe]s plan.[quotation mark][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-subjectNixon when benjack-N2 is happening:
	say "[quotation mark][bold type]Nixon[roman type] is a linchpin in [bold type][bold type]father[roman type][roman type][apostrophe]s plan. He should have won against [bold type]Kennedy[roman type] in 1960, but I wasn[apostrophe]t strong enough then to make it happen.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-subjectKennedy when benjack-N2 is happening:
	say "[one of][quotation mark][bold type][bold type]Father[roman type][roman type] says that [bold type]Kennedy[roman type] would have ruined [bold type]america[roman type] and destroyed his plan, and that even though I did my best[quotation mark] -- here she glances at the press clipping on the desk -- [quotation mark]it will take years to undo the damage that he did in his first three years in office: filling the heads of drug-addled youth with crazy ideas, letting the Blacks think they might have a voice, and weakening the institutions and traditions that kept [bold type]america[roman type] in the hands of her rightful masters.[quotation mark][or][quotation mark][bold type][bold type]father[roman type][roman type] says that [bold type]Kennedy[roman type] would have ruined [bold type]america[roman type] and destroyed his plan, and that even though I did my best, it will take years to undo the damage that he did in his first three years in office.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-submarine when benjack-N2 is happening:
	say "[one of][quotation mark]My [bold type][bold type]father[roman type][roman type] chose his profession specifically to advance our rapport with the Old Ones. For instance, [bold type]Kennedy[roman type] is a strong node in history; to put [bold type][bold type]father[roman type][roman type][apostrophe]s plan back on track, we had to give them one of the subs, the Thresher, a few months back.[quotation mark][paragraph break][quotation mark]That[apostrophe]s horrible![quotation mark][paragraph break][quotation mark]No, just another Rune. I still have to stick it in the [bold type]scrapbook[roman type], but I[apostrophe]m afraid I left it at [bold type]school[roman type] in Farmington.[quotation mark][or]My [bold type][bold type]father[roman type][roman type] chose his profession specifically to advance our rapport with the [bold type]Elder Gods[roman type].[no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-granduncle when benjack-N2 is happening:
	say "[one of][quotation mark][bold type]Grand-Uncle[roman type] is extremely old and just as irritable, and the less I see him the better. When I[apostrophe]m up here on breaks from [bold type]school[roman type] or over the summer, he thinks it[apostrophe]s funny to lock me in my room. That used to really steam me, until one day [bold type]Christabell[roman type] taught me a way to magically move back and forth between here and where she is. The Rune cost is not so great, and you should have seen how surprised [bold type]Grand-Uncle[roman type] was to see me walking around outside when he had just locked me in. Priceless.[quotation mark][or][quotation mark]Grand-uncle is extremely old and just as irritable.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-Runes when benjack-N2 is happening:
	say "[quotation mark][bold type]Runes[roman type] are the price of magic.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-scrapbookSubject when benjack-N2 is happening:
	say "[one of][quotation mark]I[apostrophe]d show it to you, but I am really a blockhead sometimes. I have some great new stories in it, but I[apostrophe]m afraid I left it at [bold type]school[roman type] at the end of term when I came up here. It[apostrophe]s in my dorm room. So annoying![quotation mark][or]Apparently, Carol left her scrapbook at her boarding school.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-newsprint when benjack-N2 is happening:
	say "[quotation mark]Some parts of history have to change for [bold type][bold type]father[roman type][roman type][apostrophe]s plan to take root. A submarine was a small price to pay.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-stackedBooks when benjack-N2 is happening:
	say "[quotation mark]They[apostrophe]re my school [bold type]books[roman type]. Boring stuff, mostly.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-looseleaf when benjack-N2 is happening:
	say "[one of][quotation mark]A few thoughts I had about ridding [bold type]america[roman type] of its unnecessary people.[quotation mark][paragraph break][quotation mark]What about the rest of the world?[quotation mark] you ask.[paragraph break][quotation mark]Oh yes, and all of them.[quotation mark][or][quotation mark]A few thoughts I had about ridding [bold type]america[roman type] of its unnecessary people.[quotation mark][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-highschool when benjack-N2 is happening:
	say "[one of][quotation mark]Right now I[apostrophe]m going to a private boarding school in Farmington, Connecticut and just get up to Backwater on holidays. The worst thing is that it[apostrophe]s a all-girls school and the one date (kind of) that I[apostrophe]ve had, my [bold type][bold type]father[roman type][roman type] set up. He says it[apostrophe]s part of the plan. He set me up with freckle-faced [bold type]lech[roman type] at the New York Military Academy. It was his senior dance, and I was only a freshman, so it was pretty awful.[quotation mark][or][quotation mark]I didn[apostrophe]t see [bold type]mother[roman type] or [bold type][bold type]father[roman type][roman type] much until I started going to school because they stuck me up here, but I went to the local school in [bold type]Stonington[roman type] up to eighth grade, and then transferred to Mrs. Porter[apostrophe]s School in Farmington. Mom had gone there, so I was legacy. She thought it was important that I learn to be a lady, and frankly, I think they just wanted me out of their hair. So, during the school year I board there, and I[apostrophe]m back here on breaks and over the summer.[quotation mark][or]Carol says that she is currently attends a private all-girls school in Farmington, Connecticut.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-lech when benjack-N2 is happening:
	say "[one of]A lumbering orange-haired oaf with withering halitosis and tiny hands that he tried to put all over me. I wouldn[apostrophe]t have gone out with him at all except that [bold type][bold type]father[roman type][roman type] said he was the key to his plan; what the [bold type]Deep Ones[roman type] took from [bold type]Kennedy[roman type], they gave to him, except sort of inside-out and warped[or]To further her [bold type]father[roman type][apostrophe]s plan, Carol recently went on a date with a guy that she didn[apostrophe]t really like from the New York Military Academy[stopping]."
	
After quizzing benjack-Carol about benjack-crayon when benjack-N2 is happening:
	say "[quotation mark]That[apostrophe]s [bold type]mother[roman type], [bold type]father[roman type], and me, and in the middle, that[apostrophe]s [bold type]Grand-Uncle[roman type], in fact, that[apostrophe]s a somewhat flattering version of him, and on the right is [bold type]Christabell[roman type], back when I thought I could trust her.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-ink when benjack-N2 is happening:
	say "[one of][quotation mark]Ah yes, I recall that day. I had come up here from [bold type]Stonington[roman type] for a three-day weekend, and as soon as I stepped into the room, [bold type]Master Sweetpaws[roman type] was having some sort of argument with [bold type]Misses Winkelbottom[roman type]. She was insisting on some abstruse point of parliamentary procedure -- I don[apostrophe]t even know where the conversation started or what they were doing -- but [bold type]Sweetpaws[roman type] was irate and swinging around the room, screaming. [bold type]Mister Snortles[roman type] tried to talk him down, but also didn[apostrophe]t want to stick his neck out too far.[quotation mark][paragraph break][quotation mark]I sat down to watch and got out my sketchbook.[quotation mark][paragraph break][quotation mark]The argument went downhill, and [bold type]Malice the Clown[roman type] said he had had enough of listening to the pointless bickering and just sliced her open from her mouth to her groin. [bold type]Master Sweetpaws[roman type] and [bold type]Mister Snortles[roman type] were on her immediately. Within about three minutes, she was nothing but lint and some bits of wire. It is very hard to convey all of the motion when you[apostrophe]re drawing quickly like that.[quotation mark][or]Carol says it depicts the other three stuffed toys slicing up and devouring Misses Winkelbottom, her toy lamb.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-watercolor when benjack-N2 is happening:
	say "[quotation mark]That[apostrophe]s the Thresher last April. The Old Ones took it in exchange for [bold type]Kennedy[roman type].[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-babySubject when benjack-N2 is happening:
	say "[one of][quotation mark]Oh don[apostrophe]t worry, Naomi. The [bold type]baby[roman type] will be fine. Oh, and I guess, congratulations in advance.[quotation mark][or]Carol says you have nothing to worry about -- your [bold type]daughter[roman type] is doing fine.[no line break][stopping][paragraph break]".
	
Definition: A thing is benjack-Graphic if it is benjack-crayon or it is benjack-watercolor or it is benjack-ink.

After informing benjack-Carol about something benjack-Graphic when benjack-N2 is happening:
	say "[one of]After perusing the drawings, you comment, [quotation mark]Carol. I[apostrophe]m a little concerned about these drawings. I think you might need professional help.[quotation mark][paragraph break][quotation mark]No, Naomi, I don[apostrophe]t think so,[quotation mark] she replies. [quotation mark]The [bold type]Deep Ones[roman type] are all the help I need for now.[quotation mark][or]You make some minor technical criticisms about the drawings, but considering her age when she drew them, her technique wasn[apostrophe]t bad.[no line break][stopping][paragraph break]".
	
After informing benjack-Carol about benjack-ChristabellSubject when benjack-N2 is happening:
	say "[one of][quotation mark]Earlier today, I had a chance to chat for a while with Christabell. We talked a bit about you,[quotation mark] you mention.[paragraph break][quotation mark]I could care less,[quotation mark] sulks Carol.[paragraph break][quotation mark]She[apostrophe]s concerned about you -- she thinks you might have started down a dark road, but said that you can still fix things and maybe free your spirit from its cycle.[quotation mark][paragraph break][quotation mark]Bullshit, Naomi.[quotation mark] You are stunned to hear this from such a young and proper girl. [quotation mark]She[apostrophe]s a hypocritical centuries-old child molesting monster, who is welded to a pile of steel for good reason. Let her rot there.[quotation mark][or]You start, but Carol walks away, angry and not wanting to hear anything more.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-winkelbottomSubject when benjack-N2 is happening:
	say "Carol mentions that Misses Winkelbottom had an accident, but everyone else is in good spirits."

Chapter 4 - N2 Events

benjack-N2-leaving is an action applying to nothing.

Instead of going a direction during benjack-N2:
	try benjack-N2-leaving;
	if yourself is benjack-baby_marked, continue the action.
Instead benjack-ploughvering during benjack-N2:
	try benjack-N2-leaving;
	if yourself is benjack-baby_marked, continue the action.
	
Carry out benjack-N2-leaving:
	if yourself is not benjack-baby_marked:
		if benjack-Carol is not requesting_permission:
			now benjack-Carol is requesting_permission; [first time threatening Naomi]
			say "[quotation mark]I[apostrophe]ve learned a few things since you were here last time; surely, you must know that [bold type]Christabell[roman type] taught me every chance she got. She[apostrophe]s such a generous soul, and so starved for company out there on the hill.[quotation mark] Carol glances out the window towards the cliffs.[paragraph break][quotation mark]Seems like you are the one who can[apostrophe]t get enough of company. No wonder you don[apostrophe]t get a lot of visitors, if you trap everyone in your room. Not many teenagers would want to lock adults in with them.[quotation mark][paragraph break][quotation mark]Well, you are the only one who can see me, so you[apostrophe]ve got that going for you. No, I[apostrophe]m happy to let you go, I just want to be able to find you again, you know, if I need you for something.[quotation mark][paragraph break][quotation mark]It[apostrophe]s nice to be needed.[quotation mark][paragraph break][quotation mark]So I understand. I will lower my barrier for you just as soon as you agree to bear my mark. The good news, it[apostrophe]s painless, the downside: it is a stain on your immortal soul. There[apostrophe]s no such thing as a free lunch, after all. So, what[apostrophe]ll it be, shall I mark you?[quotation mark] [paragraph break]She extends an index finger towards you.";
		otherwise: [subesquent requests to Naomi]
			say "[one of]Carol stands right in front of you, hands on her hips waiting for an answer, [quotation mark]Listen, due to the metaphysics of complicity or some such, before you go, I need an yea or nay from you -- shall I place my mark?[quotation mark][or][quotation mark]Not to be a bore,[quotation mark] say Carol, [quotation mark]but I need to ask your consent to mark you before you split; can I place it?[quotation mark][or]Carol goes about her business, ignoring you.[stopping][paragraph break]";

Instead of saying no when benjack-Carol is requesting_permission during benjack-N2:
	say "[one of][quotation mark]Well unless you know some way out of this room that hasn[apostrophe]t occurred to me, we[apostrophe]re going to be here together until you do agree, but no hurry on my account. We can come back to the marking issue later.[quotation mark][or]Carol shakes her head sadly.[stopping][paragraph break]"

Instead of saying yes when benjack-Carol is requesting_permission during benjack-N2:
	say "[quotation mark]Thank you for being so reasonable. This will only bring us closer,[quotation mark] says Carol as she pokes you gently with her finger. You do not feel pressure where she touched you, it was more like air blowing gently on your shirt.[quotation mark][paragraph break]Carol withdraws her finger and stares at it, puzzled. [quotation mark]That[apostrophe]s odd.[quotation mark][paragraph break][quotation mark]Problem?[quotation mark] You say.[paragraph break][quotation mark]No, not really a problem, more of an inconvenience. It seems like you[apostrophe]ve already been marked, presumably by Christabell for your own protection. That makes sense, I suppose. Can[apostrophe]t be too careful.[quotation mark] Carol looks out the window. [quotation mark]As you probably know, a person can only be marked by one spirit.[quotation mark][paragraph break][quotation mark]Oh?[quotation mark][paragraph break][quotation mark]Yes, so I had no choice, since you were already marked, I placed mine upon your [bold type]daughter[roman type].[quotation mark][paragraph break][quotation mark]I don[apostrophe]t have a… wait a minute, what?[quotation mark] You glance at your belly where she touched you, [quotation mark]You mean, I[apostrophe]m…[quotation mark] Come to think of it, you have had a lot of nausea lately, in fact, Peter had to pull over on the drive up. And you[apostrophe]ve been feeling tired, which is unusual for you.[paragraph break][quotation mark]Yes, so congratulations on that, I suppose. Anyhow, you[apostrophe]re free to come and go as you please now.[quotation mark][paragraph break]";
	now benjack-Carol is not requesting_permission;
	now yourself is benjack-baby_marked.



Chapter 5 - N2 Tests

test n2-benjack with "n / n / n / look / look / look / x floor / x walls / x bed / x blanket / x pillow / x patch / x nail / x table / x mirror / x makeup / x window / x trees / x cliffs / search window / look out window / x desk / x newspaper / g / x drawers / x lamp / get lamp / x books / x colonial / x algebra / x spines / x looseleaf / x turntable /x record / x record / x stand / x toys / x sweetpaws / x sweetpaws / x snortles / x mister snortles / x malice / g / x winkelbottom / look under rug / open desk / open drawers / hello / s / s / s / s / ploughver / exit / no / no / yes / ask about portrait / g / a johnson / g / a christabell / g / g / a plan / a deep ones / a future / t future / g / a third covenant / g / a mattanit / g / g / g / a america / g / a elder gods / g / a [bold type]father[roman type] / g / a mother / a joan / a nixon / a kennedy / g / a submarines / g / a grand-uncle / g / a scrapbook / a newspaper / a book / a essay / g / a school / a farmington / a lech / g / x drawing / x top / g / x middle / g / x bottom / g / a top / a middle / a bottom / a thresher / a baby / a pregnant /  t top / t bottom / t christabell / g / a winkelbottom / s".

Chapter 6 - N2 Ends

When benjack-N2 ends:
	benjack-stage-off 2;
	benjack-conversation-restore-defaults;
	now benjack-baby-door is in M2F3.

Part 8 - Scene R2 Plotting Carol's Disruption

Chapter 1 - R2 begins

When benjack-R2 begins:
	say benjack-hint-prompt;
	now Benjack-scene-specific-hint is "Lbh pna pung jvgu Puevfgnoryy gb trg n orggre haqrefgnaqvat bs jung vf tbvat ba. Jura lbh yrnir, fur jvyy gryy lbh jung fur jnagf lbh gb qb jvgu Pneby onpx va gur znafvba";
	say "As the day has progressed, the shadows over the hillside deepen, but you easily perceive Christabell, every bit as substantial as you last saw her, walking briskly over to to greet you.";
	now yourself is benjack-ploughver-inhibited;
	move benjack-Christabell to DAN8;
	now the current interlocutor is benjack-Christabell;
	benjack-conversation-customize;
	now benjack-baby-door is nowhere.
	
[hint text: You can chat with Christabell to get a better understanding of what is going on. When you leave, she will tell you what she wants you to do with Carol back in the mansion]

Chapter 2 - R2 Conversation

Before hailing or conversing or speaking when benjack-R2 is happening for the first time:
	say "[quotation mark]My Greetings again, Naomi. Were you able to lifte the Burden of Carol[apostrophe]s Runes and set a-free her Spirit?[quotation mark][paragraph break][quotation mark]No, not so much,[quotation mark] you admit. [quotation mark]She didn[apostrophe]t have the scrapbook with her. In fact, the whole thing didn[apostrophe]t go that well. She[apostrophe]s has some resentment towards you, and her dad[apostrophe]s plan sounds bonkers.[quotation mark][paragraph break][quotation mark]I have something very important to ask you, Christabell. Carol touched me…[quotation mark] You take a moment to compose yourself, [quotation mark]Carol touched me here, and said she had marked my baby, a daughter.[quotation mark][paragraph break]Christabell looks askew. [quotation mark]Oh?[quotation mark] She holds her hand palm out. [quotation mark]No. There be no Baby. Nor even so much as Thowt of one in your Entrayls. Not this Daye. She doth Laie most Cravenly to seeke Inflewance o[apostrophe]er you. I had hoped to save her, but History does itself repete -- for the Sayke of All, we must see to her Disruption.[quotation mark][paragraph break]";
 	continue the action.

Section 1 - R2 Subjects

benjack-Disruption is a subject.  Understand "disruption/disrupt/destroy" as benjack-Disruption when the location is DAN8. The printed name of benjack-Disruption is "disruption".

benjack-WindowSubject is a subject.  Understand "window/windowe/blockayde/blockade/windows/windowes/blockades/blockaydes" as benjack-windowSubject when the location is DAN8. The printed name of benjack-windowSubject is "window".

Does the player mean implicit-informing the benjack-window: it is unlikely.

benjack-resentment is a subject.  Understand "resentment/resentments" as benjack-resentment when the location is DAN8. The printed name of benjack-resentment is "resentment".

benjack-ElderGods is a subject.  Understand "elder/gods/god" as benjack-ElderGods when the location is in the benjack-realm. The printed name of benjack-ElderGods is "Elder Gods".

benjack-clippingSubject is a subject.  Understand "assassination/assassinations" as benjack-clippingSubject when the location is in the benjack-realm and benjack-n2 is happening. The printed name of benjack-clippingSubject is "assassination".

benjack-planSubject is a subject.  Understand "plan/plans" as benjack-planSubject when the location is in the benjack-realm. The printed name of benjack-planSubject is "plans".

benjack-drawingSubject is a subject.  Understand "drawing/drawings/crayon/ink/watercolor/art/arts/artwork/artworks" as benjack-drawingSubject when the location is DAN8. The printed name of benjack-drawingSubject is "drawings".

Section 2 - R2 Quips

After informing or quizzing benjack-Christabell about benjack-fading when benjack-R2 is happening:
	say "The two of you agree that Christabell's fading problem seems to be fixed now thanks to the [apostrophe]xizzi[apostrophe] spell."

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
	
After informing benjack-Christabell about benjack-drawingSubject when benjack-R2 is happening:
	say "[one of][quotation mark]I saw a number of really creepy drawings in Carol[apostrophe]s room -- she[apostrophe]s profoundly weird.[quotation mark][paragraph break][quotation mark]To the Weirdness of Minde, aye. But being her Instructress in the fyne Artes from her earliest Ayge, I do take some Pride in the Faithfulness of her Renderings.[quotation mark][or]You describe to Christabell the strange drawings in Carol[apostrophe]s room.[no line break][stopping][paragraph break]".
	
After informing benjack-Christabell about benjack-scrapbookSubject when benjack-R2 is happening:
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

Chapter 3 - R2 Events

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
	
Chapter 4 - R2 Tests

test r2-benjack with "s / s / look / hello / a mark / t mark / ploughver / a disruption / a destroy / a window / a blockade / a resentment / g / a carol / a carol / a elder / a elder gods / t carol / t toys / t resentment / g / t father / t deep ones / g / t drawings / g/ t scrapbook / g / t clipping / g/ t elder / t plan / t baby / a baby / g / n "

Chapter 5 - R2 Ends

When benjack-R2 ends:
	benjack-conversation-restore-defaults.
	
Part 9 - Scene N3 Boss Battle

Chapter 1 - N3 begins

When benjack-N3 begins:
	now Benjack-scene-specific-hint is "Erzrzore jung Puevfgnory fnvq? Gur bayl jnl gb ybjre Pneby'f qrsrafrf vf gb bcra gur jvaqbj. Lbh nyfb unir gur [quotation mark]xjvfngm unqrenpu[quotation mark] fcryy ng lbhe qvfcbfny";
	say "Carol stares out the window, her back to you. She[apostrophe]s a bit taller and dressed in a sharply tailored turquoise shift. Without bothering to turn around, she addresses you, [quotation mark]I have been expecting you, Naomi. I knew you would come once more before I die.[quotation mark][paragraph break]";
	now yourself is benjack-ploughver-inhibited;
	benjack-stage-on 3;
	say "[benjack-nursery-description]";
	now benjack-Carol is in the location;
	now the current interlocutor is benjack-Carol;
	benjack-conversation-customize.
	
[hint text: Remember what Christabel said? The only way to lower Carol's defenses is to open the window. You also have the "kwisatz haderach" spell at your disposal]

Chapter 2 - N3 Nursery Furnishing Updates

The N3-desc of the benjack-comforter is "Thin and[one of], if you[apostrophe]re not mistaken, starched and ironed within an inch of its life[or] surely not adequate for Vermont in the winter[stopping].".
The N3-desc of the benjack-floor is "Industrial[one of]. Probably indoor-outdoor. It will never wear out[or][stopping].".
The N3-desc of the benjack-bed is "Flat as a slab of marble, and probably just a comfy.".
The N3-desc of the benjack-wall is "The walls are painted a dismal light gray.".
The N3-desc of the benjack-frame is "[N1-desc of benjack-frame]".
The N3-desc of the benjack-dolls is "The two dolls lean forward slightly, giving them a predatory quality.".
The N3-desc of the benjack-monkey is "[one of]The malevolent monkey stares down at you, its mummified face holding up reasonably well, although the skin has started retracting near the corners of its mouth, baring its teeth and reminding you that chimpanzees have large, sharp canines. Not wanting to look any more at the eyeless face, your gaze drifts downward to a its pink sweatshirt emblazoned with some sort of heraldic crest, below which a motto is written on a scroll. You squint to read it.[paragraph break]Noting the object of your curiosity, Carol volunteers, [quotation mark]It[apostrophe]s the family coat-of-arms and motto. The background of the shield, diagonal gold stripes on a blue field, is derived from that of the village of Frolois in France, and the skull in the center commemorates Duke Regnus d[apostrophe]Acraigne, who was born in the 13th Century. All of the modern Cragnes are descended from him.[quotation mark][paragraph break][quotation mark]Fascinating,[quotation mark] you murmur.[paragraph break]Encouraged, Carol continues, [quotation mark]And the family motto, it says, ‘Qu[apostrophe]il me craigne[apostrophe], which means ‘that he fears me[apostrophe], which is apparently something that old Regnus was fond of saying, but in English it is pronounced like ‘Kill me Cragne[apostrophe]. Isn[apostrophe]t that too much?[quotation mark][paragraph break][quotation mark]A real hoot,[quotation mark] you manage[paragraph break][quotation mark]So I had it made into a shirt for Master Sweetpaws, and he thinks it[apostrophe]s delightful too. Don[apostrophe]t you Master Sweetpaws?[quotation mark][paragraph break]The doll leers blindly ahead with its vicious grin[or]The sock puppets arms end in thick, four-fingered talons with nasty claws, like those of an emu, but not as friendly. Those oddly matched claws grip the edge of the shelf tightly, and he eyes Malice the Clown with anticipation of a reward for too long denied[stopping].".
The N3-desc of benjack-sweater is "A pink embroidered sweatshirt.".
The N3-desc of benjack-clown is "[one of]The stuffed clown has seen better days: His dessicated head has been shedding its too-orange hair for some time, having become essentially a bald polished black leather ball at this pointt, and strands of orange polyester hair decorate his tattered clown suit. Through the moth-eaten holes in his soiled,. shredded clown suit, his rachetic ribs and emaciated frame are visible. His fear-filled eyes are subtly turned towards the doll next to him on the shelf, who in turn looks back at him with unconcealed hunger. There is no question which will succeed the other[or]The clown doll is looking particularly ragged[stopping].".
The N3-desc of benjack-desk is "Curved, tubular polished steel tubes support a single sheet of glass, about a half inch thick. A matching chair is right next to the desk. Only a couple items sit atop the glass surface: a computer terminal and a notebook.".
The N3-desc of benjack-drawer is "Closed desk drawers.".
The N3-desc of benjack-desktop is "A glass working area. A computer terminal and a printout binder are on top of it.".
The N3-desc of benjack-lamp is "A cheap, plastic clip-on lamp; it is off.".
The N3-desc of benjack-table is "[N1-desc of benjack-table]".
The N3-desc of benjack-beasts is "[N1-desc of benjack-beasts]".
The N3-desc of benjack-toychair is "[N1-desc of benjack-toychair]".
The N3-desc of benjack-clothing is "Turquoise and well-cut, ending above the knee.".
The N3-desc of benjack-stackedBooks is "A few books are stacked next to the bed, but you can read the titles, How to Make Friends and Influence People, The Compleat Manual of Wardes and Seales, and The Indian grammar begun: or, An essay to bring the Indian language into rules, for the help of such as desire to learn the same, for the furtherance of the Gospel among them.".

The N3-desc of benjack-deskChair is "A modern rolling chair that matches the desk.".

The benjack-fluorescentLight is a benjack-shadow.  The printed name of the benjack-fluorescentLight is "fluorescent light".
Understand "fluorescent/light" as benjack-fluorescentLight when the player is in M2F3.
The N3-desc of benjack-fluorescentLight is "It flickers just enough to give you a headache if you were here long enough.".

The benjack-terminal is a benjack-shadow.  The printed name of the benjack-terminal is "computer terminal".
Understand "computer/terminal/datapoint/dumb/vt100/vt52" as benjack-terminal when the player is in M2F3.
The N3-desc of benjack-terminal is "A bulky affair, larger and deeper than your Viewsonic monitor back in the office. Most of the terminal is a white plastic case, except the front, which is a dark green and mostly occupied by a glass screen, upon which white text glows on a black background. The lower portion of the front panel features an integrated keyboard. Above the keyboard and to the right of the screen, the case is marked in white lettering: [quotation mark]Computer Terminal Corporation[quotation mark] and [quotation mark]DATAPOINT 3300[quotation mark]. Between those words, the case is stamped with an arrow in circle logo. You notice a sticker applied to the side of the case, near the bottom. It reads, [quotation mark]Property of General Dynamics[quotation mark]. A large red rocker switch on the bottom right side of the keyboard emits a red neon glow.".

The benjack-keyboard is a benjack-shadow.  The printed name of the benjack-keyboard is "keyboard".
Understand "keyboard/keys/number/pad/numeric" as benjack-keyboard when the player is in M2F3.
The N3-desc of benjack-keyboard is "The keyboard is arranged in three groupings: a more or less standard typewriter arrangement on the left, then a numerical keypad to its right, and finally, all the way on the right next to the power switch, another bunch of cursor control keys.".

The benjack-powerswitch is a benjack-shadow.  The printed name of the benjack-powerswitch is "power switch".
Understand "power/switch/neon/rocker" as benjack-powerswitch when the player is in M2F3.
The N3-desc of benjack-powerswitch is "The switch is pushed upward and you can read the word [quotation mark]ON[quotation mark]. It emits a flickery red neon glow.".

The benjack-screen is a benjack-shadow.  The printed name of the benjack-screen is "display screen".
Understand "display/screen/CRT/monitor" as benjack-screen when the player is in M2F3.
The N3-desc of benjack-screen is "White characters on a black background[paragraph break][fixed letter spacing]
OF THE ARTIFACTS IDENTIFIED BY ZOND-3 AND HAVE BROUGHT[line break]
THEM BACK TO THE LUNAR EXCURSION MODULE. THEY ARE EN-[line break]
CRUSTED IN REGOLITH, WHICH IS FIRMLY ADHERENT. BLETCHLEY[line break]
ADVISES NOT TO MANIPULATE FURTHER WITHOUT PROPER TOOLS.[line break]
UNTIL THEY ARE RETURNED TO EARTH. IT WAS POSSIBLE,[line break]
HOWEVER TO IDENTIFY TWO OF THE GLYPHS THAT YOU HAD[line break]
DRAWN FOR US: A-73 AND TO ITS RIGHT A-14. [line break]
THE SURVIVING TEAM HAD TO LEAVE THE UPPER UNIT IN PLACE[line break]
DUE TO LIMITED OXYGEN SUPPLY, BUT WERE ABLE TO SAMPLE[line break] 
ONE OF THE FUNGATING MASSES NEAR THE THORAX. I WILL[line break] 
ADVISE WHEN THESE SAMPLES HAVE CLEARED DECONTAMINATION[line break] 
PROCEDURE AND ARE READY FOR YOUR EXAMINATION.[paragraph break][bracket]CARRIER DROPPED[close bracket][variable letter spacing][paragraph break]A blocky cursor blinks below the last line.".

The benjack-shelves are a benjack-shadow.  The printed name of the benjack-shelves is "shelves".
Understand "shelf/shelves" as benjack-shelves when the player is in M2F3.
The N3-desc of benjack-shelves is "The metal shelf immediately above the desk displays a few pieces of artwork. Above the art, the two stuffed dolls you have come to know as Master Sweetpaws the Monkey and Malice the Clown sit menacingly on the upper shelf, their lower legs dangling over the edge. ".

The benjack-art is a benjack-shadow.  The printed name of the benjack-art is "three pieces of art".
Understand "art/sculptures/piece" or "pieces of art" as benjack-art when the player is in M2F3.
The N3-desc of benjack-art is "Three small sculptures, none of them over about eight inches high stand on the lower shelf: a opalescent one on the left and a jet black one in the middle.".

The benjack-Nixon is a benjack-shadow.  The printed name of the benjack-Nixon is "portrait of President Nixon".
Understand "president/nixon/richard/millhouse/portrait/picture/photo/photograph/official" or "portrait of nixon" or  "portrait of president nixon" as benjack-nixon when the player is in M2F3 and benjack-N3 is happening.
The N3-desc of benjack-nixon is "Nixon[apostrophe]s lascivious grin is the first thing that greets Carol every morning[one of]. Just think about that[or][stopping].".

The benjack-egg is a benjack-shadow.  The printed name of the benjack-egg is "opalescent egg".
Understand "opalescent/egg/sculpture/left/leftmost/megalokyniklosaurus/vernalis/bunny/rabbit/easter/dinosaur/raptor/velociraptor/killer" as benjack-egg when the player is in M2F3.
The N3-desc of benjack-egg is "Opalescent pastel blotches swirl lazily over the ovoid sculpture. Unable to tear your eyes away, you feel yourself losing a grip on this reality.[paragraph break][one of][benjack-egg1][or][benjack-egg2][or][benjack-egg3][or][benjack-egg4][or][benjack-egg5][or][benjack-egg6][or][benjack-egg7][stopping]".

To say benjack-egg1:
	say "[quotation mark]Rover, they[apostrophe]re gaining on us --  cut in the Casimir Drive,[quotation mark] orders the woman strapped into the acceleration couch to your right. She is of medium height, dark hair, and wearing an orange space suit with a MARSPACE insignia.[paragraph break]To your right, a cybernetically enhanced Dalmatian leans forward from his customized couch to paw at a few buttons on the command panel. The view out the windows suddenly changes, as the slowly moving stars are replaced by the chaotic discharge aura of the zero point transition.[paragraph break]Suddenly, one of the pirate ships flanks you, its cutting beams chewing through the lateral ablative plating.[paragraph break][quotation mark]It must have tracked our Condensate discharge,[quotation mark] yells Janet.[paragraph break]The dog spins his couch, deftly tracking the enemy vessel and lets loose with the rail guns, slicing the marauder into two glowing red halves.[paragraph break][quotation mark]Good boy![quotation mark] Janet reaches across to scratch Rover just where he likes it, behind the ears, and pushes the Synch Regulator all the way forward, revving the ship to full Asymmetry.[no line break]".
	
To say benjack-egg2:
	say "[quotation mark]I do reckon this might just be my best plan yet,[quotation mark] observes a dust-covered cowboy, slowly stirring a pot suspended above a carefully concealed cooking fire.[paragraph break][quotation mark]Muddy, I can[apostrophe]t rightly believe you sunk all our loot into them rusting rail tracks. The metal[apostrophe]s plum awful -- cracked, lumpy -- anybody what knows anything ain[apostrophe]t going to buy them for nothing.[quotation mark][paragraph break][quotation mark]I[apostrophe]ll give you that, Rick, that[apostrophe]s why I done gone found us someone what don[apostrophe]t know nothing -- some mill owners up in Vermont. Greedy and dumb -- it don[apostrophe]t get no better.[quotation mark][paragraph break][quotation mark]Vermont? Geez, I weren[apostrophe]t hankering to leave the country.[quotation mark]".
	
To say benjack-egg3:
	say "You slam the tiny tray table upwards pinning the lobster that just landed there. Applying pressure to the bottom of the tray table with your knees, you hear the crustacean[apostrophe]s carapace crack. As you let the tray back down, its ugly claws stop their frantic waving.[paragraph break][quotation mark]Mommy, it took Misses Winkelbottom![quotation mark] cries a tiny blond-haired girl two rows ahead. A large, barnacle-encrusted Maine lobster makes it way along the aisle back towards the business cabin dragging some sort of stuffed lamb doll.[paragraph break]As the plane banks steeply to the left, a man bursts from the lavatory, brandishing a stick. Suddenly lightning flares within the cabin and the lobster is reduced to dust. The man picks up the doll and hands it back to the little girl before running towards the cockpit.[paragraph break][quotation mark]Thanks, mister![quotation mark]".
	
To say benjack-egg4:
	say "You hop along a barely visible trail, which leads upwards to a craggy, windswept patch of dirt atop a small mountain. Just ahead, the land drops off precipitously. You peer past the plummeting black granite cliffs towards the tilled fields between you and the river and think of how many delicious carrots must be growing in that rich soil.[paragraph break]Next to you, some sort of anemone-like polyp grows atop a lichen-covered boulder. It[apostrophe]s pulpy fronds emerging from a thick central stalk wave passively in the wind. Just to the side of this creature, a severed human arm lies on the ground. It appears to have been gnawed off at the shoulder.[paragraph break]This place gives you the shivers. You are not sure what possessed you to come here and decide to head back to the warren.[no line break]".
	
To say benjack-egg5:
	say "The thin metal wall of the upturned garbage bin glows red for an instant before slagging. Another laser bolt blasts through the pin-sized hole, just above your left shoulder.[paragraph break]Whatever Professor Igneous is ranting about, the words are muffled in his power armor helmet and drowned out by sound of heavy machinery on the factory floor. You keep moving, one step ahead of the laser blasts, jumping to a precarious perch on a swiftly moving conveyor belt.[paragraph break]Ignoring the fountain of sparks raining down on you, you try to focus your blurry eyes enough to draw the unlock pattern on your phone. After three failed attempts made more difficult by the rough ride along the conveyor, the screen locks for another thirty seconds. You roll under a spinning riveter and finally manage to unlock the phone: three missed calls from Amelia and one from the wedding planner.[paragraph break]You panic when you realize that no one has told the photographer what time to show up for the ceremony, but are brought abruptly back to the present as razor sharp disks cut through the girders next to you, bringing down a section of the ceiling.[no line break]".
	
To say benjack-egg6:
	say "You walk out of the cafeteria to join Elon on the metal deck that rings the upper floor of the Nyantech Tower. After handing him a poptart and his guacamole-carrot detox, you rest your hands on the railing and join him to watch the sun[apostrophe]s crimson disk dip down over Superhighway 17 at the edge of town.[paragraph break]Two stories below you, the company[apostrophe]s mascot, a giant animatronic cat, makes another revolution around the building with a mechanical purr.[paragraph break][quotation mark]I[apostrophe]ve reviewed the proposal,[quotation mark] Musk says, absently fanning the pages of the thick document. [quotation mark]Tell Igneous, I[apostrophe]ll back him. His proposal seems entirely reasonable.[quotation mark][paragraph break][quotation mark]Yes sir,[quotation mark] you reply, making a note on your clipboard. [quotation mark]We[apostrophe]ll get right on that.[quotation mark]".
	
To say benjack-egg7:
	say "The air around you stirs with unfulfilled probabilities: a lab-coated woman trapped under a desk beats back a zombie with a crowbar, a man many thousands of years old lifts his arms in prayer to a volcano god, a squirrel in samurai armor runs through a restaurant, a pointy-eared technician makes adjustments to the very fabric of reality... ".

The benjack-tile is a benjack-shadow.  The printed name of the benjack-tile is "black ceramic tile".
Understand "jet/black/thermal/tile/space/shuttle/ceramic/brick/heat/shield/insulator/middle/center/centre" as benjack-tile when the player is in M2F3.
The N3-desc of benjack-tile is "[one of][italic type]It looks like a brick. How is that art?[roman type][paragraph break][quotation mark]It looks like a brick,[quotation mark] you say, pointing at it. [quotation mark]How is that art?[quotation mark][paragraph break][quotation mark]It is a brick of sorts,[quotation mark] replies Carol. [quotation mark]But it[apostrophe]s a particularly important one. It[apostrophe]s made of a ceramic with special properties that make it an excellent insulator. Father could explain it better than I.[quotation mark][paragraph break][quotation mark]So it is valuable?[quotation mark] you ask.[paragraph break][quotation mark]Valuable? It has no value in the here and now, but for a certain few individuals in 2003, the fact that it is on display here in 1969 rather than installed in its proper place will be a matter of some worth, at least to them.[quotation mark][or]It looks like an ordinary brick, one side of which is glossy smooth.[no line break][stopping]".

The benjack-ambiguity is a benjack-shadow.  The printed name of the benjack-ambiguity is "conspicuous absence of space".
Understand "right/sculpture/conspicuous/absence/space/empty/emptiness/void" or "conspicuous absence of space" or "the conspicuous absence of space" as benjack-ambiguity when the player is in M2F3.
The N3-desc of benjack-ambiguity is "(which of the three sculptures do you mean, the one on the left or one in the middle?)".

The benjack-claws are a benjack-shadow.  The printed name of the benjack-claws is "claws".
Understand "sharp/vicious/talon/talons/claw/claws/paw/paws/emu" as benjack-claws when the player is in M2F3.
The N3-desc of benjack-claws is "Predatory: thick and powerful, ending in sharp talons. ".

The benjack-tapedeck is a benjack-shadow.  The printed name of the benjack-tapedeck is "reel to reel recorder".
Understand "reel to reel recorder" or "reel to reel" or "tape/tapes/tapedeck/recorder/magnetic" as benjack-tapedeck when the player is in M2F3.
The N3-desc of benjack-tapedeck is "The reel-to-reel tape recorder is switched off. Magnetic tape is threaded through the mechanism and about half the tape remains on the supply reel, which is labeled only [quotation mark]Project Nekton[quotation mark], and below that [quotation mark]Singing 00:30 to 00:60[quotation mark].".

The benjack-scrap-19 is a benjack-runebook. The printed name of the benjack-scrap-19 is "binder".
Understand "scrapbook/notebook/printout/binder" or "print out" as benjack-scrap-19 when the player is in M2F3.
The description of the benjack-scrap-19 is "A black binder containing computer printouts."

Instead of reading the benjack-scrap-19:
	if benjack-scrap-19 is closed:
		say "You flip open the binder into ";
		now benjack-scrap-19 is open;
	otherwise:
		say "You peruse the binder in";
	say "which some green and white fan-fold paper has been pasted on several pages. The first page seems to be an index, written in the same blocky letters as on the cover. The index reads:[paragraph break][italic type]* INS Dakar (Israel), 25 January[line break]* S647 (France), 27 January[line break]* K-129 (Soviet), 8 March[line break]* USS Scorpion, 22 May[roman type][paragraph break]".
	
[note that these items must be declared forward of this list]
The list of things called N3-furnishings is always {benjack-comforter, benjack-bed, benjack-dolls, benjack-monkey, benjack-sweater, benjack-clown, benjack-desk, benjack-drawer, benjack-desktop, benjack-lamp, benjack-table, benjack-beasts, benjack-toychair, benjack-clothing, benjack-stackedBooks, benjack-deskChair, benjack-fluorescentLight, benjack-terminal, benjack-keyboard, benjack-powerswitch, benjack-screen, benjack-shelves, benjack-Nixon, benjack-egg, benjack-tile, benjack-ambiguity, benjack-claws, benjack-tapedeck, benjack-window, benjack-scrap-19, benjack-art, benjack-floor, benjack-frame, benjack-wall}.

Chapter 3 - N3 Conversation

Section 1 - N3 Subjects

benjack-nsc is a subject. Understand "national/security/council/nsc" as benjack-nsc when the location is M2F3 and benjack-N2 has happened. The printed name of benjack-nsc is "national security council".

benjack-intel is a subject.  Understand "intel/corporation/microprocessor/microprocessors/cpu/cpus/central/processing/unit/units/chip/chips" as benjack-intel when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-intel is "intel corporation".

benjack-vietnam is a subject.  Understand "vietnam/peace/talk/talks/accord/accords/conference/summit/negotiation/negotiations/process" as benjack-vietnam when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-vietnam is "Vietnam peace talks".

benjack-assassination is a subject.  Understand "assassination/assassinations/martin/luther/king/reverend" or "[benjack-kennedyToken]" as benjack-assassination when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-assassination is "assassinations".

benjack-college is a subject.  Understand "college/university/school/middlebury/linguistics" as benjack-college when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-college is "university".

benjack-suicide is a subject.  Understand "commit/suicide/suiciding" as benjack-suicide when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-suicide is "suicide".

benjack-boyfriend is a subject.  Understand "boyfriend/donald/trump/don/scummy/scum" as benjack-boyfriend when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-boyfriend is "scummy boyfriend".

benjack-elephantSubject is a subject.  Understand "[benjack-snortlesToken]" as benjack-elephantSubject when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-elephantSubject is "Mister Snortles".

benjack-moon is a subject.  Understand "moon/luna/fungating/artifact/artefact/artifats/artefacts/fungating/mass/masses/thorax" as benjack-moon when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-moon is "moon".

benjack-regolith is a subject.  Understand "regolith" as benjack-regolith when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-regolith is "regolith".

benjack-zond3 is a subject.  Understand "zond/zond-3/probe/far-side/dark-side/darkside" or "far side" or "dark side" as benjack-zond3 when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-zond3 is "zond".

benjack-lem is a subject.  Understand "lem/lunar/command/module/escape/ascent/lam/apollo/rocket/saturn/mission/landing" as benjack-lem when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-lem is "Apollo".

benjack-nekton is a subject.  Understand "project/nekton" as benjack-nekton when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-nekton is "Nekton".

benjack-glyphs is a subject.  Understand "glyph/glyphs/writing/writings/arcane/ancient/letter/letters/lettre/lettres" as benjack-glyphs when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-glyphs is "glyphs".

benjack-decontamination is a subject.  Understand "decon/decontamination/sterilization/disinfection/cleaning" as benjack-decontamination when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-decontamination is "decontamination".

benjack-lostSubs is a subject.  Understand "Dakar/s647/minerve/k-129/scorpion" or "submarines that went missing in 1968" as benjack-lostSubs when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-lostSubs is "submarines that went missing in 1968".

benjack-sigint is a subject.  Understand "sigint" or "signals intelligence" as benjack-sigint when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-sigint is "signals intelligence".

benjack-elint is a subject.  Understand "elint" or "electronics intelligence" as benjack-elint when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-elint is "electronics intelligence".

benjack-cw is a subject.  Understand "cw/morse/code/distress/signal/beacon/message" as benjack-cw when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-cw is "cw".

benjack-idf is a subject.  Understand "idf" or "Isreali Defence Force" as benjack-idf when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-idf  is "idf".

benjack-pentacle is a subject.  Understand "pentacle/deep1/catacon/revco/classified" as benjack-pentacle when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-pentacle is "classified".

benjack-br1150 is a subject.  Understand "br1150/plane/atlantic/surveillance/recon/reconnaissance" as benjack-br1150 when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-br1150 is "BR1150 Atlantic reconnaissance plane".

benjack-hydrophone is a subject.  Understand "hydrophone/hydrophonic/hydrophonology" as benjack-hydrophone when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-hydrophone is "hydrophonology".

benjack-milcoord is a subject.  Understand "milcoord" as benjack-milcoord when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-milcoord  is "milcoord".

benjack-navcomgr1 is a subject.  Understand "navcomgr1" as benjack-navcomgr1 when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-navcomgr1 is "NAVCOMGR1".

benjack-medcar is a subject.  Understand "medcar" as benjack-medcar when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-medcar is "MEDCAR".

benjack-sosus is a subject.  Understand "sosus/network" as benjack-sosus when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-sosus is "sosus network".

benjack-bletchley is a subject.  Understand "bletchley/park/enigma/turing" as benjack-bletchley when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-bletchley is "Bletchley".

benjack-lwah is a subject.  Understand "lwah" or "lost with all hands" as benjack-lwah when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-lwah is "lwah".

benjack-popeyeTSM is a subject.  Understand "popeyetsm/telepathic/telepath/dolphin/dolphins/porpoise/porpoises" as benjack-popeyeTSM when the location is M2F3 and benjack-N3 is happening. The printed name of benjack-popeyeTSM is "popeyeTSM".

benjack-ardf is  a subject. Understand "radiogoniometry" as benjack-ardf when the location is M2F3. The printed name of benjack-ardf is "radiogoniometry".

Section 2 - N3 Quips

After quizzing benjack-Carol about benjack-ardf:
	say "The national security council is part of the U.S. government: it is an advisory body to the Whitehouse on matters of national security. Currently, it is headed by Henry KIssinger, a confidante of President Nixon."

After quizzing benjack-Carol about benjack-ardf:
	say "Yeah, I had to look that one up too. It means radio direction finding -- figuring out where a signal is coming from[one of]. They have no end of fancy tricks up their sleeeves[or][stopping]."

After quizzing benjack-Carol about benjack-Nixon when benjack-N3 is happening:
	say "[one of][quotation mark]He stands for everything I believe in: integrity, tradition, and the natural destiny of America to lead the world into the coming millennium. That[apostrophe]s why I decided to work on his campaign rather than take my acceptance to Middlebury.[quotation mark][or]Carol tells you she is his biggest fan. He can do no wrong by her.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-america when benjack-N3 is happening:
	say "[one of][quotation mark]After seeing everything going on in America this past year: the long-haired free love freaks, drugs, the degenerate culture of rock-and-roll, people too self-entitled to defend their country from the Gooks in Vietnam, Blacks riding busses and voting -- all of it, I just couldn[apostrophe]t sit on the sidelines. I wanted to do [italic type]more[roman type] than just bring about the Ascendance of the Elder Gods. That[apostrophe]s going to take time, and I know that I only live another few months before my suicide, so I decided to join the Nixon campaign and make a difference.[quotation mark][or][quotation mark]It[apostrophe]s going to hell in a handbasket,[quotation mark] replies Carol, [quotation mark]and not in a good way.[quotation mark] [stopping][paragraph break]".
	
After informing benjack-Carol about benjack-america when benjack-N3 is happening:
	say "[one of][quotation mark]Carol, I am from the future, I assure you that this plan of yours fails. The idea that the country could be ruled by a bigoted, narcissistic miscreant like you is unthinkable.[quotation mark] Carol smiles smugly.[no line break][or]You try to convince Carol that her plan does not succeed in the future, but her confidence is not shaken in the least.[no line break][stopping][paragraph break]".	
	
After informing benjack-Carol about benjack-intel when benjack-N3 is happening:
	say "[quotation mark]I[apostrophe]m not sure how this all figure into it, but in my day, in the 90s, most of the computers that we use have Intel chips in them. I have long suspected a diabolical cause.[quotation mark][paragraph break]".
	
After informing benjack-Carol about benjack-intel when benjack-N3 is happening:
	say "[quotation mark]I’m not sure how, but the company’s founding seems to have just as much influence on the future as all the assassinations.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-vietnam when benjack-N3 is happening:
	say "[one of][quotation mark]The timing was wrong for Nixon, so I sent Sweetpaws to make sure they didn[apostrophe]t happen.[quotation mark][paragraph break]Carol looks over at the shelfs above her desk. [quotation mark]What[apostrophe]s that Master Sweetpaws? Oh yes, the geopolitical ramifications would indeed have been thorny.[quotation mark][or]Carol explains how Master Sweetpaws craftily manipulated global interests to ensure that the 1968 peace talks to end the war in Vietnam collapsed, undermining President Lyndon B. Johnson[apostrophe]s re-election campaign.[no line break][stopping][paragraph break]".
	
After informing benjack-Carol about benjack-vietnam when benjack-N3 is happening:
	say "You tell Carol that the failure of the Vietnam peace talks in 1968 must have cost the lives of tens of thousands of people."
	
After quizzing benjack-Carol about benjack-elderGods when benjack-N3 is happening:
	say "Carol claims that most of the important events of 1968 were part of her and her father[apostrophe]s plan to alter history to bring about the dominion of the Elder Gods."
	
After quizzing benjack-Carol about benjack-assassination when benjack-N3 is happening:
	say "[one of][quotation mark]As soon as you swat one, another pops up. First JFK -- I thought that set things right. But as soon as he was fixed, up steps RFK and everything drifts back towards the same futures. And don[apostrophe]t even get me started on Martin Luther King.[quotation mark][or]Carol claims that the she orchestrated the assassinations of both Robert Kennedy and Martin Luther King with the assistance of the Deep Ones.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-college when benjack-N3 is happening:
	say "[one of][quotation mark]I was accepted to Middlebury last term; turns out I have some aptitude for languages. I was going to major in linguistics with a minor maybe in history, but the more I looked at the school, the more I realized how unhappy I would be there. Do you know that they are actually trying to promote enrollment of everyone but Whites?  I decided to volunteer for the Nixon campaign instead.[quotation mark][or][quotation mark]I decided not to go there and decided to volunteer for the Nixon campaign instead,[quotation mark] replies Carol.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-suicide when benjack-N3 is happening:
	say "[one of][quotation mark]As I[apostrophe]ve matured, I[apostrophe]ve gained some insight into what is happening, both in my life and in this unfolding. I remember all your visits now, for instance, clearly. And with the aid of the Elder Gods, I[apostrophe]m even beginning to be able to see around the corners and branches of things that haven[apostrophe]t happened yet -- some will, some won[apostrophe]t. That part is hard to sort out, of course.[quotation mark][paragraph break][quotation mark]My suicide, however is unavoidable. If it hadn[apostrophe]t happened a few months from now, we wouldn[apostrophe]t have been talking now and in the past.[quotation mark][paragraph break][quotation mark]I can see what Christabell did to me then, but can[apostrophe]t change it. She was jealous of my power and future place with the Elder Gods, but even more so, she felt spurned because I chose my boyfriend over her.[quotation mark][or]Carol says Christabell is responsible for driving her to suicide before the end of 1969. Carol suspects that Cristabell was jealous that she had a boyfriend.[no line break][stopping][paragraph break]".

After quizzing benjack-Carol about benjack-boyfriend when benjack-N3 is happening:
	say "[one of][quotation mark]In retrospect, he[apostrophe]s a bastard. If I could tell the myself that when I was my age -- with the 20-20 hindsight of temporal paradox, of course -- I would have walked away from him regardless of the what the Elder Gods saw in him.[quotation mark][paragraph break][quotation mark]But at the time, I couldn[apostrophe]t see that. He had just graduated from Wharton and entered into the family real estate business in New York City. There was no question that he would go places, especially with the inchoate horrors of primordial chaos pulling for him as they were.[quotation mark][or]Carol recognizes that her boyfriend back in 1969 was a clod, but it[apostrophe]s likely that Christabell pushed her to suicide because of jealousy over Carol[apostrophe]s relationship with him.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-carolFather when benjack-N3 is happening:
	say "[one of][quotation mark]I don[apostrophe]t like to brag,[quotation mark] Carol brags, [quotation mark]but father has done quite well for himself, not only is he Senior Executive Vice-President in charge of the Electric Boat Division of General Dynamics, but he is now an advisor on President Nixon[apostrophe]s National Security Council.[quotation mark][or]Carol says her father has worked his way onto President Nixon[apostrophe]s National Security Council, where he is privy to the even the most secret machinations of the American government.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-generalDynamics when benjack-N3 is happening:
	say "Carol informs you that General Dynamics is the nation[apostrophe]s lead defense contractor for submarine construction."
	
After quizzing benjack-Carol about benjack-submarine when benjack-N3 is happening:
	say "[one of][quotation mark]Oh, I don[apostrophe]t know all that much about them. Father knows all the technical stuff. I just help coordinate what we do with the Deep Ones.[quotation mark][or]Carol admits she isn[apostrophe]t up on the technical aspects of submarines, but they do play a role in her business with the Deep Ones.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-carolMother when benjack-N3 is happening:
	say "[one of][quotation mark]Oh, mother expired some time ago, actually. Father says that her hostess skills were helpful earlier in his career, but she really had nothing to offer these last few years and was getting to be something of a drag.[quotation mark][or]Apparently, Carol[apostrophe]s mother died some time ago; the cause isn[apostrophe]t really clear and Carol doesn[apostrophe]t seem disposed to elaborate.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-terminal when benjack-N3 is happening:
	say "[one of][quotation mark]I told father that sometimes I felt left out, so he had it set up for me. It helps me keep abreast of what[apostrophe]s going on here and there.[quotation mark][or]Carol seems to be plugged in to a high-level government information feed. The technology is astounding considering the era. There must be a mainframe somewhere within the mansion.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-scrap-19 when benjack-N3 is happening:
	say "[one of][quotation mark]It was getting heavy, so a couple years ago I started dividing them up into volumes. Feel free to peruse the latest Runes -- we[apostrophe]ve been very busy lately![quotation mark][or][quotation mark]Feel free to peruse the latest Runes -- we[apostrophe]ve been very busy lately![quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-elephantSubject when benjack-N3 is happening:
	say "[one of][quotation mark]Poor Mister Snortles was getting on in years, and had some health issues, and Master Sweetpaws thought it best if we put him down. For his own good, really.[quotation mark][or]Carol says that Master Sweetpaws suggested doing away with Mister Snortles the Elephant when he became too weak to defend himself.[no line break][stopping][paragraph break]";
	
After quizzing benjack-Carol about benjack-winkelbottomSubject when benjack-N3 is happening:
	say "[one of][quotation mark]Haven[apostrophe]t seen her for years,[quotation mark] Carol replies. [quotation mark]I don[apostrophe]t recall whatever became of her.[quotation mark][or]Carol seems to have repressed the memory of Misses Winkelbottom[apostrophe]s gory demise and subsequent consumption by her other stuffed dolls.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-clown when benjack-N3 is happening:
	say "[quotation mark]Malice hasn[apostrophe]t been quite himself lately; he isn[apostrophe]t eating like he used to -- I think he may be a little down.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-monkey when benjack-N3 is happening:
	say "[one of][quotation mark]Am I my monkey[apostrophe]s keeper?[quotation mark] Carol asks rhetorically. [quotation mark]He keeps himself busy and comes and goes as he pleases. I try not to micromanage him.[quotation mark][or][quotation mark]He[apostrophe]s a busy, little monkey, aren[apostrophe]t you, Sweetpaws?[quotation mark][or]Carol neither knows nor cares what her bloodthirsty little familiar has been up to. All that matters to her is that he does what needs doing.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-moon when benjack-N3 is happening:
	say "[one of][quotation mark]That need not concern you. Soon the last traces of the usurping gods will be swept away and the Elder Gods restored to their glory.[quotation mark][or]Carol evades your question.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-regolith when benjack-N3 is happening:
	say "[quotation mark]It[apostrophe]s moonrock,[quotation mark] replies Carol helpfully."
	
After quizzing benjack-Carol about benjack-zond3 when benjack-N3 is happening:
	say "[one of][quotation mark]It was a Soviet probe that photographed the far-side of the moon at high resolution and saw some things… that needed to be dealt with.[quotation mark][or][quotation mark]It was a Soviet probe that photographed the far-side of the moon.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-lem when benjack-N3 is happening:
	say "[one of][quotation mark]When Apollo astronauts land on the moon, the part of the rocket that lands on the moon is the LEM or lunar escape module. When it[apostrophe]s time for them to leave, the upper part of the LEM called the lunar ascent module separates and flies up to dock with the lunar command module in lunar orbit.[quotation mark][or][quotation mark]All part of the moonshot.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-nekton when benjack-N3 is happening:
	say "[quotation mark]The Navy[apostrophe]s ill-considered attempt to deal with the Deep Ones without consulting me or my father.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-glyphs when benjack-N3 is happening:
	say "[quotation mark]I have mastered only a few of the symbols of the language of the Elder Gods -- the ones that can be drawn without going insane.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-decontamination when benjack-N3 is happening:
	say "[quotation mark]You can never be too careful; best to disinfect everything -- with fire.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-lostSubs when benjack-N3 is happening:
	say "[quotation mark]When we ask the Deep Ones for help, there is always a price.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-sigint when benjack-N3 is happening:
	say "[quotation mark]Short for [apostrophe]signals intelligence[apostrophe], basically eavesdropping on radio signals.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-elint when benjack-N3 is happening:
	say "[quotation mark]Short for [apostrophe]electronics intelligence[apostrophe]; the plane overflies an area snoops around.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-cw when benjack-N3 is happening:
	say "[quotation mark]It stands for [apostrophe]continuous wave[apostrophe], but means morse code.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-idf when benjack-N3 is happening:
	say "[quotation mark]I think it means Israeli Defense Force.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-pentacle when benjack-N3 is happening:
	say "[quotation mark]Actually, I don[apostrophe]t know. Very official and hush-hush. The military does love their abbreviations.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-br1150  when benjack-N3 is happening:
	say "[quotation mark]It[apostrophe]s a kind of plane. British, I think.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-hydrophone  when benjack-N3 is happening:
	say "[quotation mark]A hydrophone is like a microphone that you can put in water so you can hear what[apostrophe]s down there.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-milcoord when benjack-N3 is happening:
	say "[quotation mark]The person who liaises between the US and French Militaries at NATO Headquarters in Brussels.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-navcomgr1 when benjack-N3 is happening:
	say "[quotation mark]Our listening post on the coast of Greece.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-medcar when benjack-N3 is happening:
	say "[quotation mark]A network of sonic transducers that line the Mediterranean basin and can generate sounds to fool enemy submarines.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-sosus when benjack-N3 is happening:
	say "[quotation mark]Strings of underwater sensors that help the military track submarines.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-bletchley when benjack-N3 is happening:
	say "[quotation mark]I don[apostrophe]t know where it is, but they coordinate the American and Soviet space programs,[quotation mark] replies Carol."
	
After quizzing benjack-Carol about benjack-lwah when benjack-N3 is happening:
	say "[quotation mark]It is short for [apostrophe]lost with all hands[apostrophe] in military-speak.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-art when benjack-N3 is happening:
	say "[quotation mark]Various trinkets I[apostrophe]ve picked up here and there. I think the one on the right is my favorite.[quotation mark][paragraph break]".
	
After quizzing benjack-Carol about benjack-popeyeTSM when benjack-N3 is happening:
	say "[quotation mark]It[apostrophe]s the code name for our navy[apostrophe]s global intelligence network of telepathic dolphins.[quotation mark][paragraph break]".

After quizzing benjack-Carol about benjack-egg when benjack-N3 is happening:
	say "[one of][quotation mark]Ah, yes, the egg of the [italic type]Megalokyniklosaurus vernalis[roman type]. Those who have stared into its swirling mysteries have reported visions from other realities.[quotation mark][or]Carol reminds you that the only known [italic type]Megalokyniklosaurus vernalis[roman type] egg in existence is rumored to reveal visions of other realities.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-tile when benjack-N3 is happening:
	say "[one of][quotation mark]It[apostrophe]s not quite as real as the other pieces of art in my collection, because of course it does not exist yet.[quotation mark][or][quotation mark]It[apostrophe]s a thermal tile from the space plane Columbia some years from now.[quotation mark][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-ambiguity when benjack-N3 is happening:
	say "[quotation mark]What more can one say about such an exquisite piece?[quotation mark] observes Carol."
	
After quizzing benjack-Carol about benjack-PloughverSpell when benjack-N3 is happening:
	say "[one of][quotation mark]You realize that every time you use that spell, you[apostrophe]re complicit in what you experience, right?[quotation mark][paragraph break][quotation mark]No, Christabell didn[apostrophe]t mention anything about that,[quotation mark] you plead, alarmed.[paragraph break][quotation mark]No, I wouldn[apostrophe]t suppose she would. It[apostrophe]s funny how she only tells parts of things, isn[apostrophe]t it?[quotation mark][or]Carol explains that the person casting the teleport spell shares in the responsibility for collateral damage that it causes.[no line break][stopping][paragraph break]".
	
After quizzing benjack-Carol about benjack-babySubject when benjack-N3 is happening:
	say "[one of][quotation mark]Carol, we need to level. About that mark that you allegedly placed: Christabell says I[apostrophe]m not pregnant and that you are try to manipulate me.[quotation mark][paragraph break][quotation mark]Does she now?[quotation mark] Carol says with a sly smile. [quotation mark]Well, I suppose it[apostrophe]s just a matter of which of us you trust. How is it that I[apostrophe]m supposed to have manipulated you?[quotation mark][paragraph break][quotation mark]Well.[quotation mark] You think for a minute. [quotation mark]I thought it was some kind of a threat. Against me, or maybe against the baby.[quotation mark][paragraph break][quotation mark]That[apostrophe]s not how it works, Christabell. Marks are Wardes of Protection. The only benefit I derive is being able to work magic through someone who is bemarked. The person themself is merely the medium and comes to no harm at all.[quotation mark][paragraph break][quotation mark]So, am I pregnant or not?[quotation mark][paragraph break][quotation mark]There[apostrophe]s nothing I can say that will convince you one way or another, Naomi, so why ask?[quotation mark][or]Carol sticks to her argument that you are indeed pregnant and that you baby bears her mark, but that she means no harm by it.[no line break][stopping][paragraph break]".
	
Instead of informing benjack-Carol about benjack-babySubject when benjack-N3 is happening:
	try quizzing benjack-Carol about benjack-babySubject.
	
Instead of informing or quizzing benjack-Carol about benjack-mark when benjack-N3 is happening:
	try quizzing benjack-Carol about benjack-babySubject.
	
Instead of informing or quizzing benjack-Carol about benjack-ChristabellSubject when benjack-N3 is happening:
	try quizzing benjack-Carol about benjack-babySubject.
	
After informing benjack-Carol about benjack-disruption when benjack-N3 is happening:
	say "[one of]You[apostrophe]re not entirely sure it[apostrophe]s a good idea, but you spill the beans about Christabell[apostrophe]s plan. Both spirits seem untrustworthy, but Carol does in some ways seem the more maligned of the two, and perhaps absent Christabell[apostrophe]s influence, she would have grown up to be a different person.[paragraph break][quotation mark]Listen Carol, there[apostrophe]s something I need to tell you: Christabell wants to ‘disrupt[apostrophe] you. Do you know what that is?[quotation mark][paragraph break][quotation mark]Of course -- she[apostrophe]s not content with just killing me once, she wants me gone always. See what I have had to deal with for so many decades? And you… I suppose she would have you serve a role in my disruption?[quotation mark][paragraph break][quotation mark]Yes, she wants me to open the window. She says it will be a hole in your magical barrier.[quotation mark][paragraph break][quotation mark]Thank you for trusting me, Naomi. You have given me a chance. Please proceed as she has asked, but when you open the window, at least I will be prepared and will have a fighting chance. I still have some potence left from our bestowance, whereas she must be waning after all this time.[quotation mark][or]You've more or less put yourself at Carol's mercy, having laid out Christabell's plan.[no line break][stopping][paragraph break]";
	now benjack-Carol is disruption_informed.

Instead of informing benjack-Carol about benjack-WindowSubject when benjack-N3 is happening:
	try informing benjack-Carol about benjack-disruption.

Chapter 4 - N3 Events

After benjack-KHing when benjack-N3 is happening:
	say "Carol tries to get between you and the scrapbook, but she is not fast enough. As the book dissolves progressively to dust to small to see. Carol sags, as if suddenly exhausted.[paragraph break][quotation mark]You idiot,[quotation mark] she scolds. [quotation mark]What was that for? I[apostrophe]ve done nothing to you -- well, nothing to speak of.[quotation mark][paragraph break][quotation mark]You were growing too powerful; it makes me uncomfortable.[quotation mark][paragraph break][quotation mark]I thought you were a little more rational than that, Naomi. I am disappointed in you. That was, of course, just one of many volumes -- my power is little diminished.[quotation mark][paragraph break][quotation mark]Also,[quotation mark] Carol adds as a petty afterthought, [quotation mark]the word is Maud[apostrophe]dib. I at least read the book. When he used the weirding module, the thing he yelled was Maud[apostrophe]dib, not Kwisatz Haderach. You could at least get that one detail right.[quotation mark][paragraph break]";
	now yourself is benjack-KH_accomplished.
	
Instead of going south when benjack-N3 is happening:
	say "You [one of]try, but don't get very far[or]steam off towards the hallway, but don't make it[or]try, but according to Carol, destiny holds you back[stopping].[paragraph break][benjack-stuck-n3]".
	
Instead of benjack-ploughvering when benjack-N3 is happening:
	say "[one of]Dark purple sparks fly from the four walls, ceiling and floor of the room as you cast[or]Sparks fly[stopping], but you go nowhere.[paragraph break][benjack-stuck-n3]".
	
To say benjack-stuck-n3:
	say "[one of][quotation mark]What gives, Carol? Am I your prisoner now?[quotation mark][paragraph break][quotation mark]Naomi, it[apostrophe]s not me holding you back --  honest![quotation mark] pleads Carol. [quotation mark]It[apostrophe]s the universe. When you[apostrophe]re here, some part of you is in my time. The future is written from your perspective, but not mine; all is fluid and potential. Apparently, you have some decisions to make, and the universe can[apostrophe]t get on with its business until you make them. I urge you to think carefully on your choices, as this is apparently a nodal moment, the sort of historical linchpin that I have long labored to bring about at great cost.[quotation mark][paragraph break][quotation mark]You[apostrophe]ll understand if I choose not to believe you.[quotation mark][paragraph break][quotation mark]Believe what you want, but think carefully about your next actions. There is no reason we need be enemies.[quotation mark][or]An invisible force blocks your exit.  Carol again shrugs her shoulders and claims it is none of her doing, but somehow related to the universe and unwritten destiny.[no line break][or]An invisible force blocks your exit.[no line break][stopping][paragraph break]".
	
Before opening the benjack-window when benjack-N3 is happening:
	if the benjack-window is open:
		say "The window is already open.";
		stop the action;
	if yourself is not benjack-ragchewing:
		say "[one of]Carol is watching you too closely[or]Carol seems to have her eye on you[or]Carol if focused on what you are doing[or]Except when Carol is blathering on about something, she watches you too closely to afford you the opportunity to approach the window[or]Sometimes when Carol gets talking, she seems to zone out, but right now, her attention is on you[or]When Carol gets going on a topic, she looses track of what you are doing[or]You need to distract Carol with some conversation in order to get to the window[stopping].";
	otherwise:[ragchewing]
		if the benjack-window is closed and the benjack-window is not cracked:
			say "She is so distracted by what you were just talking about that you are able to get near the window without her noticing.[paragraph break]You pull up on the window and it slides only a fraction of an inch up in its gritty track.";
			the benjack-sash falls in 2 turns from now;
			now the benjack-window is cracked;
			stop the action;
		otherwise:
			say "You give the window a good heave, and the sash flies upward, the frigid outside air pouring inward.";
			now the benjack-window is open.
			
At the time when the benjack-sash falls:
	if the benjack-window is closed and the benjack-window is cracked:
		say "The window has slowly slipped back down and is now fully closed.";
		now the benjack-window is not cracked.
		
Instead of closing the benjack-window when benjack-n3 is happening or benjack-denouement is happening:
	if the benjack-window is open:
		say "You lean on it will all your weight, but it is jammed fully open.";
	otherwise:
		if the benjack-window is not cracked:
			say "The window is already closed.";
		otherwise:
			say "You surreptitiously elbow it shut.";
			now benjack-window is not cracked.
	
[this fires at the end of each turn after the action and response, so the flag represents the previous turn when it is tested in the before opening the window rule]
Every turn when benjack-n3 is happening:
	if the current action is quizzing or informing or implicit-quizzing or implicit-informing:
		now yourself is benjack-ragchewing;
	otherwise:
		now yourself is not benjack-ragchewing.

Chapter 5 - N3 Tests

Test n3-benjack with " n / n/  x carol / x shift / x light / x carpet / x bed / x lamp / x books / x blanket / x portrait / x frame / x window / look out window / x desk / x drawers / x computer / x keyboard / x keys / x switch / x scrapbook / read notebook/ read dakar / read s647 / read k129 / read scorpion / x shelves / x art / x left / g / g / g / g / g / g / g / x middle / g / x right / x toys / x sweetpaws / g / x claws / x malice / g / x tape / x table /ask about nixon / g / a america / a america / t america / a elder gods /  a intel / t intel / a vietnam / a peace / a elder / a assassinations / a martin luther king / a school / a middlebury / a suicide / g / a boyfriend / g / a father / g / a general dynamics / g / a submarine / g / a mother / g / a computer / g / a scrapbook / g / a snortles / a winkelbottom / g / a malice the clown / a sweetpaws / a monkey /  g / a moon / a fungating / a regolith / a zond-3 / a lem / a nekton / a glyphs / a decontamination / g / a dakar / a s647 / a minerve / a k-129 / a scorpion / a sigint / a elint / a cw / a idf / a pentacle / a catacon / a br1150 / a hydrophone / a milcoord / a navcomgr1 / a medcar / a sosus / a bletchley / a lwah / a popeyetsm / a art / a egg / a vernalis / a jet / a black / a ploughver / g / a mark / t christabell / a pregnant / kwisatz haderach / g / s / s / s / s / ploughver / g / open window / g / g / g / g / g / a baby / open window / open window / z / z/ a baby / open window / a baby / open window ".

Chapter 6 - N3 Ends

When benjack-N3 ends:
	benjack-conversation-restore-defaults.

Part 10 - Scene Denouement

The benjack-naomiRunes is a benjack-runebook. The printed name of the benjack-naomiRunes is "Tome of Naomi". Understand "runebook/runes/tome/book/scrapbook" or "tome of naomi" as benjack-naomiRunes when the location is in the benjack-realm. The description of benjack-naomiRunes is "A thin, leatherbound tome. A title is embossed on the cover: [quotation mark]Tome of Naomi[quotation mark]."

Instead of reading the benjack-NaomiRunes:
	if benjack-NaomiRunes is closed:
		say "You carefully lay open the crusty leather-clad book revealing";
		now benjack-NaomiRunes is open;
	otherwise:
		say "You see";
	say " a number of entries, each corresponding to a faded newspaper clipping:[paragraph break][bold type]For Gluttony of the Bestowance:[roman type][line break][italic type][title of benjack-clipping-sable][roman type][paragraph break][if Benjack-clipping-convict is in benjack-naomiRunes][bold type]For Gluttony of the Bestowance a second time:[roman type][line break][italic type][title of benjack-clipping-convict][roman type][paragraph break][end if][if Benjack-clipping-body is in benjack-naomiRunes][bold type]For Gluttony of the Bestowance yet a third time:[roman type][line break][italic type][title of benjack-clipping-body][roman type][paragraph break][end if][if Benjack-clipping-orphan is in benjack-naomiRunes][bold type]For Sloth of Mouvement:[roman type][line break][italic type][title of benjack-clipping-orphan][roman type][paragraph break][end if][if Benjack-clipping-boardwalk is in benjack-naomiRunes][bold type]For Sloth of Mouvement a second time:[roman type][line break][italic type][title of benjack-clipping-boardwalk][roman type][paragraph break][end if][if Benjack-clipping-hargreaves is in benjack-naomiRunes][bold type]For Sloth of Mouvement yet a third time:[roman type][line break][italic type][title of benjack-clipping-hargreaves][roman type][paragraph break][end if][if Benjack-clipping-9 is in benjack-naomiRunes][bold type][bold type]For Pride in Erasure of the Runes of Another:[roman type][line break][italic type][title of benjack-clipping-9][roman type][paragraph break][end if][if Benjack-clipping-10 is in benjack-naomiRunes][bold type]For Murder of Your Own Childe:[roman type][line break][italic type][title of benjack-clipping-10][roman type][paragraph break][otherwise][paragraph break][end if]"

benjack-denouement has a number called doomCounter. The doomCounter is 0.
	
Chapter 1 - Denouement Begins

When benjack-denouement begins:
	now Benjack-scene-specific-hint is "Lbh pna evqr bhg guvf fprar va gur ebbz be lbh pna gnxr gur bayl ninvynoyr rkvg, gur jvaqbj[one of][or]. Gur jvaqbj pna or bcrarq ol gnyxvat gb Pneby gb qvfgenpg ure naq gura bcravat gur jvaqbj n ovg, naq gura ercrngvat gung cebprff[stopping]. Or fher gb gnxr n ybbx ng lbhe EharObbx jura vg vf nyy bire naq gb gnxr gur vgrz gung snyyf bhg bs vg".
	
[hint text: You can ride out this scene in the room or you can take the only available exit, the window[one of][or]. The window can be opened by talking to Carol to distract her and then opening the window a bit, and then repeating that process[stopping]. Be sure to take a look at your RuneBook when it is all over and to take the item that falls out of it]

Chapter 2 - Denouement Events

Instead of going south when benjack-denouement is happening:
	Say "You're not walking out of there just yet -- the universe isn't through with you."

Before conversing when the benjack-Denouement is happening:
	say "This is the time for action, not mere words."
	
Every turn when benjack-denouement is happening:
	if the doomCounter of the benjack-denouement is less than 5:
		increase the doomCounter of the benjack-denouement by 1;
	if the doomCounter of the benjack-denouement is:
		-- 1:
			say "[benjack-doom1]";
		-- 2:
			say "[benjack-doom2]";
		-- 3:
			say "[benjack-doom3]".
			
To say benjack-doom1:
	say "Christabell pours in through the window. Not literally as a person, but her powers, which you have greatly underestimated to this point. In your spectral vision, you perceive a crimson stream flooding into the room -- and into you.[paragraph break][if benjack-Carol is not disruption_informed]Carol is caught unaware and backs to a corner, for once stripped of her air of superiority. [quotation mark]Naomi,[quotation mark] she screams, [quotation mark]by the Elders Gods themselves, I swear you have sealed your doom![quotation mark] The crimson energy flings Carol left and right, but she pulls herself up again and leans heavily against the wall.[paragraph break][end if][if benjack-scrap-19 is nowhere]Through force of habit, Carol reaches behind herself to draw energy from her book of Runes, only recalling too late that you destroyed it. Instead, temporizing, with a flick of her hand she signals her minions to attack. Master Sweetpaws backhands the raggedy clown as he bounds off the shelf, his talons outstretched and jaws wide, leaping straight towards you from his perch. You reflexively lift your hand to shield your face and are surprised as raw magic pours forth, constricting to a narrow beam that slices through the ferocious sock puppet, and then continues through his charred fabric to impale Malice the Clown.[paragraph break][end if]You throw a spinning, glowing glob of magic at Carol and it engulfs her; she agonizes within it like a bug in molasses, her screams drowned in its crackling energy as she falls to her knees. As she struggles to her knees, she manages to push one hand clear of the swirling crimson miasma and with that hand she sends her own reverberating wave of cobalt blue magic towards you, more specifically, towards you belly. Something with in you shudders and kicks, an innocent caught in unaware in a cosmic conflict."
	
To say benjack-doom2:
	say "Thundering energies wind through you in opposing directions, pitting you helplessly against your own unborn child.[paragraph break]The air vibrates, [quotation mark]Carol, I do forbid your Apostasy! You shall not unwrite the Third Covenant; the Servants that overthrew the Elder Gods will not abide their Return. I do command you: abandon forthwith your senseless Attack, for if you do destroy the Woman Naomi, so do you destroy the Vessel of your owne Mark.[quotation mark] The words are punctuated by a renewed tide of crimson force.[paragraph break]Carol only redoubles her efforts, [quotation mark]Not so, Christabell. My Vessel need only survive a heart beat beyond that of its mother for me to break from my circular prison. Then we shall see how the Elder Gods reshape the world.[quotation mark][paragraph break]".
	
To say benjack-doom3:
	say "Unbidden words pour from your mouth, [quotation mark]Such an End the New Gods will not permit; now with their Powers adjoined to mine, I do slay your Instrument and disrupt your Fusion.[quotation mark] Suddenly, all of Christabell[apostrophe]s power and infinitely more turn inward.[paragraph break][quotation mark]No![quotation mark] screams Carol, as she tries to push a wedge of her own powers through the crimson fist tightening on your belly.[paragraph break]But it is not enough. Within you, there is a final fluttering, and then nothing.[paragraph break]As Carol fades, you read her final silent words on her lips, [quotation mark]I[apostrophe]m sorry.[quotation mark] And she too is gone.[paragraph break][quotation mark]Your small Parte in this be nowe Compleat, dear Naomi,[quotation mark] whispers Christabell. [quotation mark]Carol[apostrophe]s Cycle is broken, but long will the Frewt of her Deeds despoil the Earth. In this Struggle I have been emptied of my Potence and do take my Leave, mine owne Fusion finally untangled.[quotation mark][paragraph break]";
	now Yourself is benjack-guilty;
	now benjack-Carol is nowhere;
	now benjack-Carol is unseen.
	
Before doing anything when the doomCounter of the benjack-Denouement is 3 and benjack-Denouement is happening:
	say "Before you can do that, a book appears in mid-air and drops to the wooden floor. Clouds of dust waft up around it.";
	now benjack-naomiRunes is in M2F3;
	now benjack-naomiRunes is seen;
	stop the action.
	
Instead of jumping when the benjack-window is open and benjack-denouement is happening:
	try entering the benjack-window. 
	
Instead of going outside when the benjack-window is open and benjack-denouement is happening:
	try entering the benjack-window.
	
Before entering the benjack-window when the benjack-window is not open:
	say "First of all, this window is many stories above the ground; the drop would be certain death. Beyond that, though, the window isn't open[if the benjack-window is cracked] enough[end if].";
	stop the action.

Instead of entering the benjack-window:
	say "You hurl yourself out the window and both Carol and Christobell push the last of their reserves into you. But gravity wins first. You meet the frozen ground so many stories below, bare of snow in just the spot where you land and die.[paragraph break]";
	wait for any key;
	say "Somewhat.[paragraph break]";
	wait for any key;
	say "More accurately, the only thing that truly died that day in 1969 was the smouldering embers of two entangled spirits, who had been locked in an endless cycle of their own making. With their energies finally exhausted, the loop at last was broken.[paragraph break]You find yourself standing on the hillside just as it appeared when you first encountered it early today, except the railroad tracks are gone.[paragraph break]Instead, a large, flat black stone stands in the middle of the clearing, and on it, a book.";
	now the benjack-altar is in DAN8;
	now benjack-naomiRunes is on the benjack-altar;
	now benjack-naomiRunes is seen;
	move the player to DAN8.	
	
Chapter 3 - Denouement Tests

test de-benjack with "z / z / z / look / x tome / open book / close tome / read tome / read sable / get photo / open window / s ".

Chapter 4 - Denouement Ends

When benjack-denouement ends:
	now Benjack-scene-specific-hint is "Gurer vf abguvat yrsg gb qb urer, lbh unir fhpprffshyyl pbzcyrgrq guvf cneg bs gur tnzr[if jpk-picture is nowhere]! Lbh arrq gb rknzvar lbhe Ehar Obbx naq gnxr gur cubgb gung pbzrf bhg bs vg sbe n yngre cneg bs gur tnzr[end if]";
	benjack-stage-off 3;
	now benjack-window is in M2F3;
	now benjack-window is seen;
	now benjack-window is closed;
	now benjack-Carol is nowhere;
	now benjack-Carol is unseen;
	now benjack-Christabell is nowhere;
	now benjack-Christabell is unseen;
	now benjack-altar is in DAN8;
	now benjack-altar is seen;
	now benjack-mound is nowhere;
	now benjack-mound is unseen;
	now the description of M2F3 is "[one of]Shafts of sunlight filter through the filthy window, which is now closed.[paragraph break]The room is empty: the carpet has been taken up, all furniture removed, and nothing left on the walls. Dust hangs in the air of this room so long abandoned[or]A dusty room, unvisited for more than two decades[stopping].";
	now  Benjack-clipping-sable is in benjack-naomiRunes;
	if the benjack-times_bestowed of yourself is greater than 1:
		now Benjack-clipping-convict is in benjack-naomiRunes;
	if the benjack-times_bestowed of yourself is greater than 2:
		now Benjack-clipping-body is in benjack-naomiRunes;
	if the  benjack-times_ploughvered of yourself is greater than 0:
		now Benjack-clipping-orphan is in benjack-naomiRunes;
	if the  benjack-times_ploughvered of yourself is greater than 1:
		now Benjack-clipping-boardwalk is in benjack-naomiRunes;	
	if the  benjack-times_ploughvered of yourself is greater than 1:
		now Benjack-clipping-hargreaves is in benjack-naomiRunes;
	if yourself is benjack-KH_accomplished:
		now Benjack-clipping-9 is in benjack-naomiRunes;
	if yourself is benjack-guilty:
		now Benjack-clipping-10 is in benjack-naomiRunes.
	
[hint text: There is nothing left to do here, you have successfully completed this part of the game[if jpk-picture is nowhere]! You need to examine your Rune Book and take the photo that comes out of it for a later part of the game[end if]
]

Part 11 - Apres
	
Chapter 1 - Events

[Apres isn't really a scene -- it is how things are left in DAN8 and M2F3 after denouement of our part of Cragne Manor]

Before doing anything with benjack-naomiRunes when benjack-Denouement has happened for the first time:
	say "A photograph flitters out of the Rune Book, spirals around you and floats to the ground.";
	now jpk-picture is in the location;
	now jpk-picture is seen;
	continue the action.
	
Understand "picture/photograph/photo/decaying/worn/old/shiny/metal/woman/kid/kids/child/children/sibling/siblings/stain/stains/writing/hand-writing" as the jpk-picture.

The printed name of the jpk-picture is "a worn out, decaying picture". 

The description of the jpk-picture is "Stains cover large part of the front side, hiding the faces of what looks like a mother and a couple of small siblings. The woman, whose age is impossible to determine, is wearing a white, wedding dress. The kids both have on a kind of work overalls, over a white blouse. The boy on the right is not stained, still... he seems to have no face, as if time has worn out his features.[paragraph break]On the reverse side of the picture is something written, in a trembling hand-writing:[paragraph break][italic type]One blackbird's too few[line break]A [']pecker's too much[line break]Beginning in [roman type]daan[italic type][line break]T'will release the clutch[roman type]."

Instead of rubbing the benjack-window when the benjack-denouement has happened:
	say "The filth on the windows resists your best efforts.".
	
Before benjack-ploughvering or benjack-xizziing or benjack-KHing:
	if benjack-denouement is happening:
		say "All available magical energy is currrently tied up in the conflict between Carol and Christabell.";
		stop the action;
	if benjack-denouement has ended:
		say "[one of]As best you can figure it, having monkeyed with time, space, causality and a numerous primordial Forces that you are fortunate to not have encountered, you were never magically marked in the first place, so not a thing happens[or]Nothing at all happens[stopping].";
		stop the action;
	continue the action.
	
Instead of opening benjack-window when benjack-denouement has ended:
	say "It is frozen shut with age and neglect."
	
Chapter 2 - Tests
	
test all-benjack with " test r0-benjack / test n1-benjack / test r1-benjack / test n2-benjack / test r2-benjack / test n3-benjack / test de-benjack".
	
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
The Benjack-clipping-shark is in benjack-scrap-5.
The title of Benjack-clipping-shark is "Shark Attack".
The list of text called Benjack-clipping-shark-text is always {"SHARK ATTACK![paragraph break]A team of oceanographers from the Woods Hole Institute of Oceanography in Woods Hole, MA was attacked yesterday by sharks in waters about ten miles southeast of Nantucket Island. Of the four man team, one was dead and one was injured, requiring hospitalization.[paragraph break] The team was deploying a string of experimental sonar buoys along an underwater ridgeline. The captain of the expedition, Frampton Mays, was the first to notice a disturbance in the water surrounding the boat and the rubber raft in tow, where two divers were working. [quotation mark]The seas were rolling calmly, but something was moving around us, in circles. Something big. The water humped up around it, but there was no wake.[quotation mark][paragraph break]Davis Parks, an electronics engineer from the Sperry Corporation, was with the captain and noticed unusual readings from the devices being put in place, [quotation mark]The first buoy was anchored and we were calibrating it, so I didn[apostrophe]t pay much attention at that point. I thought we had a gain problem because the signal returns were just crazy and the doppler… well, nothing can move that fast, I had to assume one of the guys had snapped and that the assembly was spinning.[quotation mark][paragraph break]According to coast guard vessels responding to the their distress call, water sprayed up around the raft and then the entire raft disappeared below the foaming surface. Initially, the coast guard reported sighting tentacles reaching out of the water around the raft, but it is now believed that these were the heavy lines that had secured the equipment to the ocean floor recoiling upward with the release of tension.[paragraph break]One diver, who was on the raft at the time, was lost: twenty-six-year-old Travis McMaster of New Port, Rhode Island. Dr. McMaster had recently completed graduate studies at the Massachusetts Institute of Technology and was conducting post-doctoral research at Woods Hole.[paragraph break]The other diver, David Tillerson, was nearer to the research vessel when the sharks attacked, and was pulled from the water by the two crew. First aid was performed on the coast guard rescue boat; it is reported that he had a number of large, painful welts on his back. The treating physician commented that these welts were [quotation mark]similar in nature to the sort we see from jellyfish, but much, much larger and deeper.[quotation mark]"}.
The content of Benjack-clipping-shark is Benjack-clipping-shark-text.
Understand "shark/attack" as Benjack-clipping-shark when the location is in the benjack-realm

Benjack-clipping-actress is a benjack-clipping. 
Benjack-clipping-actress is in benjack-scrap-5.
The title of Benjack-clipping-actress is "Actress Disappears".
The list of text called Benjack-clipping-actress-text is always {"A FLASHBULB EXCLUSIVE![paragraph break]Fashion model and star of the silver screen, Hungarian actress Lili Kovács disappeared this afternoon from a private hospital in North Carolina where she was recovering from recent surgery. As previously reported, she had been flown there three days ago after developing what was thought to be acute appendicitis while filming [quotation mark]Two Shots and A Chaser[quotation mark] in Bermuda.[paragraph break]At a cast party Thursday evening, she sudden collapsed, clutching her stomach in pain, and was rushed to a local hospital, where she was given medication and transferred by plane to the U.S. According to guests at the party, the normally svelte starlet appeared to have gained a lot of weight during her week on the vacation island, and some thought that she might have suffered an on set injury because she was walking oddly.[paragraph break]The handsome Wallace Travers, who stars opposite Miss Kovács in the Metro-Goldwyn-Mayer Pictures production, recounted the troubling week that began with the disappearance of the lovely celebrity while they were filming a scene on the beach area behind the posh Venture Casino last Monday. According to Mr. Travers, [quotation mark]She said she was taking a quick dip to cool off, and I thought she would be right back. When we were ready to shoot the next scene, nobody could find her. We checked the trailer, the hotel -- everywhere. Then our sound guy, Mike, says there[apostrophe]s something going on in the surf. He had a good view from up on the boom tower, but from the beach everything looked normal. He said some kind of lights were moving around under the water. ","Some of the locals later told us that[apostrophe]s not too unusual, that algae or whatnot have this faint glow at night, but Mike was really upset and said the lights were huge, the size of city busses, really bright, and moving around incredibly fast. Well, Heinrich called it for the evening, and we let Mike go sober up.[quotation mark][paragraph break]According to the film[apostrophe]s director, Heinrich Habberstamp, Miss Kovács showed up early the next morning for filming as if nothing had happened. Later that day, she admitted to having no recollection of the prior evening.[paragraph break]The private hospital refused to comment in the interest of privacy, but one of Lili[apostrophe]s visiting relatives gave FLASHBULB the inside scoop: When Lili arrived from the airport, she was burning up with fever and brought immediately to the operating room. As the surgeon made the first cut, the wound tore open of its own accord and a mass of gelatinous balls squirted out. [quotation mark]Maybe ten or fifteen pounds of them, each about the size of an orange. They were pink or red, and some had little cords attached. Nobody knew what they were, but they got as many of them out as they could. They had to leave some of the smaller ones that were more firmly attached. When they tried to cut those out, she started bleeding, so they closed her up.[quotation mark][paragraph break]No one knows the whereabouts of the starlet or how she could have gotten out of her bed after such major abdominal surgery. More than a few industry wags have suggested that the whole episode was a publicity stunt to build up anticipation for the film."}.
The content of Benjack-clipping-actress is Benjack-clipping-actress-text.
Understand "actress/disappears" as Benjack-clipping-actress when the location is in the benjack-realm.

Benjack-clipping-body is a benjack-clipping. 
The title of Benjack-clipping-body is "Body Found".
The list of text called Benjack-clipping-body-text is always {"BODY FOUND[paragraph break]Police investigators report the discovery of a headless torso on the western shore of Block Island and are seeking public assistance in determination of the identify of the deceased.[paragraph break]The headless, limbless corpse was discovered yesterday afternoon by Christopher Smythe, a local resident, who was checking his lobster pots. [quotation mark]It came up slowly on the winch and when it got to the surface, I knew there was a problem. I got everyone under it, and we swung it onto the deck and weren[apostrophe]t sure what to do with it, so we put it on ice and headed back to harbor.[quotation mark][paragraph break]The body is described as male, caucasian, and likely forty to fifty years old. The Washington County Medical Examiner, Dr. Lewis Ivar, places the time of death somewhere between two and three days prior to discovery. Dr. Ivar commented, [quotation mark]there were two notable findings: first, a series of discolorations, about four inches in diameter and arranged in a line across the back and wrapping around upward under the axilla; secondly, the presence of a tattoo across the chest. The design of the tattoo is unusual, a skull and below it a phrase in French.[quotation mark] The coroner[apostrophe]s office is hopeful that the unique tattoo will aid them in identification of the victim."}.
The content of Benjack-clipping-body is Benjack-clipping-body-text.
Understand "body/found" as Benjack-clipping-body when the location is in the benjack-realm.

Benjack-clipping-convict is a benjack-clipping. 
The title of Benjack-clipping-convict is "Watery Fate for Convict".
The list of text called Benjack-clipping-convict-text is always {"It looks like the icy hand of justice caught up to escaped murderer Gustave Dellorto earlier today, when his body was recovered at low tide from the Execution Rocks lighthouse in the Long Island Sound.[paragraph break]Leslie Stovebow, the lighthouse keeper who resides in a small residence at the base of the tower, discovered the body this morning as the tide went out. The body was still clad in the striped uniform of the Sing Sing Prison from which he escaped last night.[paragraph break]Mamaroneck, NY police raced against time to remove the body from where it had become lodged in the boulders before the time came back in, submerging the rocks. They successfully identified the body by confirming the number on the uniform matched that of the escaped killer. It is not clear why Dellorto chose to flee to the island, but police suspect he was hoping to murder the lighthouse keeper and go to ground there until his trail grew cold.[paragraph break]Dellorto was convicted of three cases of first degree murder in the winter of 1951, including one G-man, and was suspected of homicide in seven additional cases. It is believed that his crimes were connected to organized crime. He was sentenced to capital punishment, but pardoned after appeal two years ago by Governor Dewey.[paragraph break]Execution Rocks inherits its name from the colonial period, where legend goes that disobedient slaves were shackled at low tide, and served as examples for others, being left there to slowly drown in the pounding waves. This story is considered apocryphal by most, but today, the lighthouse earned its name.[paragraph break][one of][benjack-but-wait-theres-more][or][stopping][paragraph break]CORRIGENDUM[paragraph break]Gustave Dellorto, who escaped from Sing Sing prison earlier this month, was arrested in Detroit, Michigan, yesterday leaving in his wake a fresh series of murders committed during a two-week spree across several states. It was previously reported in error that he had died by drowning in the Long Island Sound, but the body recovered in that incident is now known to be that of Francis Dapper, age 19 of Larchmont, New York, who had been working at the Purdue Island Yacht Club the evening that Gustave escaped. One of the club launches, which had been brought ashore for the winter, was discovered missing later that week. Police believe that it was probably used by Dellorto to reach the Execution Rocks lighthouse, where he abandoned his victim[apostrophe]s body, after swapping clothes to fake his own death in an attempt to evade capture."}.
The content of Benjack-clipping-convict is Benjack-clipping-convict-text.
Understand "watery/fate/convict/for" as Benjack-clipping-convict when the location is in the benjack-realm.

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
Understand "boat/wreck/sable/island" as Benjack-clipping-sable when the location is in the benjack-realm.

Benjack-clipping-orphan is a benjack-clipping. 
The title of Benjack-clipping-orphan is "Orphan Survives".
The list of text called Benjack-clipping-orphan-text is always {"Orphan Survives Boat Collision, New York[one of][benjack-orphan-fakeout][or][stopping][line break]City Police Frogman Dies Horribly.[paragraph break]Six-year-old Samantha Monteleone was thought lost earlier today after The Knickerbocker, a commercial touring boat with 230 persons aboard, came to an abrupt stop just south of Battery Park. The child was later found trapped below decks, but only after New York City Police Department Frogman Reginald Foster died in the search and rescue operation.[paragraph break]Forty of the passengers this morning were orphans in the first, second, and third grade at the Tuckeridge Home for Orphans in Yonkers, New York. They and their chaperones from the orphanage were enjoying the boat ride around Manhattan, many of them crowded along the starboard bow railing to view the Statue of Liberty, when the 2500 tonne vessel came to an immediate halt in open water.[paragraph break]Many passengers were thrown to the deck, and one orphan reported seeing Samantha go forward over the railing. Chaperones were able to locate all other children, and a shipwide search was organized while the ship returned to its berth on Pier 82. During the return to the dock, the crew swept the ship twice, but were unable to find they girl.[paragraph break]Meanwhile, NYPD frogmen were dispatched to position of the stalled ship using landmark bearings, putting them about a quarter mile south-west of Governors Island. The first vessels upon the scene reported no evidence of debris that would have supported the possibility of an earlier collision and no maritime accidents were witnessed this morning along this heavily trafficked route connecting Manhattan to the Atlantic. ","According to the coast guard, no ships have issued distress calls and none are known to be overdue in ports around New York City.[paragraph break]According to NYPD Frogman Unit Captain Peter Pisar, his ten man team began a standard search operating from two support barges, which arrived on the scene one within a half-hour, and the other near the one hour mark. Despite unusually poor visibility and brisk currents, the search proceeded normally until just before noon, when Sargent Foster’s air hose was hoisted to a barge, bringing with it only the upper half of the diving suit.[paragraph break][quotation mark]You know there’s a problem when the winch doesn’t make the usual sound.[quotation mark] said Jobber Thomson, one of Foster’s squad. [quotation mark]It was just the top part of the suit, from the armpits up. When we opened the helmet, you should have seen the look on his face. Nothing got to Reggie, but I think he died of fright before whatever was down there cut him to pieces.[quotation mark][paragraph break]The NYPD has not release a statement at this time, but officers on the scene speculated that officer Foster might have come into contact with a rotating propeller, although he was working on the bottom the Anchorage Channel, at an average depth of greater than fifty feet.[paragraph break]The orphan, Samantha, was found in the early evening cowering in a normally sealed bilge section of the ship. Perry Sylvester, the director of the Tuckeridge Home for Orphans described the girl as [quotation mark]white as a sheet and catatonic, shivering in the dark, her eyes more white than pupil.[quotation mark] Samantha was taken to the the Rosedale Psychiatric Center in White Plains, where she is recovering."}.
The content of Benjack-clipping-orphan is Benjack-clipping-orphan-text.
Understand "orphan/orphans/survive/survives" as Benjack-clipping-orphan when the location is in the benjack-realm.

To say benjack-orphan-fakeout:
	say "Finally, a feel-good story.[paragraph break]You unfold the article to give it a full perusal.";
	wait for any key; 
	say "Orphan Survives Boat Collision, New York";
	wait for any key.

Benjack-clipping-boardwalk is a benjack-clipping. 
The title of Benjack-clipping-boardwalk is "Boardwalk Tragedy".
The list of text called Benjack-clipping-boardwalk-text is always {"The hunt is underway for two recent highschool graduates last seen on the beach in Lavalette, New Jersey. The youths, Vinny Bernaducci, age 19 of the Bronx, New York, and Sandra Thomas, age 18, of Perth, Australia, disappeared last evening after attending a clambake with friends on the beach.[paragraph break]Ocean County police detective Roger Gutterman who interviewed other teenagers on the beach that evening said that the two missing teens were last seen walking off towards a section of the boardwalk favored by youth, just down the beach towards Seaside Heights.[paragraph break]Investigators have identified the likely location, which contained articles of clothing and other materials that the couple was likely to have used that evening. They were puzzled, however, about the possible significance of a wide furrow leading from the ocean’s edge to that spot under the boardwalk.[paragraph break]Detective Guttman described that furrow as [quotation mark]wide, maybe ten or fifteen feet across, pretty shallow, and flanked by tufts of moist sand.[quotation mark] He also said, [quotation mark]The only thing I’ve ever seen like that was on vacation -- one evening I saw sea turtles hauling themselves up the beach to lay their eggs. It was kind of like that, except much, much bigger.[quotation mark]"}.
The content of Benjack-clipping-boardwalk is Benjack-clipping-boardwalk-text.
Understand "boardwalk/tragedy" as Benjack-clipping-boardwalk when the location is in the benjack-realm.

Benjack-clipping-hargreaves is a benjack-clipping. 
The title of Benjack-clipping-hargreaves is "hargreaves".
The list of text called Benjack-clipping-hargreaves-text is always {"WILSON HARGREAVES, REMEMBERED[paragraph break]Lieutenant Wilson Hargreaves, former Officer-in-Charge of the Winslet Point Lighthouse, was laid to rest today in the Restful Meadows Cemetery in Winksboro, Maine. Devoted husband of Delores, proud father of Katie and Linda, he was fifty-eight. A memorial service was held in Winksboro Town Hall, led by mayor Thomas Snideworth. The mayor praised Wilson’s service to the community, both his constant watchfulness at the Lighthouse and his many projects involving town youth. The major also consoled the grieving family regarding his extraordinarily gruesome death."}.
The content of Benjack-clipping-hargreaves is Benjack-clipping-hargreaves-text.
Understand "hargreaves/wilson/remembered/obituary" as Benjack-clipping-hargreaves when the location is in the benjack-realm.

Benjack-clipping-9 is a benjack-clipping. 
The title of Benjack-clipping-9 is "Seinfeld Actor Dies".
The list of text called Benjack-clipping-9-text is always {"Jason Alexander, who plays George Costanza on the hit television comedy [italic type]Seinfeld[roman type] is presumed dead along with eighteen others, fourteen passengers and five crew, who were lost at sea last Friday aboard a commercial fishing boat, Hogar's Wrath, operating out of Montauk, New York. Communication was lost with the [quotation mark]head[quotation mark] boat two hours after its departure and it was declared missing when it failed to return to the dock later that day. A search effort was delayed by sudden squalls. The ship was discovered listing heavily off the southern coast of Greenland a day later by military aircraft operating out of Thule Air Force Base.[paragraph break]The boat had been chartered that day by a group known as [quotation mark]The Fishing Elvises[quotation mark], a troupe of Elvis impersonators who are also accomplished fishermen. Two years ago, on a similar voyage, the leader of the troupe, Dan Gropmeier, landed a record 400-pound black ruffled flounder. This year, due to illness, Dan was unable to join his troupe, and the position was filled at the last minute by Mr. Alexander.[paragraph break]No survivors were found aboard the vessel when it was boarded and no records were found that explain how the ship got so far of course in such a short period of time. Searchers did report one unusual finding though: the boat's coolers, which store the day's catch, were full, but not of the kinds of fish typically caught in waters around Long Island.[paragraph break]Many of the fish in the hold were benthic, or deep water species. According to Phyllis Falcone of the SUNY Stonybrook, [quotation mark]those fish live in dark and frigid waters more than a mile deep. I can't even explain how they managed to haul them up to the surface without them exploding from decompression. More over, I don't think any of them are native to the Atlantic. I can't even begin to classify the more primative-looking specimens. Some have gigantic eyes, jaws bristling with row upon row of needle-like teeth, and ghostly, glowing skin; a few have rudimentary legs and other claw-like appendages or perhaps spinnerets like a spider, others are segmented like insects and are crowned with rows of undulating tentacles. We'll be working on this for a while.[quotation mark][paragraph break][quotation mark]It's a real tragedy for all of us,[quotation mark] said castmate Jerry Seinfeld, who spoke to the press along with co-star Julia Luis Dreyfus. [quotation mark]Jason didn't even like fishing -- it wasn't like him at all. But he gave me a call that morning and said he just felt like going fishing that day, so that's what he did. Go figure. I guess it was a fluke.[quotation mark]"}.
The content of Benjack-clipping-9 is Benjack-clipping-9-text.
Understand "seinfeld/actor/dies/george/costanza" as Benjack-clipping-9 when the location is in the benjack-realm

Benjack-clipping-10 is a benjack-clipping. 
The title of Benjack-clipping-10 is "Red Tide".
The list of text called Benjack-clipping-10-text is always {"An Exxon-Mobil survey vessel has determined the cause of the [quotation mark]red tide[quotation mark] affecting the Atlantic Coast of the United States: an underwater volcano off the coast of Georgia. For the last week, coastal waters from North Carolina to New York have been plagued by rotting sea life that has put an end to beachgoing, rendered some sealanes unnavigable, and has been an economic disaster for the coastal seafood industry.[paragraph break]A week ago, red-tinged sand and surf along Delaware beaches led to a declaration of a [quotation mark]red tide[quotation mark], closure of beaches in Delaware, Maryland, and Virginia, and a moratorium on seafood harvesting in the affected region. Red tides occurs when certain planktons bloom, lending their red color to the water. Over time, this depletes oxygen from the water, killing sea life. Certain red tide organisms are also toxic when consumed. However, water sampling conducted in the region soon demonstrated no red tide plankton -- more puzzling, no plankton at all. This immediately alarmed scientists, as plankton are the basis of the oceanic food chain and indeed responsible for most of the oxygen in the air that we breathe.[paragraph break]","The Exxon-Mobil petroleum survey vessel Mindy Lou was surveying about 150 miles off the coast of Georgia earlier this week, when a probe dragged behind the ship just above the ocean floor was lost. An investigation of this area led to discovered of a geothermal vent, similar to those found along the [quotation mark]ring of fire[quotation mark] in the Pacific Ocean. The crew determined that underwater volcano located near the edge of the continental shelf is spewing the viscous red material that has found its way into currents flowing northward along the US East Coast.[paragraph break]The vessel obtained a few photographs of the vent, but due to their limited equipment and the superheated water around the vent, the images are poor: relatively far away through dark and cloudy water. What can be seen are a series of conical [quotation mark]smoke stacks[quotation mark], which spiral up from the ocean floor, terminating in splayed openings that belch magma and volcanic gases. At this time, the Exxon-Mobil has declined to release these images.[paragraph break]","Additional research vessels will bring more advanced equipment to the area in the next several days to help understand the phenomenon, which scientists say is unprecedented in this location. Meanwhile, the Mindy Lou has remained in the area using its sonar to map the outline of the fissure that is forming. In the last day, the vent has extended northward like a scar along the ocean floor, enlarging from two to four nautical miles in a single day.[paragraph break]Samples of the red fluid collected near the source of the eruption have been distributed to several laboratories including the US CDC. The initial report is that the effluent is not remarkable, its composition being typical of volcanic outgassings. The die off of fish and other organisms in the Atlantic is attributed to dissolved hydrogen sulfide, a toxic gas, which is present in high amounts near the vent."}.
The content of Benjack-clipping-10 is Benjack-clipping-10-text.
Understand "red/tide" as Benjack-clipping-10 when the location is in the benjack-realm.



Benjack-clipping-dakar is a benjack-clipping.
The Benjack-clipping-dakar is in benjack-scrap-19.
The title of Benjack-clipping-dakar is "INS Dakar (Israel), 25 January".
The list of text called Benjack-clipping-dakar-text is always {"[fixed letter spacing][line break]DOSSIER PENTACLE DOSSIER DEEP1 DOSSIER CATACON[line break]25 JAN 1968 1601Z AUTHENTICATED RMX-998-LPO[line break]SIGINT ATHENS REPORTS ENCRYPTED CW DISTRESS[line break]SIGNAL FROM ISRAEL NAVY DIESEL-ELECTRIC[line break]SUBMARINE DAKAR STARTING 1001Z ENDING 1003Z TODAY.[line break]NO FIX BY RADIOGONIOMETRY. VESSEL LAST OBSERVED[line break]BY TRAWLER AT 2301Z ON 24 JAN 1968 AT 35.005N[line break]BY 26.954E APPROXIMATE HEADING 135 AT 7 KNOTS[line break]BELOW PERISCOPE DEPTH WITH FLOOR AT 3000M. NO[line break]OTHER SUBMARINES WITHIN 100NM AT THAT TIME. NO[line break]HYDROPHONIC EVENTS REPORTED BY UK WESTERN[line break]SOVEREIGN BASE AREA CYPRUS. LOSS OF VESSEL[line break]CONFIRMED BY IDF AT 1430Z. WILL DELAY SEARCH[line break]UNTIL 2200Z 25 JAN 1968. EOM.[variable letter spacing]"}.
The content of Benjack-clipping-dakar is Benjack-clipping-dakar-text.
Understand "dakar/ins/israel" as Benjack-clipping-dakar when the location is in the benjack-realm.

Benjack-clipping-minerve is a benjack-clipping.
The Benjack-clipping-minerve is in benjack-scrap-19. 
The title of Benjack-clipping-minerve is "S647 (France), 27 January ".
The list of text called Benjack-clipping-minerve-text is always {"[fixed letter spacing][line break]DOSSIER PENTACLE DOSSIER DEEP1 DOSSIER CATACON[line break]27 JAN 1968 1800Z AUTHENTICATED TTU-851-YAZ[line break]NATO BRUSSELS MILCOORD FRANCE CONFIRMS LOSS [line break]OF FRENCH DAPHNE-CLASS DIESEL-ELECTRIC[line break]SUBMARINE DESIGNATED MINERVE NUMBER S647 AT[line break]0830Z TODAY. VESSEL WAS RETURNING TO PORT[line break]IN TOULON FRANCE UNDER SNORKEL MAKING 8 KNOTS[line break]ON A NORTHERLY HEADING. LAST CONTACT RELAYED[line break]VIA BR1150 ATLANTIC ON N AFRICAN ELINT REPORTED[line break]SITUATION NOMINAL. FLOOR DEPTH 1100-1700M. NO[line break]OTHER UNACCOUNTED SUBMARINES WITHIN 100NM. NO[line break]HYDROPHONIC EVENTS REPORTED. FRENCH NAVY HAS[line break]COMMENCED SEARCH 5 NM EAST OF ESTIMATED LOSS[line break]ZONE. EOM.[variable letter spacing]"}.
The content of Benjack-clipping-minerve is Benjack-clipping-minerve-text.
Understand "minerve/s647/s-647" as Benjack-clipping-minerve when the location is in the benjack-realm.

Benjack-clipping-k129 is a benjack-clipping. 
The Benjack-clipping-k129 is in benjack-scrap-19.
The title of Benjack-clipping-k129 is "K-129 (Soviet), 8 March".
The list of text called Benjack-clipping-k129-text is always {"[fixed letter spacing][line break]DOSSIER PENTACLE DOSSIER DEEP1 DOSSIER CATACON[line break]8 MAR 1968 1800Z AUTHENTICATED SDX-851-AAW[line break]POPEYETSM ADVISES LWAH OF SOVIET GOLF II CLASS[line break]DIESEL-ELECTRIC PROJECT 629 STRATEGIC BALLISTIC[line break]SUBMARINE DESIGNATION K-129 HULL NUMBER 722.[line break]USS FLASHER (SSN-613 PERMIT CLASS) INTERCEPTED[line break]AND DREW OFF ACCOMPANYING VICTOR II CLASS [line break]NUCLEAR ATTACK SUBMARINE ONE HOUR PRIOR TO[line break]CONTACT. SOSUS CONFIRMS HYDROPHONOLOGY[line break]CONSISTENT WITH IMPLOSION AT 40N BY 180 AND[line break]QUOTE SOUNDS LIKE OUTER SPACE MOVIE ALIENS[line break]UNQUOTE AT 1436Z TODAY. CARRIER GROUP HANCOCK EN[line break]ROUTE FOR INTERDICTION AND MARKER PLACEMENT TO[line break]FACILITATE SALVAGE WHEN CLEAR.[variable letter spacing]"}.
The content of Benjack-clipping-k129 is Benjack-clipping-k129-text.
Understand "k129/k-129" as Benjack-clipping-k129 when the location is in the benjack-realm.

Benjack-clipping-scorpion is a benjack-clipping. 
The Benjack-clipping-scorpion is in benjack-scrap-19.
The title of Benjack-clipping-scorpion is "USS Scorpion, 22 May".
The list of text called Benjack-clipping-scorpion-text is always {"[fixed letter spacing][line break]DOSSIER PENTACLE DOSSIER DEEP1 DOSSIER CATACON[line break]REVCO 217[line break]21 MAY 1968 1000Z AUTHENTICATED FOW-037-LOS[line break]SUBLANT REPORTS LOSS OF USS SCORPION (SSN-589)[line break]SKIPJACK CLASS U.S. NUCLEAR ATTACK SUBMARINE.[line break]LAST CONTACT VIA NAVCOMGR1 IN NEA MAKRI,[line break]GREECE AT 0020Z 20 MAY 1968 REPORTED PURSUIT OF[line break]NOVEMBER CLASS SOVIET SUBMARINE, THE INTENDED[line break]TARGET, EASTWARD AT 15 KNOTS DEPTH 350FT. MEDCAR[line break]COUNTERMEASURES WERE INSTITUTED IMMEDIATELY TO[line break]PROVIDE ACOUSTIC COVER FOR THE EVENT WHICH LASTED[line break]APPROXIMATELY 20 MINUTES.[variable letter spacing]"}.
The content of Benjack-clipping-scorpion is Benjack-clipping-scorpion-text.
Understand "uss/scorpion/ssn/SSN-589" as Benjack-clipping-scorpion when the location is in the benjack-realm.

Book 4 - New Actions

Part 1 - Magicks

Instead of answering benjack-Carol that "bottoms up":	try Benjack-bottomsupping.

Instead of answering benjack-Carol that "bottoms-up":	try Benjack-bottomsupping.

Benjack-bottomsupping is an action applying to nothing. Understand "bottoms-up" or "bottoms up" as Benjack-bottomsupping when the location is in the benjack-realm.

Check benjack-bottomsupping:
	if benjack-N1 is not happening:
		say "Nothing happens. Then again, you're not in the middle of a tea party, so what did you expect?";
		stop the action.
		
Carry out benjack-bottomsupping:
	increase the benjack-times_bestowed of yourself by one;
	if the benjack-times_bestowed of yourself is:
		-- 1:
			benjack-bottom1;
		-- 2:
			benjack-bottom2;
		-- 3:
			benjack-bottom3;
		-- 4:
			say "There's no more tea in the teapot.[paragraph break]";
			benjack-wrap-party.			
			
To benjack-bottom1:
	if the benjack-slithering-vomit-bladder-of-Katallakh contains something:
		say "Carol smiles and a slimy dark-green sac appears in front of you. [quotation mark]Well, here’s your stuff. Fair and square.[quotation mark][paragraph break]";
		move the benjack-slithering-vomit-bladder-of-Katallakh to M2F3;
		now the benjack-slithering-vomit-bladder-of-Katallakh is seen;
	if the mtw-teapot contains something:
		say "[quotation mark]What's this? Yech. Who puts stuff in a teapot anyhow?[quotation mark] asks Carol, pouring out [list of things enclosed by mtw-teapot with indefinite articles] on the floor before whipping up a batch of piping hot magical tea.[paragraph break]";
		repeat with item running through things enclosed by mtw-teapot:
			now item is in the location;
	say "As the last syllable rolls off your tongue, you sip the last dregs of some delicious warm tea from your cup (English Breakfast, some sugar, a bit of milk).[paragraph break]Looking around the table, the cups set before the toy creatures drain themselves although the creatures themselves do not budge.[paragraph break]At the head of the table, Carol up-ends her cup gracefully and relishes the tea.[paragraph break]As she sets her cup down and sighs with pleasure, a curious thing happens: both you and she glow perceptibly, as does the book over on the desk. It happens so briefly, that you almost miss it.[paragraph break][quotation mark]Feel any better?[quotation mark] asks Carol.[paragraph break][quotation mark]Why yes, in fact I do. A brisk cup of tea was just the thing,[quotation mark] you agree.[paragraph break][quotation mark]You can do the honors for the second cup! See this is fun![quotation mark] Carol slides great-uncle[apostrophe]s teapot over towards you.";
	now Benjack-clipping-body is in benjack-scrap-5;
	now benjack-teapot is nowhere;
	now the player carries mtw-teapot.

To benjack-bottom2:
	say "Again, the sweet taste of tea, this time with a dash of oil of bergamot and just a touch of sugar.[paragraph break]Odd you think, same teapot, but a different taste. But then you reason that is not any harder to accept than tea distributing itself magically around a table you are sharing with four stuffed animals and a ghost of some sort. Some things are just harder to accept than others.[paragraph break]As you set your cup back down on the table, you observe Carol sneaking a glance at her scrapbook. In that brief instant, both Carol and the book glow slightly, somewhat brighter than they did before. Your own skin pulses briefly with the same glow and you think that afterwards it maintains something of a numinous shine. This is really good tea. You feel great, and the worries of the day are fast disappearing.[paragraph break][quotation mark]I really liked that one![quotation mark] pipes Carol.[paragraph break][quotation mark]We aim to please,[quotation mark] you say, prompting her giggles.";
	now Benjack-clipping-convict is in benjack-scrap-5;
	now the player carries mtw-teapot.
	
To benjack-bottom3:
	say "That was unexpected. Flowery. Bit of an aftertaste.[paragraph break][quotation mark]Is this Jasmine?[quotation mark][paragraph break][quotation mark]It[apostrophe]s Crisp Hand Sew Mom.[quotation mark] Carol struggles with the pronunciation.[paragraph break][quotation mark]Chrysanthemum?[quotation mark] You offer.[paragraph break][quotation mark]Yes, that. Grand-uncle[apostrophe]s teapot knows all my favorites.[quotation mark][paragraph break]Not only are the two of you now glowing enough to cast shadows around the room, but you notice that little sparks of static electricity scintillating at your fingertips. You hold them up, [quotation mark]Carol, is this normal?[quotation mark][paragraph break][quotation mark]Oh yes, it[apostrophe]s wonderful, isn[apostrophe]t it?[quotation mark][paragraph break]You do feel wonderful.[paragraph break]The scrapbook pulses with energy.";
	now benjack-bigmirror is nowhere;
	now Benjack-clipping-sable is in benjack-scrap-5;
	now the player carries mtw-teapot;
	benjack-Carol slurps in 1 turn from now;
	benjack-Carol drains in 2 turn from now;
	benjack-Carol stretches in 3 turn from now.
	
At the time when benjack-Carol slurps:
	if benjack-N1 is happening:
		say "Carol slurps her remaining tea ceremoniously."
	
At the time when benjack-Carol drains:
	if benjack-N1 is happening:
		say "Carol drains the last few drops from her cup."
	
At the time when benjack-Carol stretches:
	if benjack-N1 is happening:
		say "Carol stands up and stretches, lightning arcing from tiny fist to tiny fist about her head.[paragraph break]";
		benjack-wrap-party.
	
To benjack-wrap-party:
	say "[quotation mark]Thanks for playing tea party, Aunt Naomi. You played it just the way Christabell taught me. She[apostrophe]d be very proud.[quotation mark][paragraph break]Before you can react, she waves at you, [quotation mark]I[apostrophe]ve got some things to do now. See you in a bit![quotation mark][paragraph break]Suddenly, you find yourself in the hallway.";
	try going south.

	

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

Benjack-KHing is an action applying to nothing. Understand "kwisatz haderach" as Benjack-KHing when the location is in the benjack-realm.

Check Benjack-KHing:
	if yourself is not benjack-spell_enabled:
		say "You did enjoy that book, didn't you?";
		stop the action;
	if the location does not enclose a benjack-runebook:
		say "You see no Book of Runes to destroy.";
		stop the action.
		
Carry out benjack-KHing:
	let R be a random benjack-runebook in the location;
	now R is unseen;
	now R is nowhere;
	say "You join your fists together and aim at the [R], and speak the invocation:  [quotation mark]kwisatz haderach[quotation mark]."

[The result of this then gets described in an after benjack-KHing, one for the binder, one for Naomi's book]

Part 2 - Actions of a most mundane nature

Chapter 1 - Jumping Out

Benjack-OutJumping is an action applying to one thing. Understand "jump out [a container]" or "jump out of [a container]" or "jump through [a container]" or "dive out [a container]" or "or dive through [a container]" as entering when benjack-denouement is happening and the location is M2F3.

Understand "flee" or "run away" or "suicide" or "commit suicide" or "jump to my death" as jumping when benjack-denouement is happening and the location is M2F3.

Book 5 - Replace Defaults

Part 1 - Actions

Instead of examining yourself when the location is in the benjack-realm:
	say "This little weekend getaway with Peter has done you some good. So relaxing.".
	
Part 2 - Library Responses

To say benjack-BTRR:
	if the current interlocutor is benjack-Carol or the current  interlocutor is benjack-Christabell:
		say "[quotation mark][one of]Sorry? Didn't follow that,[or]Humph,[or]Uh-huh,[or]Really?[no line break][or]How interesting,[or]Hmm. What do you know?[no line break][or]You don't say,[or]Well,[or]I haven’t even given it much thought,[or]Interesting,[or]Is that a fact?[no line break][or]Well, you learn something new every day,[in random order][quotation mark] says [current  interlocutor].[no line break]";
	 otherwise:
		if the location is DAN8:
			if benjack-Christabell is in DAN8:
				now the current interlocutor is benjack-Christabell;
			otherwise:
				say "[benjack-talk-to-whom].";
		otherwise:
			if benjack-Carol is in M2F3:
				now the current interlocutor is benjack-Carol;
			otherwise:
				say "[benjack-talk-to-whom]."
				
To say benjack-BARR:
	if the current interlocutor is benjack-Carol or the current interlocutor is benjack-Christabell:
		say "[current interlocutor] says, [quotation mark][one of]Sorry, I don't know[or]I don't have a good answer for that one[or]Good question[no line break][or]That's an interesting question[or]I wish I knew[or]I have wondered that myself[in random order].[quotation mark]";
	 otherwise:
		if the location is DAN8:
			if benjack-Christabell is in DAN8:
				now the current interlocutor is benjack-Christabell;
			otherwise:
				say "[benjack-talk-to-whom].";
		otherwise:
			if benjack-Carol is in M2F3:
				now the current interlocutor is benjack-Carol;
			otherwise:
				say "[benjack-talk-to-whom]."

To say benjack-talk-to-whom:
	say "Who are you talking to? No one is here".
	
Book 6 - TMWNMTK
[This section should be NOT FOR RELEASE in the final game -- but necessary for beta-testers to play/test]

Part 1 - Additional Set Up 

The player holds a flower. "A small decaying daffodil."

Part 2 - Temporary Rooms And Paths

MGR1 is south of M2F2. The printed name of MGR1 is "Temporary MGR1". The description of MGR1 is "For testing purposes, this stand-in for MGR1 has been re-mapped to allow the player to walk between the hillside (south) and hall outside the nursery (north)."

The player is in MGR1.

The printed name of M2F2 is "Hall Outside the Nursery". The description of M2F2 is "This is the hallway outside the nursery. No assumptions are made here except that there is an exit north to the nursery."

The brick is a thing in MGR1.
The orange is a thing in MGR1.
The golf ball is a thing in MGR1.
The bowling pin is a thing in MGR1.
The jade frog is a thing in MGR1.



Part 3 - Items that will come from other authors

The mtw-teapot is an open opaque container in MGR1. The description of the mtw-teapot is "A white, ceramic teapot." The printed name of the mtw-teapot is "teapot". Understand "teapot" or "ceramic" or "kettle" as mtw-teapot.

Commentarying is an action out of world. Understand "commentary" as commentarying.

Report Commentarying:
	say commentary of the location.
	

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
		now C is in benjack-scrap-5.
		

[to simulate marking the baby]
Branding is an action applying to nothing. Understand "brand" as branding.

Carry out branding:
	say "Now the baby is branded. Yee haw!";
	now yourself is benjack-baby_marked.

[So we can instantly jump forward scenes to test things]
Scenejumping is an action applying to nothing. Understand "scenejump" as scenejumping.
Carry out scenejumping:
	if benjack-R0 has not happened:
		move the player to DAN8;
		say "[bold type]/ JUMP from nothing to R0 /[roman type][paragraph break]";
	if benjack-R0 is happening:
		now benjack-Christabell is candid;
		now the player carries mtw-teapot;
		move the player to M2F3; [triggers N1]
		say "[bold type]/ JUMP from R0 to N1 /[roman type][paragraph break]";
	otherwise if benjack-N1 is happening:
		move the player to M2F2;  [triggers to end N1]
		increase the benjack-times_bestowed of yourself by one;
		move the player to DAN8; [triggers to start R1]
		say "[bold type]/ JUMP from N1 to R1 /[roman type][paragraph break]";
	otherwise if benjack-R1 is happening:
		now yourself is benjack-spell_enabled;
		move the player to MGR1; [triggers to end R1]
		move the player to M2F3; [trigger to start N2]
		say "[bold type]/ JUMP from R1 to N2 /[roman type][paragraph break]";
	otherwise if benjack-N2 is happening:
		now yourself is benjack-baby_marked;
		move the player to MGR1; [triggers to end N2]
		move the player to DAN8; [trigger to start R2]
		say "[bold type]/ JUMP from N2 to R2 /[roman type][paragraph break]";
	otherwise if benjack-R2 is happening:
		move the player to MGR1; [triggers end of R2]
		move the player to M2F3; [triggers start of N3]
		say "[bold type]/ JUMP from R2 to N3 /[roman type][paragraph break]";
	otherwise if benjack-N3 is happening:
		now benjack-window is open;
		say "[bold type]/ JUMP from N3 to Denouement /[roman type][paragraph break]".
	
[assuming these are entered at beginning, prior to R0]		
test jump-r0 with "scenes on /scenejump/scenes off".
test jump-n1 with "scenes on /scenejump/scenejump/scenes off".
test jump-r1 with "scenes on /scenejump/scenejump/scenejump/scenes off".
test jump-n2 with "scenes on /scenejump/scenejump/scenejump/scenejump/scenes off".
test jump-r2 with "scenes on /scenejump/scenejump/scenejump/scenejump/scenejump/scenes off".
test jump-n3 with "scenes on /scenejump/scenejump/scenejump/scenejump/scenejump/scenejump/scenes off".
test jump-denouement with "scenes on /scenejump/scenejump/scenejump/scenejump/scenejump/scenejump/scenejump/scenes off".

roomDumping is an action out of world.
Understand "dumproom" as roomDumping.

Carry out roomdumping:
	repeat with item running through visible things in the location:
		say "[bold type][item]:[roman type][line break]";
		try examining item.
 
Part 5 - Tests

Chapter 1 - Nursery Descriptions

test nursery-desc with "scenejump / scenejump / dumproom / scenejump / scenejump / dumproom/ dumproom / scenejump / scenejump / dumproom / dumproom / scenejump / dumproom / dumproom".
	


