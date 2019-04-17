import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// ZenScroll loop finder, by comp500.
// Revision 3: added code block production

// To use:
// Put this file in your scripts folder, then launch the game.
// The loops are printed in the CraftTweaker log.
// Don't keep this in your game as it slows down the game launch.

// Post a comment if I did something bad.
// Licensed MIT.

print("Finding ZenScroll crafting loops...");

var i = 0;
val itemList = {} as IItemStack[IItemStack];
for recipe in recipes.all {
	if (recipe.ingredients1D.length == 1) {
		val ingredient = recipe.ingredients1D[0] as IIngredient;
		if (!isNull(ingredient)) {
			for item in ingredient.items {
				itemList[item] = recipe.output;
			}
		}
	}
}

var alreadyFound = [] as IItemStack[];
// Attribution not required, but it helps others find this.
var codeLines = "Code block:\r\n// Made with https://gist.github.com/comp500/a13de85f2ca96e6665c1c5de3cbebf0e\r\n";
for key, value in itemList {
	if (!(alreadyFound has key)) {
		var currentItem = value;
		var isALoop = false;
		var pendingItems = [key] as IItemStack[];
		var itemTraverseIndex = -1 as int;

		while (itemTraverseIndex < 0) {
			if (isNull(currentItem)) {
				isALoop = false;
				break;
			}
			if (!(itemList has currentItem)) {
				isALoop = false;
				break;
			}
			pendingItems += currentItem;
			currentItem = itemList[currentItem];
			// Find index of any element in loop that matches
			// If it is a well-formed loop, the last + 1 element will match the first
			// If there are elements before the start of the loop (e.g. Seared Stone), skip them
			for i, item in pendingItems {
				if (!isNull(currentItem) && item.matches(currentItem)) {
					itemTraverseIndex = i;
				}
			}
			isALoop = true;
		}
		if (isALoop && ((pendingItems.length - itemTraverseIndex) < 2)) {
			isALoop = false;
		}
		if (isALoop) {
			var loopString = "";
			for i, printItem in pendingItems {
				// Skip items not in loop
				if (itemTraverseIndex > 0) {
					alreadyFound += printItem;
					itemTraverseIndex -= 1;
				} else {
					alreadyFound += printItem;
					loopString += printItem.commandString;
					if (i != (pendingItems.length - 1)) {
						loopString += ", ";
					}
				}
			}
			print("Loop found: " ~ loopString);
			codeLines += "ZenScroll.add(" ~ loopString ~ ");\r\n";
		}
	}
}
print(codeLines);
