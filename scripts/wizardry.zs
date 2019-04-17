import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

var table = LootTables.getTableUnchecked("ebwizardry:chests/dungeon_additions");

var pool = table.getPool("wizardry");

pool.setRolls(0, 3);
pool.setBonusRolls(0, 0);
