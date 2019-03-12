recipes.remove(<thermalfoundation:storage_alloy:*>);
recipes.remove(<thermalfoundation:storage:*>);
recipes.remove(<thermalfoundation:rockwool:*>);
furnace.remove(<netherfoundation:ore:*>);

furnace.addRecipe(<netherfoundation:ore:0>, <minecraft:gold_ore>*2);
furnace.addRecipe(<netherfoundation:ore:1>, <minecraft:iron_ore>*2);
furnace.addRecipe(<netherfoundation:ore:2>, <minecraft:coal_ore>*2);
furnace.addRecipe(<netherfoundation:ore:3>, <minecraft:lapis_ore>*2);
furnace.addRecipe(<netherfoundation:ore:4>, <minecraft:diamond_ore>*2);
furnace.addRecipe(<netherfoundation:ore:5>, <minecraft:redstone_ore>*2);
furnace.addRecipe(<netherfoundation:ore:6>, <embers:ore_copper>*2);
furnace.addRecipe(<netherfoundation:ore:7>, <embers:ore_tin>*2);
furnace.addRecipe(<netherfoundation:ore:8>, <embers:ore_silver>*2);
furnace.addRecipe(<netherfoundation:ore:9>, <embers:ore_lead>*2);
furnace.addRecipe(<netherfoundation:ore:10>, <embers:ore_aluminum>*2);
furnace.addRecipe(<netherfoundation:ore:11>, <embers:ore_nickel>*2);
furnace.addRecipe(<netherfoundation:ore:15>, <minecraft:emerald_ore>*2);

var ores = oreDict;

for ode in oreDict { //["1", "2", "3"] {
    ode.remove(loadedMods["thermalfoundation"].items);
}

recipes.addShapeless(<embers:ingot_copper>, [<thermalfoundation:material:128>]);
recipes.addShapeless(<embers:ingot_tin>, [<thermalfoundation:material:129>]);
recipes.addShapeless(<embers:ingot_silver>, [<thermalfoundation:material:130>]);
recipes.addShapeless(<embers:ingot_lead>, [<thermalfoundation:material:131>]);

