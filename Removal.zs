import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;
import mods.jei.JEI;

// Removing mutationcraft
craftingTable.removeByModid("mutationcraft_origins");
JEI.hideMod("mutationcraft_origins");

// Molds
craftingTable.removeByName("immersiveengineering:crafting/blueprint_molds");
craftingTable.removeByName("immersiveengineering:crafting/blueprint_components");
craftingTable.removeByName("immersiveengineering:crafting/blueprint_bullets");

// Artifacts
JEI.hideIngredient(<item:artifacts:everlasting_beef>);
JEI.hideIngredient(<item:artifacts:eternal_steak>);

// Create Addition extra items
JEI.hideIngredient(<item:createaddition:iron_rod>);
JEI.hideIngredient(<item:createaddition:copper_wire>);

// Experience Tools
JEI.hideIngredient(<item:create_sa:experience_pickaxe>);
craftingTable.removeByName("create_sa:experience_pickaxe_recipe");
JEI.hideIngredient(<item:create_sa:experience_shovel>);
craftingTable.removeByName("create_sa:experience_shovel_recipe");
JEI.hideIngredient(<item:create_sa:experience_axe>);
craftingTable.removeByName("create_sa:experience_axe_recipe");
JEI.hideIngredient(<item:create_sa:experience_sword>);
craftingTable.removeByName("create_sa:experience_sword_recipe");

// IE Rods
craftingTable.removeByName("immersiveengineering:crafting/stick_iron");
craftingTable.removeByName("immersiveengineering:crafting/stick_steel");
craftingTable.removeByName("immersiveengineering:crafting/stick_aluminum");

// Removing mapperbase
craftingTable.removeByModid("mapperbase");
JEI.hideMod("mapperbase");

// Removing aluminium from default smelting recipe
blastFurnace.remove(<item:immersiveengineering:ingot_aluminum>);
furnace.remove(<item:immersiveengineering:ingot_aluminum>);


// Turrets
craftingTable.removeByName("immersiveengineering:crafting/empty_shell");
<recipetype:immersiveengineering:bottling_machine>.removeByName("immersiveengineering:bottling/empty_shell");
<recipetype:immersiveengineering:blueprint>.removeByName("immersiveengineering:blueprint/bullet_homing");
<recipetype:immersiveengineering:blueprint>.removeByName("immersiveengineering:blueprint/bullet_wolfpack");
JEI.hideIngredient(<item:immersiveengineering:homing>);
JEI.hideIngredient(<item:immersiveengineering:wolfpack>);

// Remove default paper crafting
craftingTable.removeByName("minecraft:paper");
craftingTable.removeByName("quark:tweaks/crafting/utility/bent/paper");
<recipetype:create:pressing>.removeByName("create:pressing/sugar_cane");

// Remove eye of ender
craftingTable.removeByName("minecraft:ender_eye");
JEI.hideIngredient(<item:minecraft:ender_eye>);

// Simple Planes
craftingTable.removeByName("simpleplanes:folding");
JEI.hideIngredient(<item:simpleplanes:folding>);

// Others
craftingTable.removeByName("arsenals_of_the_apocalypse:gunpowder");