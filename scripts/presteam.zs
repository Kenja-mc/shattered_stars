import mods.create.MixingManager;
import mods.create.SplashingManager;
import mods.create.CompactingManager;

// Alloy Kiln
// Andesite Alloy
<recipetype:immersiveengineering:alloy>.addRecipe("alloysmelter/andesite_alloy_zinc", <item:minecraft:andesite>, <tag:items:forge:nuggets/zinc>, 200, <item:create:andesite_alloy>* 4);
<recipetype:immersiveengineering:alloy>.addRecipe("alloysmelter/andesite_alloy_iron", <item:minecraft:andesite>, <tag:items:forge:nuggets/iron>, 200, <item:create:andesite_alloy>* 4);
// Wrought Iron
<recipetype:immersiveengineering:alloy>.addRecipe("alloysmelter/wrought_iron_ingot", <tag:items:forge:ingots/iron>, <tag:items:forge:slag>, 200, <item:kubejs:wrought_iron_ingot>);

// Coke Oven
<recipetype:immersiveengineering:coke_oven>.addRecipe("charcoal_to_coke",       <tag:items:forge:charcoal>, 100, <item:immersiveengineering:coal_coke>, 250);
<recipetype:immersiveengineering:coke_oven>.addRecipe("planks_to_ash",          <tag:items:minecraft:planks>, 100, <item:supplementaries:ash>, 250);
<recipetype:immersiveengineering:coke_oven>.addRecipe("bonemeal_to_quicklime",  <item:minecraft:bone_meal>, 100, <item:kubejs:quicklime>, 250);

// Blast Furnace
<recipetype:immersiveengineering:blast_furnace>.removeByName("immersiveengineering:blastfurnace/steel");
<recipetype:immersiveengineering:blast_furnace>.removeByName("immersiveengineering:blastfurnace/steel_block");
<recipetype:immersiveengineering:blast_furnace>.addRecipe("iron_to_steel",      <tag:items:forge:ingots/iron> * 2,  1000, <item:immersiveengineering:ingot_steel>, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("pig_iron_to_steel",  <tag:items:forge:ingots/pig_iron>,  500, <item:immersiveengineering:ingot_steel>, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("cast_iron_to_steel", <tag:items:forge:ingots/cast_iron>, 250, <item:immersiveengineering:ingot_steel>, <item:immersiveengineering:slag>);

// Remove washing gravel to get iron, replace with Zinc
<recipetype:create:splashing>.removeByName("create:splashing/gravel");
<recipetype:create:splashing>.addRecipe("splashing/gravel", [<item:minecraft:flint> % 25, <item:create:zinc_nugget> % 12], <item:minecraft:gravel>, 200);

// Mechanical Mixer

// Treated Planks
<recipetype:create:mixing>.addRecipe("mixing/treated_planks", <constant:create:heat_condition:none>, 
    [<item:immersiveengineering:treated_wood_horizontal> * 8], 
    [<tag:items:minecraft:planks> * 8], 
    [<fluid:immersiveengineering:creosote> * 1000], 
    200
);

// Pig Iron
craftingTable.addShapeless("pig_iron", <item:kubejs:pig_iron_ingot> * 2, [<tag:items:balm:iron_ingots>, <tag:items:forge:slag>]);

// Molten Cast Iron
<recipetype:create:mixing>.addRecipe("mixing/molten_cast_iron", <constant:create:heat_condition:heated>, 
    [<fluid:kubejs:molten_cast_iron> * 288],
    [<item:kubejs:pig_iron_ingot>, <tag:items:forge:slag>], 
    [],
    200
);

// Cast Iron Ingot
<recipetype:create:filling>.addRecipe("filling/cast_iron_ingot", 
    <item:kubejs:cast_iron_ingot>, 
    <tag:items:forge:ingots/iron>, 
    <fluid:kubejs:molten_cast_iron> * 144, 
    200
);

<recipetype:create:mixing>.addRecipe("mixing/andesite_alloy_from_iron", <constant:create:heat_condition:none>, 
    [<item:create:andesite_alloy>],
    [<item:minecraft:iron_nugget>, <item:minecraft:andesite>], 
    [],
    200
);

<recipetype:create:mixing>.addRecipe("mixing/andesite_alloy_from_zinc", <constant:create:heat_condition:none>, 
    [<item:create:andesite_alloy>],
    [<tag:items:forge:nuggets/zinc>, <item:minecraft:andesite>], 
    [],
    200
);

<recipetype:create:mixing>.addRecipe("mixing/rubber_from_plants", <constant:create:heat_condition:none>, 
    [<item:thermal:rubber> * 2],
    [<tag:items:createaddition:plants> * 8], 
    [<fluid:minecraft:water> * 1000],
    200
);

<recipetype:create:mixing>.addRecipe("mixing/rubber_from_flowers", <constant:create:heat_condition:none>, 
    [<item:thermal:rubber> * 2],
    [<tag:items:minecraft:flowers> * 8], 
    [<fluid:minecraft:water> * 1000],
    200
);

// Rubber from latex
craftingTable.removeByName("thermal:rubber_3");
<recipetype:create:compacting>.addRecipe("compacting/rubber", <constant:create:heat_condition:none>, 
    [<item:thermal:rubber_block>], 
    [], 
    [<fluid:thermal:latex> * 1000], 
    200
);

// Smelt Rubber Block for cured rubber'
furnace.addRecipe("smelting/cured_rubber_block_from_smelting", <item:thermal:cured_rubber_block>, <item:thermal:rubber_block>, 0.8, 200);

// Heated Mixing to get Andesite Alloy
<recipetype:create:mixing>.removeByName("create:mixing/andesite_alloy_from_zinc");
<recipetype:create:mixing>.removeByName("create:mixing/andesite_alloy");
<recipetype:create:mixing>.addRecipe("mixing/andesite_alloy", <constant:create:heat_condition:heated>, 
    [<item:create:andesite_alloy> * 6], 
    [<item:minecraft:andesite> * 2, <item:create:zinc_nugget>], 
    [], 
    200
);

// Replace Wrench recipe to use gold ingots instead of plates
craftingTable.remove(<item:create:wrench>);
craftingTable.addShaped("crafting/kinetics/wrench", <item:create:wrench>, [
    [<tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>],
    [<tag:items:forge:ingots/gold>, <item:create:cogwheel>],
    [<item:minecraft:air>, <tag:items:balm:wooden_rods>]
]);


// Replace Mechanical Bearing Recipe
craftingTable.remove(<item:create:mechanical_bearing>);
craftingTable.addShaped("crafting/kinetics/mechanical_bearing", <item:create:mechanical_bearing> * 2, [
    [<item:minecraft:air>, <tag:items:forge:treated_wood_slab>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:rods/steel>, <item:minecraft:air>]
]);

// Replace Windmill Bearing Recipe
craftingTable.remove(<item:create:windmill_bearing>);
craftingTable.addShaped("crafting/kinetics/windmill_bearing", <item:create:windmill_bearing>, [
    [<item:minecraft:air>, <tag:items:forge:treated_wood_slab>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:bookshelf:stones>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:rods/steel>, <item:minecraft:air>]
]);

// Replace Large Waterwheel Recipe
craftingTable.remove(<item:create:large_water_wheel>);
craftingTable.addShaped("crafting/kinetics/large_water_wheel", <item:create:large_water_wheel>, [
    [<tag:items:forge:treated_wood>, <tag:items:forge:treated_wood>, <tag:items:forge:treated_wood>],
    [<tag:items:forge:treated_wood>, <item:create:water_wheel>, <tag:items:forge:treated_wood>],
    [<tag:items:forge:treated_wood>, <tag:items:forge:treated_wood>, <tag:items:forge:treated_wood>]
]);

// Replace Kelp in Create recipes with Rubber
// craftingTable.remove(<item:create:belt_connector>);
craftingTable.addShaped("crafting/kinetics/belt_connector", <item:create:belt_connector> * 16, [
    [],
    [<item:thermal:cured_rubber>, <item:thermal:cured_rubber>, <item:thermal:cured_rubber>],
    [<item:thermal:cured_rubber>, <item:thermal:cured_rubber>, <item:thermal:cured_rubber>]
]);

// craftingTable.remove(<item:create:andesite_funnel>);
// craftingTable.addShaped("crafting/logistics/andesite_funnel", <item:create:andesite_funnel> * 2, [
//     [<item:create:andesite_alloy>],
//     [<item:thermal:cured_rubber>]
// ]);

// craftingTable.remove(<item:create:andesite_tunnel>);
// craftingTable.addShaped("crafting/logistics/andesite_tunnel", <item:create:andesite_tunnel> * 2, [
//     [<item:create:andesite_alloy>, <item:create:andesite_alloy>],
//     [<item:thermal:cured_rubber>, <item:thermal:cured_rubber>]
// ]);

// craftingTable.remove(<item:create:spout>);
// craftingTable.addShaped("crafting/kinetics/spout", <item:create:spout>, [
//     [<item:create:copper_casing>],
//     [<item:thermal:cured_rubber>]
// ]);

// craftingTable.remove(<item:create:hose_pulley>);
// craftingTable.addShaped("crafting/kinetics/hose_pulley", <item:create:hose_pulley>, [
//     [<item:create:copper_casing>],
//     [<item:thermal:cured_rubber_block>],
//     [<tag:items:forge:plates/copper>]
// ]);

craftingTable.remove(<item:create:brass_funnel>);
craftingTable.addShaped("crafting/logistics/brass_funnel", <item:create:brass_funnel> * 2, [
    [<item:create:electron_tube>],
    [<item:create:brass_ingot>],
    [<item:thermal:cured_rubber>]
]);

craftingTable.remove(<item:create:brass_tunnel>);
craftingTable.addShaped("crafting/logistics/brass_tunnel", <item:create:brass_tunnel> * 2, [
    [<item:create:electron_tube>],
    [<item:create:brass_ingot>, <item:create:brass_ingot>],
    [<item:thermal:cured_rubber>, <item:thermal:cured_rubber>]
]);