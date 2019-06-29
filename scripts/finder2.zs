import crafttweaker.recipes.ICraftingRecipe;    
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// ZenScroll loop finder, by comp500.
// Finds crafting loops added by mods and creates ZenScroll scroll groups for them.
// Requires: https://minecraft.curseforge.com/projects/zenscroll
// Revision 4: improved comments

// To use:
// Put this file in your scripts folder, then launch the game.
// The loops are printed in the CraftTweaker log once the game has started.
// To use the generated script, copy the code block from the log and paste it into
//   a ZenScript script. You will need to add the following to the top of your file:
//   import mods.zenscroll.ZenScroll;
// Don't keep this in your game as it slows down the game launch.

// Post a comment if I did something bad.
// Licensed MIT.

print("Finding ZenScroll crafting loops...");

var nuggetList as IItemStack[] = [];
var plateList as IItemStack[] = [];
var blockList as IItemStack[] = [];

for recipe in recipes.all {
    val output = recipe.output as IItemStack;
    val name = output.displayName.toLowerCase() as string;
    if ("nugget" in name) {
        nuggetList += output;
    }
    if ("plate" in name) {
        plateList += output;
    }
    if ("block" in name) {
        blockList += output;
    }
}

print ("Nuggets to remove:\r\n");
for item in nuggetList {
    print("recipes.remove(" ~ item.commandString ~ ")\r\n");
}
print ("Plates to remove:\r\n");
for item in plateList {
    print("recipes.remove(" ~ item.commandString ~ ")\r\n");
}
print ("Blocks to remove:\r\n");
for item in blockList {
    print("recipes.remove(" ~ item.commandString ~ ")\r\n");
}
