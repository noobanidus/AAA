import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

var treasure_table = LootTables.getTable("minecraft:gameplay/fishing/treasure");

var treasure_pool = treasure_table.getPool("main");

treasure_pool.addItemEntry(<minecraft:iron_nugget>, 1, 0, "nugget");
treasure_pool.addItemEntry(<botania:manaresource:17>, 1, 0, "manasteel nugget");
treasure_pool.addItemEntry(<thaumcraft:nugget:8>, 1, 0, "brass nugget");
treasure_pool.addItemEntry(<melongolem:melonstick>, 1, 0, "melonstick");

var junk_table = LootTables.getTable("minecraft:gameplay/fishing/junk");

var junk_pool = junk_table.getPool("main");

junk_pool.addItemEntry(<minecraft:slime_ball>, 3, 0, "slime");
junk_pool.addItemEntry(<minecraft:reeds>, 5, 0, "reeds");
junk_pool.addItemEntry(<adventurepack:escape_rope>, 1, 0, "rope");
junk_pool.addItemEntry(<minecraft:lead>, 1, 0, "lead");
junk_pool.addItemEntry(<thaumcraft:curio:5>, 9, 0, "curio");

