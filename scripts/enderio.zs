import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.LootCondition;

for item in loadedMods["enderio"].items {
    recipes.remove(item);
}

for entry in ["minecraft:chests/abandoned_mineshaft","minecraft:chests/desert_pyramid","minecraft:chests/end_city_treasure","minecraft:chests/igloo_chest","minecraft:chests/jungle_temple","minecraft:chests/jungle_temple_dispenser","minecraft:chests/nether_bridge","minecraft:chests/simple_dungeon","minecraft:chests/village_blacksmith","minecraft:chests/woodland_mansion"] as string[] {
    var table = LootTables.getTable(entry);
    table.removePool("Ender IO");
}
