import mods.botania.ManaInfusion;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val BlazePowder = <minecraft:blaze_powder>;
val BlazeRod = <minecraft:blaze_rod>;
val NebulousHeart = <xreliquary:mob_ingredient:11>;
val WarpStone = <waystones:warp_stone>;
val Emerald = <ore:gemEmerald>;
val PurpleDye = <ore:dyePurple>;
val ManaDiamond = <botania:manaresource:2>;

val Hammers = <ore:hammerCrafting>;
Hammers.add(<vanillatools:tool.hammer_wood:*>);
Hammers.add(<vanillatools:tool.hammer_stone:*>);
Hammers.add(<vanillatools:tool.hammer_iron:*>);
Hammers.add(<vanillatools:tool.hammer_diamond:*>);
Hammers.add(<vanillatools:tool.hammer_gold:*>);
Hammers.add(<embers:tinker_hammer:*>);

val Plates = [
    <embers:plate_copper>,
    <embers:plate_lead>,
    <embers:plate_silver>,
    <embers:plate_dawnstone>,
    <embers:plate_iron>,
    <embers:plate_gold>,
    <embers:plate_aluminum>,
    <embers:plate_bronze>,
    <embers:plate_electrum>,
    <embers:plate_nickel>,
    <embers:plate_tin>,
    <thaumcraft:plate> * 2,
    <thaumcraft:plate:2> * 2,
    <thaumcraft:plate:3> * 2,
] as IItemStack[];

val PlateComponents = [
    <ore:ingotCopper>,
    <ore:ingotLead>,
    <ore:ingotSilver>,
    <ore:ingotDawnstone>,
    <ore:ingotIron>,
    <ore:ingotGold>,
    <ore:ingotAluminum>,
    <ore:ingotBronze>,
    <ore:ingotElectrum>,
    <ore:ingotNickel>,
    <ore:ingotTin>,
    <ore:ingotBrass>,
    <ore:ingotThaumium>,
    <ore:ingotVoid>
] as IIngredient[];

recipes.addShaped(BlazeRod, [[BlazePowder,BlazePowder,BlazePowder],[BlazePowder,BlazePowder,BlazePowder],[BlazePowder,BlazePowder,BlazePowder]]);

recipes.addShaped(WarpStone, [[PurpleDye,ManaDiamond,PurpleDye],[ManaDiamond,Emerald,ManaDiamond],[PurpleDye,ManaDiamond,PurpleDye]]);

ManaInfusion.addInfusion(WarpStone, NebulousHeart, 5000);

for i, item in Plates {
    recipes.remove(item);
    recipes.addShapeless(item, [PlateComponents[i], Hammers.anyDamage().transformDamage(1)]);
}
