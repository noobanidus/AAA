for item in loadedMods["extendedcrafting"].items {
    recipes.remove(item);
}

recipes.addShaped(<extendedcrafting:handheld_table>, [[null, <ore:workbench>, null], [<ore:stickWood>, null, null], [null, null, null]]);


