import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.chisel.Carving;

//recipes.addShaped(<quark:backpack>, [[<ore:leather>, <ore:leather>, <ore:leather>],[<ore:gemEmerald>, <comforts:sleeping_bag:*>, <ore:gemEmerald>], [<ore:leather>, <ore:leather>, <ore:leather>]]);

# Hide this just the wooden one
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

furnace.addRecipe(<translocators:diamond_nugget>, <minecraft:diamond_horse_armor>);

<ore:stickWood>.add(<simplytea:tea_stick>);

recipes.remove(<minecraft:enchanting_table>);

recipes.addShaped(<minecraft:enchanting_table>, [[null, <minecraft:book>, null], [<minecraft:emerald>, <minecraft:stonebrick>, <minecraft:emerald>], [<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]]);

recipes.addShapeless(<minecraft:magma_cream>*4, [<minecraft:magma>]);

Carving.addVariation("marble", <atum:alabaster>);
Carving.addVariation("basalt", <adventurersamulets:slate>);
Carving.addVariation("basalt", <rustic:slate>);

recipes.remove(<clickmachine:auto_clicker>);
recipes.addShaped(<clickmachine:auto_clicker>, [[<minecraft:stone:4>, <minecraft:stone:4>, <minecraft:stone:4>], [<minecraft:stone:4>, <minecraft:hopper>, <minecraft:stone:4>], [<minecraft:stone:4>, <minecraft:redstone_block>, <minecraft:stone:4>]]);

var db = <minecraft:diamond_block>;
var gb = <minecraft:gold_block>;
var eb = <minecraft:emerald_block>;

recipes.remove(<bloodmagic:activation_crystal:1>);
recipes.addShaped(<bloodmagic:activation_crystal:1>, [[db, eb, gb], [eb, <bloodmagic:activation_crystal:1>, eb], [gb, eb, db]]);
