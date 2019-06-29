import mods.botania.ManaInfusion;

recipes.addShapeless(<minecraft:nether_wart>*4, [<minecraft:nether_wart_block>]);

recipes.addShapeless(<minecraft:sugar>, [<betternether:agave>]);
recipes.remove(<botania:grassseeds:6>);

ManaInfusion.addInfusion(<botania:grassseeds:6>, <betternether:nether_grass>, 2500);

furnace.addRecipe(<betternether:cincinnasite>, <betternether:cincinnasite_ore>);

recipes.addShaped(<betternether:cincinnasite_pot>, [[null, null, null], [<betternether:cincinnasite_wall>, null, <betternether:cincinnasite_wall>], [null, <betternether:cincinnasite_wall>, null]]);

recipes.addShaped(<betternether:cincinnasite_pedestal>, [[<betternether:cincinnasite_wall>, <betternether:cincinnasite_wall>, null], [<betternether:cincinnasite_wall>, <betternether:cincinnasite_wall>, null], [null, null, null]]);

recipes.addShaped(<betternether:cincinnasite_frame>, [[<betternether:cincinnasite_bars>, <betternether:cincinnasite_bars>, <betternether:cincinnasite_bars>], [<betternether:cincinnasite_bars>, <ore:blockQuartzGlass>, <betternether:cincinnasite_bars>], [<betternether:cincinnasite_bars>, <betternether:cincinnasite_bars>, <betternether:cincinnasite_bars>]]);

recipes.addShapeless(<betternether:nether_mycelium>, [<ore:mycelium>, <ore:netherrack>]);

recipes.addShaped(<betternether:pig_statue_01>, [[<betternether:cincinnasite_pedestal>, <ore:itemSkull>, <betternether:cincinnasite_pedestal>], [<ore:blockCincinnasite>, <betternether:cincinnasite_fire_bowl>, <ore:blockCincinnasite>], [<betternether:cincinnasite_pedestal>, <ore:itemSkull>, <betternether:cincinnasite_pedestal>]]);
