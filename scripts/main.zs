recipes.addShaped(<quark:backpack>, [[<ore:leather>, <ore:leather>, <ore:leather>],[<ore:gemEmerald>, <comforts:sleeping_bag:*>, <ore:gemEmerald>], [<ore:leather>, <ore:leather>, <ore:leather>]]);

# Hide these
recipes.remove(<chargers:wireless_charger>);
recipes.remove(<chargers:charger:1>);
recipes.remove(<chargers:charger:2>);

<chargers:charger>.displayName = "Charger";

var a = <thaumcraft:vis_battery>;
var b = <thaumcraft:vis_generator>;
var c = <botania:rfgenerator>;

recipes.remove(<chargers:charger:0>);
recipes.addShaped(<chargers:charger:0>, [[a, b, a], [a, c, a], [a, b, a]]);

a = <ore:blockRedstone>;
b = <botania:manaresource:6>;
c = <bountifulbaubles:ringflywheel>.anyDamage();
var d = <ore:blockIron>;
var e = <animus:component>;

recipes.remove(<buildinggadgets:buildingtool>);
recipes.addShaped(<buildinggadgets:buildingtool>, [[a, e, a], [d, c, d], [a, b, a]]);

# Hide this
recipes.remove(<buildinggadgets:exchangertool>);

recipes.remove(<buildinggadgets:copypastetool>);

e = <thaumcraft:salis_mundus>;

recipes.addShaped(<buildinggadgets:copypastetool>, [[a, e, a], [d, c, d], [a, b, a]]);

e = <xreliquary:destruction_catalyst>;

recipes.remove(<buildinggadgets:destructiontool>);
recipes.addShaped(<buildinggadgets:destructiontool>, [[a, e, a], [d, c, d], [a, b, a]]);

e = <ore:blockEmerald>;
b = <chisel:temple:1>;

recipes.remove(<buildinggadgets:templatemanager>);
recipes.addShaped(<buildinggadgets:templatemanager>, [[d, e, d], [a, b, a], [d, e, d]]);

recipes.remove(<extrautils2:ingredients:13>);

// better leads
recipes.addShaped("extra_lead", <minecraft:lead>*2, [[<ore:string>, <ore:string>, null], [<ore:string>, <ore:itemClay>, null], [null, null, <ore:string>]]);

// mining ring
recipes.addShapeless(<magnetrings:magnet>, [<thaumcraft:baubles:1>, <minecraft:diamond_pickaxe>, <botania:lens:10>]);

recipes.addShapeless(<magnetrings:magnet:1>, [<thaumcraft:baubles:1>, <minecraft:diamond_sword>, <botania:lens:10>]);

recipes.addShapeless(<magnetrings:magnet:2>, [<thaumcraft:baubles:1>, <vanillatools:tool.bow_diamond>, <botania:lens:10>]);

recipes.addShapeless(<magnetrings:magnet:3>, [<magnetrings:magnet>, <magnetrings:magnet:1>, <magnetrings:magnet:2>]);

// until fix
recipes.remove(<botania:manasteelshears>);
recipes.remove(<botania:elementiumshears>);
