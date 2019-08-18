import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

var table = LootTables.getTableUnchecked("enderio:chests/desert_pyramid");

var pool = table.getPool("Ender IO");
pool.removeEntry("enderio:item_dark_steel_sword:0");
pool.removeEntry("enderio:item_material:13");
pool.removeEntry("enderio:item_travel_staff:0");

table = LootTables.getTableUnchecked("enderio:chests/simple_dungeon");
pool = table.getPool("Ender IO");
pool.removeEntry("enderio:item_alloy_ingot:6");
pool.removeEntry("enderio:item_conduit_probe:0");
pool.removeEntry("enderio:item_dark_steel_sword:0");
pool.removeEntry("enderio:item_dark_steel_boots:0");

table = LootTables.getTableUnchecked("enderio:chests/village_blacksmith");
pool = table.getPool("Ender IO");
pool.removeEntry("enderio:item_alloy_ingot:6");
pool.removeEntry("enderio:item_alloy_ingot:5");
pool.removeEntry("enderio:item_material:9");
pool.removeEntry("enderio:item_dark_steel_sword:0");
pool.removeEntry("enderio:item_dark_steel_boots:0");

table = LootTables.getTableUnchecked("enderio:chests/abandoned_mineshaft");
pool = table.getPool("Ender IO");
pool.removeEntry("enderio:item_alloy_ingot:6");
pool.removeEntry("enderio:item_dark_steel_sword:0");

table = LootTables.getTableUnchecked("enderio:chests/jungle_temple");
pool = table.getPool("Ender IO");
pool.removeEntry("enderio:item_dark_steel_sword:0");
pool.removeEntry("enderio:item_travel_staff:0");

table = LootTables.getTableUnchecked("enderio:chests/nether_bridge");
pool = table.getPool("Ender IO");
pool.removeEntry("enderio:item_dark_steel_boots:0");
