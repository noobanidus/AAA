import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;

<bloodmagic:soul_snare>.maxStackSize = 64;
<bloodmagic:blood_shard>.displayName = "Blood Shard";

var binding = <bloodmagic:component:8>;

//mods.bloodmagic.TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);
TartaricForge.addRecipe(<bloodmagic:altar>,[<ore:ingotGold>, <ore:ingotGold>, <minecraft:furnace>, <bloodmagic:monster_soul>], 0, 0);

TartaricForge.addRecipe(<bloodmagic:alchemy_table>, [<minecraft:cauldron>, <minecraft:coal:1>, <minecraft:lava_bucket>, <minecraft:fermented_spider_eye>], 20, 5);

TartaricForge.addRecipe(<bloodmagic:sacrificial_dagger>, [<minecraft:iron_sword>, null, null, null], 10, 2);

TartaricForge.addRecipe(<bloodmagic:dagger_of_sacrifice>, [<bloodmagic:sacrificial_dagger>, null, null, null], 32, 16);

// Remove default recipe for binding reagent
TartaricForge.removeRecipe([<minecraft:redstone>, <minecraft:gunpowder>, <minecraft:gold_nugget>, <minecraft:glowstone_dust>]);
TartaricForge.addRecipe(<bloodmagic:component:8> * 4, [<ore:nuggetIron>, <ore:dustRedstone>, <minecraft:clay_ball>, <minecraft:web>], 5, 1);

// Remove the default wool recipe
AlchemyTable.removeRecipe([<minecraft:wool:0>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:1>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:2>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:3>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:4>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:5>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:6>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:7>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:8>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:9>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:10>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:11>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:12>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:13>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:14>, <minecraft:flint>]);
AlchemyTable.removeRecipe([<minecraft:wool:15>, <minecraft:flint>]);

//mods.bloodmagic.AlchemyTable.addRecipe(IItemStack output, IItemStack[] inputs, int syphon, int ticks, int minTier);
AlchemyTable.addRecipe(<minecraft:string> * 6, [<ore:wool>, <minecraft:flint>], 0, 20, 0);

// Cobwebs!

AlchemyTable.addRecipe(<minecraft:web>, [<ore:string>, <ore:string>, <ore:string>, <ore:string>, <ore:string>, <minecraft:clay_ball>], 0, 20, 0);

// ### SLATES ###

// Blank slate
TartaricForge.addRecipe(<bloodmagic:slate:0> * 3, [<ore:stone>, <ore:stone>, <ore:stone>, binding], 0, 0.5);

// Reinforced slate
TartaricForge.addRecipe(<bloodmagic:slate:1> * 3, [<bloodmagic:slate:0>, <bloodmagic:slate:0>, <bloodmagic:slate:0>, binding], 64, 4);

// Imbued slate
TartaricForge.addRecipe(<bloodmagic:slate:2> * 3, [<bloodmagic:slate:1>, <bloodmagic:slate:1>, <bloodmagic:slate:1>, binding], 128, 16);

// Demonic slate
TartaricForge.addRecipe(<bloodmagic:slate:3> * 3, [<bloodmagic:slate:2>, <bloodmagic:slate:2>, <bloodmagic:slate:2>, binding], 512, 32);

// Ethereal slate
TartaricForge.addRecipe(<bloodmagic:slate:4> * 3, [<bloodmagic:slate:3>, <bloodmagic:slate:3>, <bloodmagic:slate:3>, binding], 2048, 64);

// Change up the orbs a little
BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <minecraft:iron_block>, 0, 1000, 20, 1);

// Tweak Lava Crystal
AlchemyTable.addRecipe(<bloodmagic:lava_crystal>, [<minecraft:furnace>, <minecraft:lava_bucket>, <minecraft:lava_bucket>, <ore:blockGlass>, <bloodmagic:component:1>, <bloodmagic:slate:0>], 500, 160, 0);

// Remove the pathetic dismantler recipe
TartaricForge.removeRecipe([<bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>, <bloodmagic:ritual_diviner>, <bloodmagic:blood_shard>]);

// And add a better one
TartaricForge.addRecipe(<bloodmagic:ritual_dismantler>, [<bloodmagic:ritual_diviner>, <bloodmagic:component:27>, null, null], 256, 100);

TartaricForge.addRecipe(<bloodmagic:ritual_diviner:1>, [<minecraft:feather>, <minecraft:torch>, <ore:gemDiamond>, <animus:component:3>], 256, 200);

// Tweak sentient weapons
TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_sword>]);
TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:bow>, <minecraft:string>, <minecraft:string>]);
TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_axe>]);
TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_pickaxe>]);
TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_shovel>]);
TartaricForge.removeRecipe([<minecraft:diamond_chestplate>, <minecraft:obsidian>, <minecraft:iron_block>, <bloodmagic:soul_gem:1>]);

// Re-add them with the alchemy array
AlchemyArray.addRecipe(<bloodmagic:sentient_sword>, <minecraft:iron_sword>, <bloodmagic:soul_gem:0>, "bloodmagic:textures/models/alchemyarrays/bindinglightningarray.png");
AlchemyArray.addRecipe(<bloodmagic:sentient_axe>, <minecraft:iron_axe>, <bloodmagic:soul_gem:0>, "bloodmagic:textures/models/alchemyarrays/bindinglightningarray.png");
AlchemyArray.addRecipe(<bloodmagic:sentient_shovel>, <minecraft:iron_shovel>, <bloodmagic:soul_gem:0>, "bloodmagic:textures/models/alchemyarrays/bindinglightningarray.png");
AlchemyArray.addRecipe(<bloodmagic:sentient_pickaxe>, <minecraft:iron_pickaxe>, <bloodmagic:soul_gem:0>, "bloodmagic:textures/models/alchemyarrays/bindinglightningarray.png");
AlchemyArray.addRecipe(<bloodmagic:sentient_bow>, <minecraft:bow>, <bloodmagic:soul_gem:0>, "bloodmagic:textures/models/alchemyarrays/bindinglightningarray.png");
AlchemyArray.addRecipe(<bloodmagic:sentient_armour_gem>, <minecraft:iron_chestplate>, <bloodmagic:soul_gem:0>, "bloodmagic:textures/models/alchemyarrays/bindinglightningarray.png");

<bloodmagic:cutting_fluid>.maxDamage = 255;
