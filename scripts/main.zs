import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.chisel.Carving;
import mods.thermalexpansion.Compactor;

//recipes.addShaped(<quark:backpack>, [[<ore:leather>, <ore:leather>, <ore:leather>],[<ore:gemEmerald>, <comforts:sleeping_bag:*>, <ore:gemEmerald>], [<ore:leather>, <ore:leather>, <ore:leather>]]);
recipes.remove(<hooked:hook:4>);

// better leads
recipes.addShaped("extra_lead", <minecraft:lead>*2, [[<ore:string>, <ore:string>, null], [<ore:string>, <minecraft:clay_ball>, null], [null, null, <ore:string>]]);

// mining ring
recipes.remove(<magnetrings:magnet>);
recipes.remove(<magnetrings:magnet:1>);
recipes.remove(<magnetrings:magnet:2>);
recipes.remove(<magnetrings:magnet:3>);
recipes.remove(<magnetrings:magnet:4>);

recipes.addShaped(<magnetrings:magnet>, [[<minecraft:diamond_pickaxe>, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:blockGold>, <ore:ingotIron>], [null, <ore:ingotIron>, <minecraft:compass>]]);

recipes.addShaped(<magnetrings:magnet:1>, [[<minecraft:diamond_sword>, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:blockGold>, <ore:ingotIron>], [null, <ore:ingotIron>, <minecraft:compass>]]);

recipes.addShaped(<magnetrings:magnet:2>, [[<thermalfoundation:tool.bow_diamond>, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:blockGold>, <ore:ingotIron>], [null, <ore:ingotIron>, <minecraft:compass>]]);

recipes.addShaped(<magnetrings:magnet:3>, [[<minecraft:experience_bottle>, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:blockGold>, <ore:ingotIron>], [null, <ore:ingotIron>, <minecraft:compass>]]);

recipes.addShapeless(<magnetrings:magnet:4>, [<magnetrings:magnet>, <magnetrings:magnet:1>, <magnetrings:magnet:2>, <magnetrings:magnet:3>]);

// wool
var shears = <minecraft:shears>.anyDamage().or(
    <botania:manasteelshears>.anyDamage()).or(
    <botania:elementiumshears>.anyDamage()).or(
    <enderio:item_dark_steel_shears>.anyDamage()).or(
    <xreliquary:shears_of_winter>.anyDamage()).or(
    <thermalfoundation:tool.shears_copper>.anyDamage()).or(
    <thermalfoundation:tool.shears_tin>.anyDamage()).or(
    <thermalfoundation:tool.shears_silver>.anyDamage()).or(
    <thermalfoundation:tool.shears_lead>.anyDamage()).or(
    <thermalfoundation:tool.shears_aluminum>.anyDamage()).or(
    <thermalfoundation:tool.shears_nickel>.anyDamage()).or(
    <thermalfoundation:tool.shears_platinum>.anyDamage()).or(
    <thermalfoundation:tool.shears_steel>.anyDamage()).or(
    <thermalfoundation:tool.shears_electrum>.anyDamage()).or(
    <thermalfoundation:tool.shears_invar>.anyDamage()).or(
    <thermalfoundation:tool.shears_bronze>.anyDamage()).or(
    <thermalfoundation:tool.shears_constantan>.anyDamage()).or(
    <thermalfoundation:tool.shears_diamond>.anyDamage()).or(
    <thermalfoundation:tool.shears_gold>.anyDamage());

// wisdom wood charcoal
furnace.addRecipe(<minecraft:coal:1>, <wizardry:wisdom_wood_log>, 0.15);
furnace.addRecipe(<thermalfoundation:material:165>, <thermalfoundation:material:101>, 0.15);

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

var cane = <ore:sugarcane>;

// Water rune
mods.botania.RuneAltar.removeRecipe(<botania:rune>*2);
mods.botania.RuneAltar.addRecipe(<botania:rune>*2, [manasteel, manapowder, aquamarine, aquamarine, cane], costTierOne);

// Manabound book
var enchant = <enchantment:variegated:manabound>.makeEnchantment(1).makeTag() as IData;

var manabound_book = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 55 as short}]});

mods.botania.RuneAltar.addRecipe(manabound_book, [<botania:pump>, <minecraft:writable_book>, <bloodmagic:component:8>, <arcanearchives:storage_raw_quartz>, <botania:rune:8>, <botania:specialflower>.withTag({type: "manastar"})], 100000);

<ore:plankWood>.add(<wizardry:wisdom_wood_planks>);

recipes.addShapeless(<minecraft:book>, [<ebwizardry:spell_book:*>]);

<ore:book>.add(<ebwizardry:spell_book:*>);

recipes.remove(<botania:virus>);
recipes.remove(<botania:virus:1>);

recipes.addShapeless(<botania:virus>, [<ore:gemDiamond>, <minecraft:vine>, <minecraft:magma_cream>, <minecraft:spider_eye>, <minecraft:ender_pearl>, <minecraft:skull:2>]);
recipes.addShapeless(<botania:virus:1>, [<ore:gemDiamond>, <minecraft:vine>, <minecraft:magma_cream>, <minecraft:spider_eye>, <minecraft:ender_pearl>, <minecraft:skull:0>]);

recipes.remove(<hooked:hook:1>);
recipes.remove(<hooked:hook:2>);

recipes.addShaped(<hooked:hook:1>, [[<ore:blockIron>, <ore:blockIron>, <minecraft:iron_pickaxe>], [null, <hooked:microcrafting:3>, <ore:blockIron>], [<hooked:microcrafting:3>, null, <ore:blockIron>]]);
recipes.addShaped(<hooked:hook:2>, [[<ore:blockDiamond>, <ore:blockDiamond>, <hooked:hook:1>], [null, <ore:blockDiamond>, <ore:blockDiamond>], [<ore:blockDiamond>, null, <ore:blockDiamond>]]);

recipes.removeByRecipeName("ropebridge:string");

recipes.addShapeless(<minecraft:flint>, [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]);

recipes.addShapeless(<minecraft:slime_ball>, [<minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>, <minecraft:egg>]);

recipes.removeByRecipeName("betternether:sugar");

mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:sigil_whirlwind>, <bloodmagic:component:2>, <bloodmagic:slate:2>);

<ore:stickWood>.add(<simplytea:tea_stick>);

recipes.remove(<minecraft:enchanting_table>);

recipes.addShaped(<minecraft:enchanting_table>, [[null, <minecraft:book>, null], [<minecraft:emerald>, <minecraft:stonebrick>, <minecraft:emerald>], [<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]]);

recipes.addShapeless(<minecraft:magma_cream>*4, [<minecraft:magma>]);

recipes.addShapeless(<quark:enderdragon_scale>, [<bountifulbaubles:enderdragonscale>]);

Carving.addVariation("basalt", <rustic:slate>);

recipes.remove(<clickmachine:auto_clicker>);
recipes.addShaped(<clickmachine:auto_clicker>, [[<minecraft:stone:4>, <minecraft:stone:4>, <minecraft:stone:4>], [<minecraft:stone:4>, <minecraft:hopper>, <minecraft:stone:4>], [<minecraft:stone:4>, <minecraft:redstone_block>, <minecraft:stone:4>]]);

var db = <minecraft:diamond_block>;
var gb = <minecraft:gold_block>;
var eb = <minecraft:emerald_block>;

recipes.remove(<bloodmagic:activation_crystal:1>);
recipes.addShaped(<bloodmagic:activation_crystal:1>, [[db, eb, gb], [eb, <bloodmagic:activation_crystal>, eb], [gb, eb, db]]);

eb = <charm:ender_pearl_block>;

recipes.addShaped(<hooked:hook:4>, [[eb, eb, <darkutils:ender_tether>], [null, <hooked:hook:2>, eb], [<hooked:hook:2>, null, eb]]);

recipes.addShapeless(<enderio:item_broken_spawner>.withTag({entityId: "minecraft:chicken"}), [<minecraft:mob_spawner>]);

recipes.remove(<rustic:chain>);
recipes.addShaped(<rustic:chain>*9, [[null, <ore:ingotIron>, null], [<ore:nuggetIron>, null, <ore:nuggetIron>], [null, <ore:ingotIron>, null]]);

recipes.remove(<rustic:chain_gold>);
recipes.addShaped(<rustic:chain_gold>*9, [[null, <ore:ingotGold>, null], [<ore:nuggetGold>, null, <ore:nuggetGold>], [null, <ore:ingotGold>, null]]);

recipes.remove(<quark:red_nether_brick_slab>);
recipes.remove(<quark:end_bricks_slab:0>);

recipes.remove(<quark:stone_speleothem>);
recipes.remove(<quark:basalt_speleothem>);
recipes.remove(<quark:marble_speleothem>);
recipes.remove(<quark:limestone_speleothem>);

recipes.remove(<mysticalworld:amethyst_block>);
recipes.remove(<netherex:amethyst_block>);

recipes.addShaped(<netherex:amethyst_block>, [[<ore:gemAmethyst>, <ore:gemAmethyst>, <ore:gemAmethyst>], [<ore:gemAmethyst>, <ore:gemAmethyst>, <ore:gemAmethyst>], [<ore:gemAmethyst>, <ore:gemAmethyst>, <ore:gemAmethyst>]]); 

recipes.remove(<mysticalworld:charred_wall>);
recipes.addShaped(<mysticalworld:charred_wall>*3, [[null, null, null], [<mysticalworld:charred_slab>, <mysticalworld:charred_slab>, <mysticalworld:charred_slab>], [<mysticalworld:charred_planks>, <mysticalworld:charred_planks>, <mysticalworld:charred_planks>]]);

recipes.remove(<quark:quartz_wall>);

recipes.remove(<multistorage:stone_storage>);

recipes.addShaped(<multistorage:stone_storage>, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:chestWood>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);

recipes.remove(<quark:basalt:1>);

recipes.remove(<embers:pickaxe_silver>);
recipes.remove(<embers:axe_silver>);
recipes.remove(<embers:shovel_silver>);
recipes.remove(<embers:hoe_silver>);
recipes.remove(<embers:sword_silver>);

recipes.remove(<embers:pickaxe_copper>);
recipes.remove(<embers:axe_copper>);
recipes.remove(<embers:shovel_copper>);
recipes.remove(<embers:hoe_copper>);
recipes.remove(<embers:sword_copper>);

recipes.remove(<thermalfoundation:tool.pickaxe_copper>);

recipes.remove(<quark:red_nether_brick_stairs>);

recipes.remove(<quark:charcoal_block>);
recipes.remove(<chisel:block_charcoal2>);

recipes.remove(<embers:pickaxe_lead>);
recipes.remove(<embers:pickaxe_bronze>);

recipes.remove(<earthworks:tool_iron_hammer>);
recipes.remove(<earthworks:tool_diamond_hammer>);
recipes.remove(<earthworks:tool_gold_hammer>);

// TODO: PRAY
recipes.removeByRecipeName("earthworks:block_mud");

// Keeping the mystgears recipes

// Wooden gears
recipes.remove(<enderio:item_material:9>);
recipes.remove(<thermalfoundation:material:22>);
recipes.remove(<mystgears:gear_wood>);

recipes.addShaped(<mystgears:gear_wood>, [[null, <ore:stickWood>, null], [<ore:stickWood>, null, <ore:stickWood>], [null, <ore:stickWood>, null]]);

// Stone gears
recipes.remove(<enderio:item_material:10>);
recipes.remove(<thermalfoundation:material:23>);

// Remove all the thermalfoundation duplicate gears
recipes.remove(<endercrop:ender_seeds>);

recipes.remove(<waystones:waystone>);
recipes.addShaped(<waystones:waystone>, [[null, <minecraft:stonebrick>, null], [<minecraft:stonebrick>, <waystones:warp_stone>, <minecraft:stonebrick>], [<minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>]]);

recipes.addShapeless(<darkutils:update_detector>, [<minecraft:observer>]);

recipes.addShaped(<minecraft:clock>, [[null, <ore:ingotSilver>, null], [<ore:ingotSilver>, <ore:dustRedstone>, <ore:ingotSilver>], [null, <ore:ingotSilver>, null]]);

recipes.remove(<xreliquary:magicbane>);
