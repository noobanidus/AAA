import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

//recipes.addShaped(<quark:backpack>, [[<ore:leather>, <ore:leather>, <ore:leather>],[<ore:gemEmerald>, <comforts:sleeping_bag:*>, <ore:gemEmerald>], [<ore:leather>, <ore:leather>, <ore:leather>]]);

# Hide this just the wooden one
recipes.remove(<hooked:hook>);

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
recipes.addShaped("extra_lead", <minecraft:lead>*2, [[<ore:string>, <ore:string>, null], [<ore:string>, <minecraft:clay_ball>, null], [null, null, <ore:string>]]);

// mining ring
recipes.addShapeless(<magnetrings:magnet>, [<thaumcraft:baubles:1>, <minecraft:diamond_pickaxe>, <botania:lens:10>]);

recipes.addShapeless(<magnetrings:magnet:1>, [<thaumcraft:baubles:1>, <minecraft:diamond_sword>, <botania:lens:10>]);

recipes.addShapeless(<magnetrings:magnet:2>, [<thaumcraft:baubles:1>, <vanillatools:tool.bow_diamond>, <botania:lens:10>]);

recipes.addShapeless(<magnetrings:magnet:3>, [<magnetrings:magnet>, <magnetrings:magnet:1>, <magnetrings:magnet:2>]);

// wool
var shears = <minecraft:shears>.anyDamage().or(<botania:manasteelshears>.anyDamage()).or(<botania:elementiumshears>.anyDamage()).or(<vanillatools:tool.shears_stone>.anyDamage()).or(<vanillatools:tool.shears_diamond>.anyDamage()).or(<vanillatools:tool.shears_gold>.anyDamage()).or(<xreliquary:shears_of_winter>.anyDamage()).or(<thebetweenlands:syrmorite_shears>.anyDamage());

// wisdom wood charcoal
furnace.addRecipe(<minecraft:coal:1>, <wizardry:wisdom_wood_log>, 0.15);

recipes.addShapeless(<minecraft:string>*2, [<ore:blockWool>, shears.transformDamage(1)]);

// BOTANIA RUNES
var costTierOne = 5200;
var costTierTwo = 8000;
var costTierThree = 12000;

var manasteel = <ore:ingotManasteel>;
var manapowder = <ore:powderMana>;
var manadiamond = <ore:manaDiamond>;
var manapearl = <ore:manaPearl>;

var aquamarine = <ore:gemAquamarine>;
var aqua_vis = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]});

var cane = <ore:sugarcane>;

// Water rune
mods.botania.RuneAltar.removeRecipe(<botania:rune>*2);
mods.botania.RuneAltar.addRecipe(<botania:rune>*2, [manasteel, manapowder, aquamarine, aqua_vis, cane], costTierOne);

// Manabound book
var enchant = <enchantment:arctweaks:manabound>.makeEnchantment(1).makeTag() as IData;

var manabound_book = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 55 as short}]});

mods.botania.RuneAltar.addRecipe(manabound_book, [<botania:pump>, <minecraft:writable_book>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <arcanearchives:storage_raw_quartz>, <botania:rune:8>, <botania:specialflower>.withTag({type: "manastar"})], 100000);

// Compressed tools
c = <extrautils2:compressedcobblestone>;
d = <extrautils2:compressedcobblestone:1>;

var s = <ore:rodStone>;

recipes.addShapeless("compress_rods", <arctweaks:stick>, [s, s, s, s, s, s, s, s, s]);

s = <arctweaks:stick>; 

recipes.addShapeless("double_compress_rods", <arctweaks:stick:1>, [s, s, s, s, s, s, s, s, s]);
recipes.addShapeless("uncompress_rods", <microblockcbe:stone_rod>*9, [<arctweaks:stick>]);
recipes.addShapeless("undouble_compress_rods", <arctweaks:stick>*9, [<arctweaks:stick:1>]);

# compressed stone axe
var t = <minecraft:stone_axe>;
recipes.addShaped("compressed_stone_axe_1", <arctweaks:compressed_stone_axe>, [[c, c, null], [c, s, null], [null, s, null]]);
recipes.addShapeless("compressed_stone_axe_2", <arctweaks:compressed_stone_axe>, [t, t, t, t, t, t, t, t, t]);

# compressed stone hammer
recipes.removeShaped(<vanillatools:tool.hammer_wood>);

t = <vanillatools:tool.hammer_stone>;
recipes.addShaped("compressed_stone_hammer_1", <arctweaks:compressed_stone_hammer>, [[c, c, c], [c, s, c], [null, s, null]]);
recipes.addShapeless("compressed_stone_hammer_2", <arctweaks:compressed_stone_hammer>, [t, t, t, t, t, t, t, t, t]);

# compressed stone hoe
t = <minecraft:stone_hoe>;
recipes.addShaped("compressed_stone_hoe_1", <arctweaks:compressed_stone_hoe>, [[c, c, null], [null, s, null], [null, s, null]]);
recipes.addShapeless("compressed_stone_hoe_2", <arctweaks:compressed_stone_hoe>, [t, t, t, t, t, t, t, t, t]);

# compressed stone pick
t = <minecraft:stone_pickaxe>;
recipes.addShaped("compressed_stone_pick_1", <arctweaks:compressed_stone_pick>, [[c, c, c], [null, s, null], [null, s, null]]);
recipes.addShapeless("compressed_stone_pick_2", <arctweaks:compressed_stone_pick>, [t, t, t, t, t, t, t, t, t]);

# compressed stone shovel
t = <minecraft:stone_shovel>;
recipes.addShaped("compressed_stone_shovel_1", <arctweaks:compressed_stone_shovel>, [[null, c, null], [null, s, null], [null, s, null]]);
recipes.addShapeless("compressed_stone_shovel_2", <arctweaks:compressed_stone_shovel>, [t, t, t, t, t, t, t, t, t]);

# compressed stone sword
t = <minecraft:stone_sword>;
recipes.addShaped("compressed_stone_sword_1", <arctweaks:compressed_stone_sword>, [[null, c, null], [null, c, null], [null, s, null]]);
recipes.addShapeless("compressed_stone_sword_2", <arctweaks:compressed_stone_sword>, [t, t, t, t, t, t, t, t, t]);

# compressed stone excavator
recipes.removeShaped(<vanillatools:tool.excavator_wood>);

t = <vanillatools:tool.excavator_stone>;
recipes.addShaped("compressed_stone_excavator_1", <arctweaks:compressed_stone_excavator>, [[null, c, null], [c, s, c], [null, s, null]]);
recipes.addShapeless("compressed_stone_excavator_2", <arctweaks:compressed_stone_excavator>, [t, t, t, t, t, t, t, t, t]);


#### double compressed ####
# compressed stone axe
s = <arctweaks:stick:1>;
t = <arctweaks:compressed_stone_axe>;
recipes.addShaped("double_compressed_stone_axe_1", <arctweaks:double_compressed_stone_axe>, [[d, d, null], [d, s, null], [null, s, null]]);
recipes.addShapeless("double_compressed_stone_axe_2", <arctweaks:double_compressed_stone_axe>, [t, t, t, t, t, t, t, t, t]);

# compressed stone hammer
t = <arctweaks:compressed_stone_hammer>;
recipes.addShaped("double_compressed_stone_hammer_1", <arctweaks:double_compressed_stone_hammer>, [[d, d, d], [d, s, d], [null, s, null]]);
recipes.addShapeless("double_compressed_stone_hammer_2", <arctweaks:double_compressed_stone_hammer>, [t, t, t, t, t, t, t, t, t]);

# compressed stone hoe
t = <arctweaks:compressed_stone_hoe>;
recipes.addShaped("double_compressed_stone_hoe_1", <arctweaks:double_compressed_stone_hoe>, [[d, d, null], [null, s, null], [null, s, null]]);
recipes.addShapeless("double_compressed_stone_hoe_2", <arctweaks:double_compressed_stone_hoe>, [t, t, t, t, t, t, t, t, t]);

# compressed stone pick
t = <arctweaks:compressed_stone_pick>;
recipes.addShaped("double_compressed_stone_pick_1", <arctweaks:double_compressed_stone_pick>, [[d, d, d], [null, s, null], [null, s, null]]);
recipes.addShapeless("double_compressed_stone_pick_2", <arctweaks:double_compressed_stone_pick>, [t, t, t, t, t, t, t, t, t]);

# compressed stone shovel
t = <arctweaks:compressed_stone_shovel>;
recipes.addShaped("double_compressed_stone_shovel_1", <arctweaks:double_compressed_stone_shovel>, [[null, d, null], [null, s, null], [null, s, null]]);
recipes.addShapeless("double_compressed_stone_shovel_2", <arctweaks:double_compressed_stone_shovel>, [t, t, t, t, t, t, t, t, t]);

# compressed stone sword
t = <arctweaks:compressed_stone_sword>;
recipes.addShaped("double_compressed_stone_sword_1", <arctweaks:double_compressed_stone_sword>, [[null, d, null], [null, d, null], [null, s, null]]);
recipes.addShapeless("double_compressed_stone_sword_2", <arctweaks:double_compressed_stone_sword>, [t, t, t, t, t, t, t, t, t]);

# compressed stone excavator
t = <arctweaks:compressed_stone_excavator>;
recipes.addShaped("double_compressed_stone_excavator_1", <arctweaks:double_compressed_stone_excavator>, [[null, d, null], [d, s, d], [null, s, null]]);
recipes.addShapeless("double_compressed_stone_excavator_2", <arctweaks:double_compressed_stone_excavator>, [t, t, t, t, t, t, t, t, t]);

<embers:tinker_hammer>.maxDamage = 50000;

recipes.addShaped(<bountifulbaubles:ringflywheel>, [[<ore:nuggetIron>, <ore:ingotCopper>, <ore:nuggetIron>],[<ore:ingotCopper>, <evilcraft:potentia_sphere>, <ore:ingotCopper>], [<ore:nuggetIron>, <ore:ingotCopper>, <ore:nuggetIron>]]);

recipes.addShaped(<bountifulbaubles:ringflywheeladvanced>, [[null, <evilcraft:inverted_potentia>, null], [<evilcraft:inverted_potentia>, <bountifulbaubles:ringflywheel>, <evilcraft:inverted_potentia>], [null, <botania:enderhand>, null]]);
