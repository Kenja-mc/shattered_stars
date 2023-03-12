import mods.create.MixingManager;
import mods.create.SplashingManager;

// Alloy Kiln
// Andesite Alloy
<recipetype:immersiveengineering:alloy>.addRecipe("alloysmelter/andesite_alloy", <item:minecraft:andesite>, <tag:items:forge:nuggets/zinc>, 200, <item:create:andesite_alloy>* 2);
// Wrought Iron
<recipetype:immersiveengineering:alloy>.addRecipe("alloysmelter/wrought_iron_ingot", <tag:items:forge:ingots/iron>, <tag:items:forge:slag>, 200, <item:kubejs:wrought_iron_ingot>);

// Coke Oven
<recipetype:immersiveengineering:coke_oven>.addRecipe("charcoal_to_coke",       <tag:items:forge:charcoal>, 100, <item:immersiveengineering:coal_coke>, 250);
<recipetype:immersiveengineering:coke_oven>.addRecipe("planks_to_ash",          <tag:items:minecraft:planks>, 100, <item:supplementaries:ash>, 250);
<recipetype:immersiveengineering:coke_oven>.addRecipe("bonemeal_to_quicklime",  <item:minecraft:bone_meal>, 100, <item:kubejs:quicklime>, 250);

// Blast Furnace
<recipetype:immersiveengineering:blast_furnace>.removeByName("immersiveengineering:blastfurnace/steel");
<recipetype:immersiveengineering:blast_furnace>.removeByName("immersiveengineering:blastfurnace/steel_block");
<recipetype:immersiveengineering:blast_furnace>.addRecipe("pig_iron_ingot",     <tag:items:forge:ingots/iron>,      1000, <item:kubejs:pig_iron_ingot> * 2, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("cast_iron_ingot",    <tag:items:forge:ingots/pig_iron>,  1000, <item:kubejs:cast_iron_ingot> * 2, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("cast_iron_to_steel", <tag:items:forge:ingots/cast_iron>, 1000, <item:immersiveengineering:ingot_steel> * 2, <item:immersiveengineering:slag>);

// Remove washing gravel to get iron, replace with Zinc
<recipetype:create:splashing>.removeByName("create:splashing/gravel");
<recipetype:create:splashing>.addRecipe("splashing/gravel", [<item:minecraft:flint> % 25, <item:create:zinc_nugget> % 12], <item:minecraft:gravel>, 200);

// Add Mixing to get Treated Planks
<recipetype:create:mixing>.addRecipe("mixing/treated_planks", <constant:create:heat_condition:none>, 
    [<item:immersiveengineering:treated_wood_horizontal> * 8], 
    [<tag:items:minecraft:planks> * 8], 
    [<fluid:immersiveengineering:creosote> * 1000], 
    200
);

// Heated Mixing to get Andesite Alloy
<recipetype:create:mixing>.removeByName("create:mixing/andesite_alloy_from_zinc");
<recipetype:create:mixing>.removeByName("create:mixing/andesite_alloy");

<recipetype:create:mixing>.addRecipe("mixing/andesite_alloy", <constant:create:heat_condition:heated>, 
    [<item:create:andesite_alloy> * 4], 
    [<item:minecraft:andesite> * 2, <item:create:zinc_nugget>], 
    [], 
    200
);

// Replace Mechanical Bearing Recipe
craftingTable.remove(<item:create:mechanical_bearing>);
craftingTable.addShaped("crafting/kinetics/mechanical_bearing", <item:create:mechanical_bearing> * 2, [
    [<tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>],
    [<item:immersiveengineering:treated_wood_horizontal>, <item:create:shaft>, <item:immersiveengineering:treated_wood_horizontal>],
    [<item:immersiveengineering:treated_wood_horizontal>, <item:create:andesite_casing>, <item:immersiveengineering:treated_wood_horizontal>]
]);

// Replace Windmill Bearing Recipe
craftingTable.remove(<item:create:windmill_bearing>);
craftingTable.addShaped("crafting/kinetics/windmill_bearing", <item:create:windmill_bearing>, [
    [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>],
    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:shaft>, <item:minecraft:air>]
]);

// Replace Kelp in Create recipes with Rubber
craftingTable.remove(<item:create:belt_connector>);
craftingTable.addShaped("crafting/kinetics/belt_connector", <item:create:belt_connector> * 2, [
    [],
    [<item:thermal:cured_rubber>, <item:thermal:cured_rubber>, <item:thermal:cured_rubber>],
    [<item:thermal:cured_rubber>, <item:thermal:cured_rubber>, <item:thermal:cured_rubber>]
]);

craftingTable.remove(<item:create:andesite_funnel>);
craftingTable.addShaped("crafting/logistics/andesite_funnel", <item:create:andesite_funnel> * 2, [
    [<item:create:andesite_alloy>],
    [<item:thermal:cured_rubber>]
]);

craftingTable.remove(<item:create:andesite_tunnel>);
craftingTable.addShaped("crafting/logistics/andesite_tunnel", <item:create:andesite_tunnel> * 2, [
    [<item:create:andesite_alloy>, <item:create:andesite_alloy>],
    [<item:thermal:cured_rubber>, <item:thermal:cured_rubber>]
]);

craftingTable.remove(<item:create:spout>);
craftingTable.addShaped("crafting/kinetics/spout", <item:create:spout>, [
    [<item:create:copper_casing>],
    [<item:thermal:cured_rubber>]
]);

craftingTable.remove(<item:create:hose_pulley>);
craftingTable.addShaped("crafting/kinetics/hose_pulley", <item:create:hose_pulley>, [
    [<item:create:copper_casing>],
    [<item:thermal:cured_rubber_block>],
    [<tag:items:forge:plates/copper>]
]);

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