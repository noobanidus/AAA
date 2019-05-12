import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

//recipes.addShaped(<quark:backpack>, [[<ore:leather>, <ore:leather>, <ore:leather>],[<ore:gemEmerald>, <comforts:sleeping_bag:*>, <ore:gemEmerald>], [<ore:leather>, <ore:leather>, <ore:leather>]]);

# Hide this just the wooden one
recipes.remove(<hooked:hook>);
recipes.remove(<hooked:hook:4>);

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
//recipes.remove(<magnetrings:magnet>);
//recipes.remove(<magnetrings:magnet:1>);
//recipes.remove(<magnetrings:magnet:2>);
//recipes.remove(<magnetrings:magnet:3>);
//recipes.remove(<magnetrings:magnet:4>);

recipes.addShaped(<magnetrings:magnet>, [[<minecraft:diamond_pickaxe>, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:blockGold>, <ore:ingotIron>], [null, <ore:ingotIron>, <minecraft:compass>]]);

recipes.addShaped(<magnetrings:magnet:1>, [[<minecraft:diamond_sword>, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:blockGold>, <ore:ingotIron>], [null, <ore:ingotIron>, <minecraft:compass>]]);

recipes.addShaped(<magnetrings:magnet:2>, [[<vanillatools:tool.bow_diamond>, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:blockGold>, <ore:ingotIron>], [null, <ore:ingotIron>, <minecraft:compass>]]);

//recipes.addShaped(<magnetrings:magnet:3>, [[<minecraft:experience_bottle>, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:blockGold>, <ore:ingotIron>], [null, <ore:ingotIron>, <minecraft:compass>]]);

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
var enchant = <enchantment:variegated:manabound>.makeEnchantment(1).makeTag() as IData;

var manabound_book = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 55 as short}]});

mods.botania.RuneAltar.addRecipe(manabound_book, [<botania:pump>, <minecraft:writable_book>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <arcanearchives:storage_raw_quartz>, <botania:rune:8>, <botania:specialflower>.withTag({type: "manastar"})], 100000);

<embers:tinker_hammer>.maxDamage = 50000;

recipes.addShaped(<bountifulbaubles:ringflywheel>, [[<ore:nuggetIron>, <ore:ingotCopper>, <ore:nuggetIron>],[<ore:ingotCopper>, <evilcraft:potentia_sphere>, <ore:ingotCopper>], [<ore:nuggetIron>, <ore:ingotCopper>, <ore:nuggetIron>]]);

recipes.addShaped(<bountifulbaubles:ringflywheeladvanced>, [[null, <evilcraft:inverted_potentia>, null], [<evilcraft:inverted_potentia>, <bountifulbaubles:ringflywheel>, <evilcraft:inverted_potentia>], [null, <botania:enderhand>, null]]);

recipes.addShapeless(<thaumcraft:nugget:8>*9, [<thaumcraft:ingot:2>]);
recipes.addShapeless(<thaumcraft:ingot:2>, [<thaumcraft:nugget:8>, <thaumcraft:nugget:8>, <thaumcraft:nugget:8>, <thaumcraft:nugget:8>, <thaumcraft:nugget:8>, <thaumcraft:nugget:8>, <thaumcraft:nugget:8>, <thaumcraft:nugget:8>, <thaumcraft:nugget:8>]);


recipes.addShapeless(<embers:ingot_copper>, [<embers:nugget_copper>, <embers:nugget_copper>, <embers:nugget_copper>, <embers:nugget_copper>, <embers:nugget_copper>, <embers:nugget_copper>, <embers:nugget_copper>, <embers:nugget_copper>, <embers:nugget_copper>]);
recipes.addShapeless(<embers:ingot_silver>, [<embers:nugget_silver>, <embers:nugget_silver>, <embers:nugget_silver>, <embers:nugget_silver>, <embers:nugget_silver>, <embers:nugget_silver>, <embers:nugget_silver>, <embers:nugget_silver>, <embers:nugget_silver>]);


recipes.addShapeless(<embers:block_copper>, [<embers:ingot_copper>, <embers:ingot_copper>, <embers:ingot_copper>, <embers:ingot_copper>, <embers:ingot_copper>, <embers:ingot_copper>, <embers:ingot_copper>, <embers:ingot_copper>, <embers:ingot_copper>]);
recipes.addShapeless(<embers:block_silver>, [<embers:ingot_silver>, <embers:ingot_silver>, <embers:ingot_silver>, <embers:ingot_silver>, <embers:ingot_silver>, <embers:ingot_silver>, <embers:ingot_silver>, <embers:ingot_silver>, <embers:ingot_silver>]);

<ore:plankWood>.add(<wizardry:wisdom_wood_planks>);

recipes.addShapeless(<xreliquary:mob_ingredient:11>, [<extrautils2:enderlilly>]);

recipes.addShapeless(<minecraft:book>, [<ebwizardry:spell_book:*>]);

<ore:book>.add(<ebwizardry:spell_book:*>);

recipes.remove(<locks:lock_pick>);
recipes.addShaped(<locks:lock_pick>*4, [[null, <ore:stickWood>], [<compham:stone_rod>, null]]);

recipes.remove(<botania:virus>);
recipes.remove(<botania:virus:1>);

recipes.addShapeless(<botania:virus>, [<ore:manaDiamond>, <botania:vineball>, <minecraft:magma_cream>, <minecraft:fermented_spider_eye>, <minecraft:ender_eye>, <minecraft:skull:2>]);
recipes.addShapeless(<botania:virus:1>, [<ore:manaDiamond>, <botania:vineball>, <minecraft:magma_cream>, <minecraft:fermented_spider_eye>, <minecraft:ender_eye>, <minecraft:skull:0>]);

recipes.remove(<hooked:hook:1>);
recipes.remove(<hooked:hook:2>);

recipes.addShaped(<hooked:hook:1>, [[<ore:blockIron>, <ore:blockIron>, <minecraft:iron_pickaxe>], [null, <hooked:microcrafting:3>, <ore:blockIron>], [<hooked:microcrafting:3>, null, <ore:blockIron>]]);
recipes.addShaped(<hooked:hook:2>, [[<ore:blockDiamond>, <ore:blockDiamond>, <hooked:hook:1>], [null, <ore:blockDiamond>, <ore:blockDiamond>], [<ore:blockDiamond>, null, <ore:blockDiamond>]]);

recipes.removeByRecipeName("ropebridge:string");

recipes.addShapeless(<minecraft:flint>, [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]);

recipes.addShapeless(<minecraft:slime_ball>, [<minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>]);

recipes.removeByRecipeName("betternether:sugar");

mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:sigil_whirlwind>, <bloodmagic:component:2>, <bloodmagic:slate:2>);

recipes.removeByRecipeName("bountifulbaubles:ringflywheel");

furnace.addRecipe(<translocators:diamond_nugget>, <minecraft:diamond_horse_armor>);

<ore:stickWood>.add(<simplytea:tea_stick>);

recipes.remove(<wards:ward>);

recipes.addShaped(<wards:ward>, [[null, <minecraft:stone_slab>, null], [<minecraft:emerald>, <minecraft:stone>, <minecraft:emerald>], [<minecraft:stone_slab>, <minecraft:stone>, <minecraft:stone_slab>]]);

recipes.remove(<minecraft:enchanting_table>);

recipes.addShaped(<minecraft:enchanting_table>, [[null, <minecraft:book>, null], [<minecraft:emerald>, <minecraft:stonebrick>, <minecraft:emerald>], [<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]]);

recipes.addShapeless(<minecraft:magma_cream>*4, [<minecraft:magma>]);
