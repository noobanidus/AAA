import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

var snowman = LootTables.getTable("minecraft:entities/snowman");

var snowman_pool = snowman.addPool("curio", 0, 1, 0, 0);
snowman_pool.addItemEntry(<thaumcraft:curio:2>, 5, "snowman_curio");
snowman_pool.addEmptyEntry(15, 1, "snowman_weight");

var embers = LootTables.getTable("embers:entities/ancient_golem");

var embers_pool = embers.addPool("curio", 0, 1, 0, 0);
embers_pool.addItemEntry(<thaumcraft:curio:2>, 5, "embers_curio");
embers_pool.addEmptyEntry(15, 1, "embers_weight");

var melon = LootTables.getTable("melongolem:melon_golem");

var melon_pool = melon.addPool("curio", 0, 1, 0, 0);
melon_pool.addItemEntry(<thaumcraft:curio:2>, 5, "melon_curio");
melon_pool.addEmptyEntry(15, 1, "melon_weight");

var iron = LootTables.getTable("minecraft:entities/villager_golem");

var iron_pool = iron.addPool("curio", 0, 1, 0, 0);
iron_pool.addItemEntry(<thaumcraft:curio:2>, 5, "iron_curio");
iron_pool.addEmptyEntry(15, 1, "iron_weight");

var carminite = LootTables.getTable("twilightforest:entities/tower_golem");

var carminite_pool = carminite.addPool("curio", 0, 1, 0, 0);
carminite_pool.addItemEntry(<thaumcraft:curio:2>, 5, "carminite_curio");
carminite_pool.addEmptyEntry(15, 1, "carminite_weight");

var enderminy = LootTables.getTable("enderio:enderminy");

var enderminy_pool = enderminy.addPool("curio", 1, 1, 0, 0);
enderminy_pool.addItemEntry(<thaumcraft:curio:3>, 10, "enderman_curio");
enderminy_pool.addEmptyEntry(20, 1, "enderminy_weight");

var enderman = LootTables.getTable("minecraft:entities/enderman");

var enderman_pool = enderman.addPool("curio", 1, 1, 0, 0);
enderman_pool.addItemEntry(<thaumcraft:curio:3>, 10, "enderman_curio");
enderman_pool.addEmptyEntry(20, 1, "enderminy_weight");

var witch = LootTables.getTable("minecraft:entities/witch");
var witch_pool = witch.addPool("curio", 1, 1, 0, 0);
witch_pool.addItemEntry(<thaumcraft:curio>, 10, "witch_curio");
witch_pool.addEmptyEntry(20, 1, "witch_weight");

var wizard = LootTables.getTable("ebwizardry:entities/evil_wizard");
var wizard_pool = wizard.addPool("curio", 1, 1, 0, 0);
wizard_pool.addItemEntry(<thaumcraft:curio>, 10, "wizard_curio");
wizard_pool.addEmptyEntry(20, 1, "wizard_weight");

mods.bloodmagic.AlchemyArray.addRecipe(<minecraft:coal_block>, <minecraft:diamond>, <thaumcraft:curio>);

recipes.addShapeless(<thaumcraft:curio:4>, [<minecraft:experience_bottle>, <minecraft:experience_bottle>, <minecraft:experience_bottle>, <minecraft:experience_bottle>, <ore:book>]);
