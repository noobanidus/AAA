#!/usr/bin/env python

import json

import os

for fname in os.listdir("."):
    if not fname.endswith(".json"):
        continue

    with open(fname) as o:
        data = json.load(o)

    keys = ["ruby", "amber", "tanzanite", "peridot", "topza", "sapphire", "malachite", "poison_lakes", "amber", "barley", "berry_bushes", "biome_essence", "blue_milk_caps", "bramble", "bushes", "cattail", "flax", "malachite", "peridot", "poison_ivy", "poison_lakes", "quicksand", "ruby", "sapphire", "tanzanite", "thorns", "topaz"]

    if data.has_key("generators"):
        for key in data["generators"].iterkeys():
            if key in keys:
                data["generators"][key]["enable"] = False

    with open(fname, "w") as o:
        json.dump(data, o)
