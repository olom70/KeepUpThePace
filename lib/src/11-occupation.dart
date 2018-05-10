import '00-compendium.dart' as compendium;

class Occupation extends compendium.Compendium {

  final Map metValue  = const <int, double>{11003 : 2.3
  ,11006 : 3.0
  ,11010 : 4.0
  ,11015 : 2.0
  ,11020 : 2.3
  ,11030 : 6.0
  ,11035 : 2.0
  ,11038 : 2.5
  ,11040 : 4.3
  ,11042 : 7.0
  ,11050 : 8.0
  ,11060 : 8.0
  ,11070 : 4.0
  ,11080 : 5.3
  ,11090 : 5.0
  ,11100 : 5.5
  ,11110 : 6.3
  ,11115 : 2.5
  ,11120 : 4.0
  ,11125 : 2.3
  ,11126 : 3.8
  ,11128 : 2.0
  ,11130 : 3.3
  ,11135 : 1.8
  ,11145 : 7.8
  ,11146 : 4.8
  ,11147 : 2.0
  ,11170 : 2.8
  ,11180 : 3.5
  ,11190 : 4.3
  ,11191 : 4.3
  ,11192 : 4.5
  ,11195 : 3.8
  ,11210 : 3.5
  ,11220 : 1.3
  ,11240 : 8.0
  ,11244 : 6.8
  ,11245 : 8.0
  ,11246 : 9.0
  ,11247 : 3.5
  ,11248 : 5.0
  ,11249 : 7.0
  ,11250 : 17.5
  ,11260 : 5.0
  ,11262 : 8.0
  ,11264 : 4.5
  ,11266 : 8.0
  ,11370 : 4.5
  ,11375 : 4.0
  ,11378 : 1.8
  ,11380 : 7.3
  ,11381 : 4.3
  ,11390 : 7.3
  ,11400 : 5.8
  ,11410 : 3.8
  ,11413 : 3.0
  ,11415 : 4.0
  ,11418 : 3.3
  ,11420 : 3.0
  ,11430 : 3.0
  ,11450 : 5.0
  ,11472 : 1.8
  ,11475 : 2.8
  ,11476 : 4.5
  ,11477 : 6.5
  ,11480 : 4.3
  ,11482 : 2.5
  ,11485 : 4.0
  ,11490 : 7.5
  ,11495 : 12.0
  ,11500 : 2.5
  ,11510 : 4.5
  ,11514 : 3.3
  ,11516 : 3.0
  ,11520 : 2.0
  ,11525 : 2.5
  ,11526 : 2.5
  ,11527 : 1.3
  ,11528 : 4.0
  ,11529 : 2.3
  ,11530 : 2.0
  ,11540 : 7.8
  ,11550 : 8.8
  ,11560 : 5.0
  ,11570 : 6.5
  ,11580 : 1.5
  ,11585 : 1.5
  ,11590 : 2.5
  ,11593 : 2.8
  ,11600 : 3.0
  ,11610 : 3.0
  ,11615 : 4.5
  ,11620 : 3.5
  ,11630 : 4.5
  ,11708  : 5.3
  ,11710 : 8.3
  ,11720 : 2.3
  ,11730 : 2.5
  ,11740 : 1.8
  ,11750 : 2.5
  ,11760 : 3.5
  ,11763 : 2.0
  ,11765 : 4.0
  ,11766 : 6.5
  ,11770 : 1.3
  ,11780 : 6.3
  ,11790 : 8.0
  ,11791 : 2.0
  ,11792 : 3.5
  ,11793 : 4.3
  ,11795 : 3.5
  ,11796 : 3.0
  ,11797 : 3.8
  ,11800 : 4.5
  ,11805 : 3.5
  ,11810 : 4.8
  ,11820 : 5.0
  ,11830 : 6.5
  ,11840 : 7.5
  ,11850 : 8.5
  ,11870 : 3.0 };

  final Map metDescription  = const <int, String>{11003 : "active workstation, treadmill desk, walking"
  ,11006 : "airline flight attendant"
  ,11010 : "bakery, general, moderate effort "
  ,11015 : "bakery, light effort "
  ,11020 : "bookbinding "
  ,11030 : "building road, driving heavy machinery "
  ,11035 : "building road, directing traffic, standing "
  ,11038 : "carpentry, general, light effort"
  ,11040 : "carpentry, general, moderate effort"
  ,11042 : "carpentry, general, heavy or vigorous effort"
  ,11050 : "carrying heavy loads (e.g., bricks, tools) "
  ,11060 : "carrying moderate loads up stairs, moving boxes 25-49 lbs "
  ,11070 : "chambermaid, hotel housekeeper, making bed, cleaning bathroom, pushing cart "
  ,11080 : "coal mining, drilling coal, rock "
  ,11090 : "coal mining, erecting supports "
  ,11100 : "coal mining, general "
  ,11110 : "coal mining, shoveling coal "
  ,11115 : "cook, chef"
  ,11120 : "construction, outside, remodeling, new structures (e.g., roof repair, miscellaneous "
  ,11125 : "custodial work, light effort (e.g., cleaning sink and toilet, dusting, vacuuming, light cleaning)"
  ,11126 : "custodial work, moderate effort (e.g., electric buffer, feathering arena floors, mopping, taking out trash, vacuuming)"
  ,11128 : "driving delivery truck, taxi, shuttle bus, school bus"
  ,11130 : "electrical work (e.g., hook up wire, tapping-splicing)"
  ,11135 : "engineer (e.g., mechanical or electrical)"
  ,11145 : "farming, vigorous effort (e.g., baling hay, cleaning barn)"
  ,11146 : "farming, moderate effort (e.g., feeding animals, chasing cattle by walking and/or horseback, spreading manure, harvesting crops)"
  ,11147 : "farming, light effort (e.g., cleaning animal sheds, preparing animal feed)"
  ,11170 : "farming, driving tasks (e.g., driving tractor or harvester) "
  ,11180 : "farming, feeding small animals "
  ,11190 : "farming, feeding cattle, horses "
  ,11191 : "farming, hauling water for animals, general hauling water"
  ,11192 : "farming, taking care of animals (e.g., grooming, brushing, shearing sheep, assisting with birthing, medical care, branding), general"
  ,11195 : "farming, rice, planting, grain milling activities"
  ,11210 : "farming, milking by hand, cleaning pails, moderate effort "
  ,11220 : "farming, milking by machine, light effort "
  ,11240 : "fire fighter, general "
  ,11244 : "fire fighter, rescue victim, automobile accident, using pike pole"
  ,11245 : "fire fighter, raising and climbing ladder with full gear, simulated fire suppression"
  ,11246 : "fire fighter, hauling hoses on ground, carrying/hoisting equipment, breaking down walls, wearing full gear "
  ,11247 : "fishing, commercial, light effort"
  ,11248 : "fishing, commercial, moderate effort"
  ,11249 : "fishing, commercial, vigorous effort"
  ,11250 : "forestry, ax chopping, very fast, 1.25 kg axe, 51 blows/min, extremely vigorous effort "
  ,11260 : "forestry, ax chopping, slow, 1.25 kg axe, 19 blows/min, moderate effort"
  ,11262 : "forestry, ax chopping, fast, 1.25 kg axe, 35 blows/min, vigorous effort"
  ,11264 : "forestry, moderate effort (e.g., sawing wood with power saw, weeding, hoeing)"
  ,11266 : "forestry, vigorous effort (e.g., barking, felling, or trimming trees, carrying or stacking logs, felling trees, planting seeds, sawing lumber by hand )"
  ,11370 : "furriery "
  ,11375 : "garbage collector, walking, dumping bins into truck"
  ,11378 : "hairstylist (e.g., plaiting hair, manicure, make-up artist)"
  ,11380 : "horse grooming, including feeding, cleaning stalls, bathing, brushing, clipping, longeing and exercising horses."
  ,11381 : "horse, feeding, watering, cleaning stalls, implied walking and lifting loads"
  ,11390 : "horse racing, galloping "
  ,11400 : "horse racing, trotting "
  ,11410 : "horse racing, walking "
  ,11413 : "kitchen maid"
  ,11415 : "lawn keeper, yard work, general"
  ,11418 : "laundry worker"
  ,11420 : "locksmith "
  ,11430 : "machine tooling (e.g., machining, working sheet metal, machine fitter, operating lathe, welding) light-to-moderate effort"
  ,11450 : "machine tooling, operating punch press, moderate effort"
  ,11472 : "manager, property"
  ,11475 : "manual or unskilled labor, general, light effort"
  ,11476 : "manual or unskilled labor, general, moderate effort"
  ,11477 : "manual or unskilled labor, general, vigorous effort"
  ,11480 : "masonry, concrete, moderate effort "
  ,11482 : "masonry, concrete, light effort"
  ,11485 : "massage therapist, standing "
  ,11490 : "moving, carrying or pushing heavy objects, 75 lbs or more, only active time (e.g., desks, moving van work) "
  ,11495 : "skindiving or SCUBA diving as a frogman, Navy Seal "
  ,11500 : "operating heavy duty equipment, automated, not driving "
  ,11510 : "orange grove work, picking fruit"
  ,11514 : "painting,house, furniture, moderate effort"
  ,11516 : "plumbing activities"
  ,11520 : "printing, paper industry worker, standing "
  ,11525 : "police, directing traffic, standing "
  ,11526 : "police, driving a squad car, sitting "
  ,11527 : "police, riding in a squad car, sitting "
  ,11528 : "police, making an arrest, standing "
  ,11529 : "postal carrier, walking to deliver mail"
  ,11530 : "shoe repair, general "
  ,11540 : "shoveling, digging ditches "
  ,11550 : "shoveling, more than 16 pounds/minute, deep digging, vigorous effort "
  ,11560 : "shoveling, less than 10 pounds/minute, moderate effort "
  ,11570 : "shoveling, 10 to 15 pounds/minute, vigorous effort "
  ,11580 : "sitting tasks, light effort (e.g., office work, chemistry lab work, computer work, light assembly repair, watch repair, reading, desk work)"
  ,11585 : "sitting meetings, light effort, general, and/or with talking involved (e.g., eating at a business meeting)"
  ,11590 : "sitting tasks, moderate effort (e.g., pushing heavy levers, riding mower/forklift, crane operation)"
  ,11593 : "sitting, teaching stretching or yoga, or light effort exercise class"
  ,11600 : "standing tasks, light effort (e.g., bartending, store clerk, assembling, filing, duplicating, librarian, putting up a Christmas tree, standing and talking at work, changing clothes when teaching physical education,standing)"
  ,11610 : "standing, light/moderate effort (e.g., assemble/repair heavy parts, welding,stocking parts,auto repair,standing, packing boxes, nursing patient care)"
  ,11615 : "standing, moderate effort, lifting items continuously, 10 – 20 lbs, with limited walking or resting"
  ,11620 : "standing, moderate effort, intermittent lifting 50 lbs, hitch/twisting ropes"
  ,11630 : "standing, moderate/heavy tasks (e.g., lifting more than 50 lbs, masonry, painting, paper hanging)"
  ,11708  : "steel mill, moderate effort (e.g., fettling, forging, tipping molds)"
  ,11710 : "steel mill, vigorous effort (e.g., hand rolling, merchant mill rolling, removing slag, tending furnace)"
  ,11720 : "tailoring, cutting fabric"
  ,11730 : "tailoring, general "
  ,11740 : "tailoring, hand sewing "
  ,11750 : "tailoring, machine sewing "
  ,11760 : "tailoring, pressing "
  ,11763 : "tailoring, weaving, light effort (e.g., finishing operations, washing, dyeing, inspecting cloth, counting yards, paperwork)"
  ,11765 : "tailoring, weaving, moderate effort (e.g., spinning and weaving operations, delivering boxes of yam to spinners, loading of warp bean, pinwinding, conewinding, warping, cloth cutting) "
  ,11766 : "truck driving, loading and unloading truck, tying down load, standing, walking and carrying heavy loads"
  ,11770 : "typing, electric, manual or computer "
  ,11780 : "using heavy power tools such as pneumatic tools (e.g., jackhammers, drills) "
  ,11790 : "using heavy tools (not power) such as shovel, pick, tunnel bar, spade"
  ,11791 : "walking on job, less than 2.0 mph, very slow speed, in office or lab area"
  ,11792 : "walking on job, 3.0 mph, in office, moderate speed, not carrying anything "
  ,11793 : "walking on job, 3.5 mph, in office, brisk speed, not carrying anything "
  ,11795 : "walking on job, 2.5 mph, slow speed and carrying light objects less than 25 pounds "
  ,11796 : "walking, gathering things at work, ready to leave "
  ,11797 : "walking, 2.5 mph, slow speed, carrying heavy objects more than 25 lbs"
  ,11800 : "walking, 3.0 mph, moderately and carrying light objects less than 25 lbs "
  ,11805 : "walking, pushing a wheelchair "
  ,11810 : "walking, 3.5 mph, briskly and carrying objects less than 25 pounds "
  ,11820 : "walking or walk downstairs or standing, carrying objects about 25 to 49 pounds "
  ,11830 : "walking or walk downstairs or standing, carrying objects about 50 to 74 pounds "
  ,11840 : "walking or walk downstairs or standing, carrying objects about 75 to 99 pounds "
  ,11850 : "walking or walk downstairs or standing, carrying objects about 100 pounds or over "
  ,11870 : "working in scene shop, theater actor, backstage employee "};

}
