import mods.create.MixingManager;
import crafttweaker.api.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.misc.Composter;

//Resources
//Iron
<tag:items:forge:storage_blocks/iron>.add(<item:minecraft:iron_block>);
<tag:items:forge:ingots/iron>.add(<item:minecraft:iron_ingot>);
<tag:items:forge:plates/iron>.add(<item:create:iron_sheet>);
<tag:items:forge:plates/iron>.add(<item:immersiveengineering:plate_iron>);
<tag:items:forge:nuggets/iron>.add(<item:minecraft:iron_nugget>);

//Copper
<tag:items:forge:storage_blocks/copper>.add(<item:minecraft:copper_block>);
<tag:items:forge:ingots/copper>.add(<item:minecraft:copper_ingot>);
<tag:items:forge:plates/copper>.add(<item:create:copper_sheet>);
<tag:items:forge:plates/copper>.add(<item:immersiveengineering:plate_copper>);
<tag:items:forge:nuggets/copper>.add(<item:create:copper_nugget>);
<tag:items:forge:nuggets/copper>.add(<item:immersiveengineering:nugget_copper>);

//Gold
<tag:items:forge:storage_blocks/gold>.add(<item:minecraft:gold_block>);
<tag:items:forge:ingots/gold>.add(<item:minecraft:gold_ingot>);
<tag:items:forge:plates/gold>.add(<item:create:golden_sheet>);
<tag:items:forge:plates/gold>.add(<item:immersiveengineering:plate_gold>);
<tag:items:forge:nuggets/gold>.add(<item:minecraft:gold_nugget>);

//Zinc
<tag:items:forge:storage_blocks/zinc>.add(<item:create:zinc_block>);
<tag:items:forge:ingots/zinc>.add(<item:create:zinc_ingot>);
<tag:items:forge:plates/zinc>.add(<item:createaddition:zinc_sheet>);
<tag:items:forge:plates/zinc>.add(<item:createdeco:zinc_sheet>);
<tag:items:forge:nuggets/zinc>.add(<item:create:zinc_nugget>);

//Brass
<tag:items:forge:storage_blocks/brass>.add(<item:create:brass_block>);
<tag:items:forge:ingots/brass>.add(<item:create:brass_ingot>);
<tag:items:forge:plates/brass>.add(<item:create:brass_sheet>);
<tag:items:forge:nuggets/brass>.add(<item:create:brass_nugget>);

//Aluminium
<tag:items:forge:storage_blocks/aluminium>.add(<item:immersiveengineering:storage_aluminum>);
<tag:items:forge:storage_blocks/aluminium>.add(<item:createindustry:aluminum_block>);
<tag:items:forge:ingots/aluminium>.add(<item:createindustry:aluminum_ingot>);
<tag:items:forge:ingots/aluminium>.add(<item:immersiveengineering:ingot_aluminum>);
<tag:items:forge:plates/aluminium>.add(<item:immersiveengineering:plate_aluminum>);
<tag:items:forge:nuggets/aluminium>.add(<item:immersiveengineering:nugget_aluminum>);

//Steel
<tag:items:forge:storage_blocks/steel>.add(<item:immersiveengineering:storage_steel>);
<tag:items:forge:storage_blocks/steel>.add(<item:alloyed:steel_block>);
<tag:items:forge:storage_blocks/steel>.add(<item:createindustry:steel_block>);
<tag:items:forge:ingots/steel>.add(<item:createindustry:steel_ingot>);
<tag:items:forge:ingots/steel>.add(<item:alloyed:steel_ingot>);
<tag:items:forge:ingots/steel>.add(<item:immersiveengineering:ingot_steel>);
<tag:items:forge:plates/steel>.add(<item:alloyed:steel_sheet>);
<tag:items:forge:plates/steel>.add(<item:immersiveengineering:plate_steel>);
<tag:items:forge:nuggets/steel>.add(<item:alloyed:steel_nugget>);
<tag:items:forge:nuggets/steel>.add(<item:immersiveengineering:nugget_steel>);

//Cast Iron
<tag:items:forge:storage_blocks/cast_iron>.add(<item:createdeco:cast_iron_block>);
<tag:items:forge:storage_blocks/cast_iron>.add(<item:createindustry:cast_iron_block>);
<tag:items:forge:ingots/cast_iron>.add(<item:createdeco:cast_iron_ingot>);
<tag:items:forge:ingots/cast_iron>.add(<item:createindustry:cast_iron_ingot>);
<tag:items:forge:plates/cast_iron>.add(<item:createdeco:cast_iron_sheet>);
<tag:items:forge:nuggets/cast_iron>.add(<item:createdeco:cast_iron_nugget>);

//Blaze Rod
<recipetype:create:compacting>.addRecipe("blaze_rod", <constant:create:heat_condition:none>, [<item:minecraft:blaze_rod> * 1], [<item:minecraft:blaze_powder> * 3], [<fluid:minecraft:lava> * 250], 200);

//Blaze Powder
<recipetype:create:mixing>.addRecipe("blaze_powder", <constant:create:heat_condition:none>, [<item:minecraft:blaze_powder> * 1], [<tag:items:forge:nuggets/brass> * 1], [<tag:items:forge:nuggets/zinc> * 1], [<tag:items:forge:nuggets/gold> * 1], [<fluid:minecraft:lava> * 500], 200);

//Hell Gunpowder
craftingTable.remove(<item:scorchedguns:hell_gunpowder>);
<recipetype:create:haunting>.addRecipe("hell_gunpowder", [<item:scorchedguns:hell_gunpowder>], <item:minecraft:blaze_powder>, 200);

//Nitro Dust
craftingTable.remove(<item:scorchedguns:nitro_dust>);
craftingTable.addShapeless("ec_round", <item:scorchedguns:ec_round>,
    [<item:scorchedguns:flechette>, <item:scorchedguns:pure_gunpowder>]);
<recipetype:create:mixing>.addRecipe("nitro_dust", <constant:create:heat_condition:none>, [<item:scorchedguns:nitro_dust> * 2], [<item:minecraft:blaze_powder> * 1], [<item:scorchedguns:hell_gunpowder> * 1], [<item:scorchedguns:pure_gunpowder> * 1], [<fluid:minecraft:lava> * 250], 200);

// High Carbon Steel Alloy
//<recipetype:immersiveengineering:arc_furnace>.addRecipe("ie_arcfurnace_high_carbon_steel_alloy", <tag:items:forge:ingots/steel>, [<item:contenttweaker:polyethylene>], 600, 102400, [<item:contenttweaker:high_carbon_steel_alloy>], <item:minecraft:air> );

// Resistant Fabric
//craftingTable.addShapeless("resistant_fabric", <item:contenttweaker:resistant_fabric>,
//    [<item:contenttweaker:resistant_fiber>, <item:contenttweaker:resistant_fiber>, <item:contenttweaker:resistant_fiber>, <item:contenttweaker:resistant_fiber>]);

// Resistant Fiber
<recipetype:immersiveengineering:arc_furnace>.addRecipe("ie_arcfurnace_resistant_fiber", <item:contenttweaker:polyethylene>, [<item:minecraft:air>], 200, 102400, [<item:contenttweaker:resistant_fiber>], <item:minecraft:air> );

// Poison Potato for Potion of Harming
<recipetype:create:mixing>.addRecipe("poison_potato_healing", <constant:create:heat_condition:heated>, [<fluid:create:potion>.withTag({Potion:"minecraft:harming"}) * 1000], [<item:minecraft:poisonous_potato>], [<fluid:create:potion>.withTag({Potion:"minecraft:healing"}) * 1000], 100);

// Composter
composter.setValue(<item:minecraft:rotten_flesh>, 1);

// Wool to string
craftingTable.addShapeless("string", <item:minecraft:string> * 2, [<tag:items:minecraft:wool>]);

// Rotten Flesh to Leather
furnace.addRecipe("leather", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 1.0, 100);

// Hides
// Bears
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bear_ashen>);
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bear_black>);
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bear_brown>);
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bear_white>);

// Cats
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bigcat_jaguar>);
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bigcat_leopard>);
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bigcat_lion>);
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bigcat_panther>);
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bigcat_puma>);
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bigcat_snow_leopard>);
<tag:items:forge:tough_hides>.add(<item:untamedwilds:hide_bigcat_tiger>);

# Mutation
<tag:items:forge:mutation_hides>.add(<item:mutationcraft:bedridden_hide>);
<tag:items:forge:mutation_hides>.add(<item:mutationcraft:hidden_hide>);


// Seed oil
<recipetype:create:compacting>.removeByName("createaddition:compacting/seed_oil");
<recipetype:create:compacting>.addRecipe("seed_oil", <constant:create:heat_condition:none>, [<fluid:createaddition:seed_oil> * 50], [<tag:items:forge:seeds> * 2], [], 100);

// Bioethanol
<recipetype:create:mixing>.removeByName("createaddition:mixing/bioethanol");
<recipetype:create:mixing>.addRecipe("bioethanol", <constant:create:heat_condition:none>, [<fluid:createaddition:bioethanol> * 60], [<item:createaddition:biomass>, <item:minecraft:sugar>], [], 100);

// Fats
<tag:items:minecraft:animal_fat>.add(<item:untamedwilds:material_fat>);

// Gold Wire
craftingTable.addShapeless("ie_gold_wire", <item:createaddition:gold_wire>,
    [<tag:items:forge:plates/gold>, <item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);

// Iron Wire
craftingTable.addShapeless("ie_iron_wire", <item:createaddition:iron_wire>,
    [<tag:items:forge:plates/iron>, <item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);

// Steel for mixing
<recipetype:create:mixing>.addRecipe("steel_ingot", <constant:create:heat_condition:superheated>, [<item:immersiveengineering:ingot_steel>], [<tag:items:forge:dusts/coal_coke>, <tag:items:forge:ingots/iron>], [], 256);

// Coke dust
<recipetype:create:milling>.addRecipe("coke_dust", [<item:immersiveengineering:dust_coke>], <item:immersiveengineering:coal_coke>, 256);

// Wheat Flour
<recipetype:immersiveengineering:crusher>.addRecipe("ie_flour", <tag:items:forge:crops/wheat>, 256, <item:create:wheat_flour> * 2, <item:create:wheat_flour> * 2 % 50, <item:minecraft:wheat_seeds> % 50 );

// Diamond Grit
<recipetype:immersiveengineering:crusher>.addRecipe("diamond_grit", <tag:items:forge:gems/diamond>, 850, <item:createaddition:diamond_grit> );

// Obsidian Powder
<recipetype:immersiveengineering:crusher>.addRecipe("obsidian_powder", <tag:items:forge:obsidian>, 1700, <item:create:powdered_obsidian> * 2, <item:minecraft:obsidian> % 50 );

// Electron Tube (Vacuum Tube)
craftingTable.removeByName("create:crafting/materials/electron_tube");


<recipetype:immersiveengineering:blueprint>.removeByName("immersiveengineering:blueprint/component_electronic");
<recipetype:immersiveengineering:blueprint>.addRecipe("component_electronic", "components", [<item:immersiveengineering:electron_tube>, <tag:items:forge:wires/electrum>, <tag:items:forge:treated_wood_slab>, <tag:items:forge:dusts/redstone>], <item:immersiveengineering:component_electronic>);

<recipetype:immersiveengineering:blueprint>.removeByName("immersiveengineering:blueprint/electron_tube");
<recipetype:immersiveengineering:blueprint>.addRecipe("electron_tube", "components", [<tag:items:forge:glass>, <item:create:polished_rose_quartz>, <tag:items:forge:plates/nickel>, <tag:items:forge:wires/electrum>], <item:immersiveengineering:electron_tube> * 3);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("electron_tube")
                                                      .transitionTo(<item:contenttweaker:incomplete_electron_tube>)
                                                      .require(<item:create:polished_rose_quartz>)
                                                      .loops(1)
                                                      .addOutput(<item:create:electron_tube> * 3, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/nickel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/copper>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:glass>))
													  );
													  
// Electronic Component

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("electronic_component")
                                                      .transitionTo(<item:contenttweaker:incomplete_component_electronic>)
                                                      .require(<tag:items:forge:treated_wood_slab>)
                                                      .loops(1)
                                                      .addOutput(<item:immersiveengineering:component_electronic>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:wires/electrum>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:dusts/redstone>))
													  );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("advanced_electronic_component")
                                                      .transitionTo(<item:contenttweaker:incomplete_component_electronic_adv>)
                                                      .require(<tag:items:forge:plates/plastic>)
                                                      .loops(1)
                                                      .addOutput(<item:immersiveengineering:component_electronic_adv>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:wires/aluminum>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))
													  );

Replacer.forMods(["create", "createaddition"]).suppressWarnings().replace(<item:create:electron_tube>, <item:immersiveengineering:component_electronic>).execute();

craftingTable.removeByName("create:crafting/kinetics/mechanical_arm");
craftingTable.addShaped("mechanical_arm", <item:create:mechanical_arm>,
    [[<tag:items:forge:plates/brass>, <tag:items:forge:plates/brass>, <item:create:andesite_alloy>],
    [<tag:items:forge:plates/brass>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:create:precision_mechanism>, <item:immersiveengineering:component_electronic>, <item:create:brass_casing>]]);
	
craftingTable.removeByName("create:crafting/kinetics/rotation_speed_controller");
craftingTable.addShaped("rotation_speed_controller", <item:create:rotation_speed_controller>,
    [[<item:minecraft:air>, <item:create:precision_mechanism>, <item:minecraft:air>],
    [<item:create:brass_casing>, <item:immersiveengineering:component_electronic>, <item:create:brass_casing>]]);

// Others

// Train station from Create
craftingTable.removeByName("create:crafting/kinetics/track_station");
craftingTable.addShaped("track_station", <item:create:track_station>,
    [[<item:create:railway_casing>, <item:minecraft:compass>, <item:create:railway_casing>],
    [<item:create:railway_casing>, <item:create_sa:steam_engine>, <item:create:railway_casing>],
    [<item:create:railway_casing>, <item:create_sa:heat_engine>, <item:create:railway_casing>]]);

// Plates should be only crafted via pressing
craftingTable.removeByName("immersiveengineering:crafting/plate_iron_hammering");
craftingTable.removeByName("immersiveengineering:crafting/plate_steel_hammering");
craftingTable.removeByName("immersiveengineering:crafting/plate_silver_hammering");
craftingTable.removeByName("immersiveengineering:crafting/plate_electrum_hammering");
craftingTable.removeByName("immersiveengineering:crafting/plate_uranium_hammering");
craftingTable.removeByName("immersiveengineering:crafting/plate_copper_hammering");
craftingTable.removeByName("immersiveengineering:crafting/plate_lead_hammering");
craftingTable.removeByName("immersiveengineering:crafting/plate_nickel_hammering");
craftingTable.removeByName("immersiveengineering:crafting/plate_gold_hammering");
craftingTable.removeByName("immersiveengineering:crafting/plate_constantan_hammering");
craftingTable.removeByName("immersiveengineering:crafting/plate_aluminum_hammering");
