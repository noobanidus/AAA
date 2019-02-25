import mods.botania.ManaInfusion;

recipes.addShapeless(<minecraft:nether_wart>*4, [<minecraft:nether_wart_block>]);

recipes.addShapeless(<minecraft:sugar>, [<betternether:agave>]);
recipes.remove(<botania:grassseeds:6>);

ManaInfusion.addInfusion(<botania:grassseeds:6>, <betternether:nether_grass>, 2500);

recipes.removeShapeless(<minecraft:sugar>, [<betternether:nether_reed>]);
recipes.addShapeless(<rusticthaumaturgy:dust_tiny_blaze>, [<betternether:nether_reed>]);

furnace.addRecipe(<betternether:cincinnasite>, <betternether:cincinnasite_ore>);

recipes.addShaped(<betternether:cincinnasite_pot>, [[null, null, null], [<betternether:cincinnasite_wall>, null, <betternether:cincinnasite_wall>], [null, <betternether:cincinnasite_wall>, null]]);

recipes.addShaped(<betternether:cincinnasite_pedestal>, [[<betternether:cincinnasite_wall>, <betternether:cincinnasite_wall>, null], [<betternether:cincinnasite_wall>, <betternether:cincinnasite_wall>, null], [null, null, null]]);

recipes.addShaped(<betternether:cincinnasite_frame>, [[<betternether:cincinnasite_bars>, <betternether:cincinnasite_bars>, <betternether:cincinnasite_bars>], [<betternether:cincinnasite_bars>, <ore:blockQuartzGlass>, <betternether:cincinnasite_bars>], [<betternether:cincinnasite_bars>, <betternether:cincinnasite_bars>, <betternether:cincinnasite_bars>]]);

recipes.addShapeless(<betternether:nether_mycelium>, [<ore:mycelium>, <ore:netherrack>]);

//mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
mods.thaumcraft.Infusion.registerRecipe("wart_seed", "BOTTLETAINT@1", <betternether:wart_seed>, 1, [<aspect:ignis>*64, <aspect:vitium>*64, <aspect:herba>*64], <minecraft:nether_wart_block>, [<botania:grassseeds:6>, <minecraft:gold_block>, <minecraft:gold_block>, <minecraft:gold_block>, <bloodmagic:component:8>]);

recipes.addShaped(<betternether:cincinnasite_forge>, [[<ore:blockCincinnasite>, <thaumcraft:smelter_basic>, <ore:blockCincinnasite>], [<betternether:nether_brick_tile_large>, <betternether:cincinnasite_carved>, <betternether:nether_brick_tile_large>], [<ore:blockCincinnasite>, <bloodmagic:soul_forge>, <ore:blockCincinnasite>]]);

recipes.addShaped(<betternether:pig_statue_01>, [[<betternether:cincinnasite_pedestal>, <ore:itemSkull>, <betternether:cincinnasite_pedestal>], [<ore:blockCincinnasite>, <betternether:cincinnasite_fire_bowl>, <ore:blockCincinnasite>], [<betternether:cincinnasite_pedestal>, <ore:itemSkull>, <betternether:cincinnasite_pedestal>]]);
