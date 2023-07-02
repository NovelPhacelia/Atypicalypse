import mods.jei.JEI;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.item.IItemStack;

/*
// SequencedAssemblyManager.addRecipe(builder as SequencedAssemblyRecipeBuilder) as void
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_blast_brick")
                                                      .transitionTo(<item:create:incomplete_tracks>)
                                                      .require(<item:create:andesite_alloy>)
                                                      .loops(3)
                                                      .addOutput(<item:create:large_cogwheel> * 6, 32)
                                                      .addOutput(<item:create:andesite_alloy>, 2)
                                                      .addOutput(<item:minecraft:andesite>, 1)
                                                      .addOutput(<item:create:cogwheel>, 1)
                                                      .addOutput(<item:minecraft:stick>, 1)
                                                      .addOutput(<item:minecraft:iron_nugget>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:planks>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:wooden_buttons>))
                                                      .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water> * 50)));
*/

//Scorched Guns
//Powder and ball
craftingTable.addShapeless("Powder_And_Ball", <item:scorchedguns:powder_and_ball>,
    [<tag:items:forge:gunpowder>, <tag:items:forge:gravel>, <tag:items:forge:nuggets/copper>]);

//Simple Bullet
craftingTable.remove(<item:scorchedguns:simple_bullet>);
craftingTable.addShapeless("Simple Bullet", <item:scorchedguns:simple_bullet>,
    [<item:minecraft:gunpowder>, <tag:items:forge:nuggets/iron>, <item:minecraft:paper>]);

//Shotbolt
craftingTable.remove(<item:scorchedguns:shotbolt>);
craftingTable.addShapeless("Shotbolt", <item:scorchedguns:shotbolt>,
    [<item:minecraft:gunpowder>, <item:minecraft:arrows>]);

//Volatile Scrap
craftingTable.remove(<item:scorchedguns:volatile_scrap>);
craftingTable.addShapeless("Volatile Scrap", <item:scorchedguns:volatile_scrap>,
    [<item:minecraft:gunpowder>, <tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>]);

//Encased Fire
<recipetype:cgm:workbench>.remove(<item:scorchedguns:encased_fire>);
craftingTable.addShapeless("Encased Fire", <item:scorchedguns:encased_fire>,
    [<item:minecraft:blaze_powder>, <item:minecraft:iron_ingot>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("Encased Fire")
                                                      .transitionTo(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<item:minecraft:blaze_powder>)
                                                      .loops(1)
                                                      .addOutput(<item:scorchedguns:encased_fire>, 2)
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:lava> * 50)));
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/iron>))
													  );

//Rivet
craftingTable.remove(<item:scorchedguns:rivet>);
craftingTable.addShapeless("Rivet", <item:scorchedguns:rivet> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:pressing>.addRecipe("Rivet", [<item:scorchedguns:rivet>, <item:minecraft:apple>, (<item:minecraft:dirt> * 2) % 12], <item:minecraft:dirt>, 200);
//check this recipe

//Flechette
craftingTable.remove(<item:scorchedguns:flechette>);
craftingTable.addShapeless("Flechette", <item:scorchedguns:flechette> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>])
//nugget nugget cut

//Flechette Round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:flechette_round>);
craftingTable.addShapeless("Flechette Round", <item:scorchedguns:flechette_round>,
    [<item:scorchedguns:flechette>, <item:minecraft:gunpowder>, <tag:items:forge:nuggets/brass>]);
//brass gunpowder flechette

//EC Round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ec_round>);
craftingTable.addShapeless("EC Round", <item:scorchedguns:ec_round>,
    [<item:scorchedguns:flechette>, <item:scorchedguns:pure_gunpowder>]);
//flechette gunpowder

//Scorched Bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:scorched_bullet>);
craftingTable.addShapeless("Scorched Bullet", <item:scorchedguns:scorched_bullet>,
    [<item:scorchedguns:scorched_bronze_nugget>, <item:scorchedguns:pure_gunpowder>]);

//Scorched Big Bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:scorched_big_bullet>);
craftingTable.addShapeless("Scorched Big Bullet", <item:scorchedguns:scorched_big_bullet>,
    [<item:scorchedguns:scorched_bronze_nugget>, <item:scorchedguns:pure_gunpowder>, <tag:items:forge:sand>]);

//Scorched Shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:scorched_shell>);
craftingTable.addShapeless("Scorched Shell", <item:scorchedguns:scorched_shell>,
    [<item:scorchedguns:scorched_bronze_nugget>, <item:scorchedguns:pure_gunpowder>, <tag:items:forge:nuggets/gold>]);

//Heavy Bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:heavy_bullet>);
craftingTable.addShapeless("Heavy Bullet", <item:scorchedguns:heavy_bullet>,
    [<item:minecraft:gunpowder>, <tag:items:forge:nuggets/copper>]);

//Pig Round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:pig_round>);
craftingTable.addShapeless("Pig Round", <item:scorchedguns:pig_round>,
    [<item:scorchedguns:hell_gunpowder>, <item:mineraft:blaze_powder>, <tag:items:forge:nuggets/gold>]);

//Heavy Pig Round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:heavy_pig_round>);
craftingTable.addShapeless("Heavy Pig Round", <item:scorchedguns:heavy_pig_round>,
    [<item:scorchedguns:hell_gunpowder>, <item:mineraft:blaze_powder>, <tag:items:forge:nuggets/gold>, <item:scorchedguns:pure_gunpowder>]);

//Quartz Shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:quartz_shell>);
craftingTable.addShapeless("Quartz Shell", <item:scorchedguns:quartz_shell>,
    [<item:scorchedguns:hell_gunpowder>, <item:mineraft:quartz>, <tag:items:forge:nuggets/gold>]);

//Osborne Slug
<recipetype:cgm:workbench>.remove(<item:scorchedguns:osborne_slug>);
craftingTable.addShapeless("Osborne Slug", <item:scorchedguns:osborne_slug>,
    [<item:scorchedguns:nitro_dust>, <tag:items:forge:nuggets/iron>]);

//Experimental Round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:experimental_round>);
craftingTable.addShapeless("Experimental Round", <item:scorchedguns:experimental_round>,
    [<item:scorchedguns:pure_gunpowder>, <item:scorchedguns:scorched_bronze_nugget>, <tag:items:forge:nuggets/iron>]);

//Ethereal Bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_bullet>);
craftingTable.addShapeless("Ethereal Bullet", <item:scorchedguns:ethereal_bullet>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:diamond_steel_nugget>, <tag:items:forge:nuggets/steel>]);

//Ethereal Heavy Bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_heavy_bullet>);
craftingTable.addShapeless("Ethereal Heavy Bullet", <item:scorchedguns:ethereal_heavy_bullet>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:pure_gunpowder>, <item:scorchedguns:diamond_steel_nugget>, <tag:items:forge:nuggets/steel>]);

//Ethereal Shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_shell>);
craftingTable.addShapeless("Ethereal Shell", <item:scorchedguns:ethereal_shell>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:pure_gunpowder>, <tag:items:forge:nuggets/gold>]);

//Ethereal EC Round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_ec_round>);
craftingTable.addShapeless("Ethereal EC Round", <item:scorchedguns:ethereal_ec_round>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:flechette>, <item:scorchedguns:diamond_steel_nugget>]);

//Mo's Guns
//7.62x51 NATO
<recipetype:cgm:workbench>.remove(<item:moguns:762x51>);
craftingTable.addShapeless("7.62x51 NATO", <item:moguns:762x51>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/brass>, <tag:items:forge:sand>, <item:minecraft:gunpowder>]);

//5.56x45 NATO
<recipetype:cgm:workbench>.remove(<item:moguns:556x45>);
craftingTable.addShapeless("5.56x45 NATO", <item:moguns:556x45>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>]);

//Garbage
<recipetype:cgm:workbench>.remove(<item:moguns:garbage>);
craftingTable.addShapeless("Garbage", <item:moguns:garbage>,
    [<item:minecraft:rotten_flesh>, <item:minecraft:poisonous_potato>, <item:spoiled:foods>, <item:minecraft:gunpowder>]);

//9x39mm
<recipetype:cgm:workbench>.remove(<item:moguns:9x39>);
craftingTable.addShapeless("9x39mm", <item:moguns:9x39>,
    [<tag:items:forge:nuggets/iron>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//9x19mm
<recipetype:cgm:workbench>.remove(<item:moguns:9x19>);
craftingTable.addShapeless("9x19mm", <item:moguns:9x19>,
    [<tag:items:forge:nuggets/iron>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//12 Gauge Buckshot
<recipetype:cgm:workbench>.remove(<item:moguns:12_gauge>);
craftingTable.addShapeless("12 Gauge Buckshot", <item:moguns:12_gauge>,
    [<item:minecraft:paper>, <tag:items:forge:nuggets/iron>, <item:minecraft:gunpowder>, <tag:items:forge:copper_ingot>]);

//12 Gauge Slug
<recipetype:cgm:workbench>.remove(<item:moguns:slug>);
craftingTable.addShapeless("12 Gauge Slug", <item:moguns:slug>,
    [<item:minecraft:paper>, <item:minecraft:flint>, <item:minecraft:gunpowder>, <tag:items:forge:copper_ingot>]);

//.45 ACP
<recipetype:cgm:workbench>.remove(<item:moguns:45acp>);
craftingTable.addShapeless(".45 ACP", <item:moguns:45acp>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>]);

//.30-06
<recipetype:cgm:workbench>.remove(<item:moguns:3006>);
craftingTable.addShapeless(".45 ACP", <item:moguns:3006>,
    [<tag:items:forge:nuggets/brass>, <tag:items:forge:nuggets/iron>, <item:minecraft:gunpowder>]);

//7.62x39
<recipetype:cgm:workbench>.remove(<item:moguns:762x39>);
craftingTable.addShapeless("7.62x39", <item:moguns:762x39>,
    [<tag:items:forge:nuggets/brass>, <tag:items:forge:sand>, <item:minecraft:gunpowder>]);

//Musket Cartridge
<recipetype:cgm:workbench>.remove(<item:moguns:musket_cartridge>);
craftingTable.addShapeless("Musket Cartridge", <item:moguns:musket_cartridge>,
    [<item:minecraft:paper>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//7.62x25 Tokarev
<recipetype:cgm:workbench>.remove(<item:moguns:762x25>);
craftingTable.addShapeless("7.62x25 Tokarev", <item:moguns:762x25>,
    [<tag:items:forge:nuggets/iron>, <item:minecraft:gunpowder>]);

//X-mas Light
<recipetype:cgm:workbench>.remove(<item:moguns:x_mas_light>);
craftingTable.addShapeless("X-mas Light", <item:moguns:x_mas_light>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:glass>, <item:minecraft:redstone>]);

//Taki
<recipetype:cgm:workbench>.remove(<item:moguns:taki>);
craftingTable.addShapeless("Taki", <item:moguns:taki>,
    [<item:minecraft:wheat>, <item:minecraft:gunpowder>, <item:minecraft:rotten_flesh>]);

//Flare
<recipetype:cgm:workbench>.remove(<item:moguns:flare>);
craftingTable.addShapeless("Flare", <item:moguns:flare>,
    [<item:minecraft:gunpowder>, <item:minecraft:fire_charge>]);

//Cgm
// Missile
<recipetype:cgm:workbench>.remove(<item:cgm:missile>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("missile")
                                                      .transitionTo(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:plates/steel>)
                                                      .loops(1)
                                                      .addOutput(<item:cgm:missile>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:tnt>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/steel>))
													  );
                                                      
// Grenade
<recipetype:cgm:workbench>.remove(<item:cgm:grenade>);
craftingTable.addShapeless("grenade", <item:cgm:grenade>,
    [<tag:items:forge:sand>, <item:minecraft:gunpowder>, <item:minecraft:gunpowder>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("grenade")
                                                      .transitionTo(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:sand>)
                                                      .loops(2)
                                                      .addOutput(<item:cgm:grenade> * 2, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
													  );
                                                      
// Stun Grenade
<recipetype:cgm:workbench>.remove(<item:cgm:stun_grenade>);
craftingTable.addShapeless("stun_grenade", <item:cgm:stun_grenade>,
    [<tag:items:forge:sand>, <item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("stun_grenade")
                                                      .transitionTo(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:sand>)
                                                      .loops(2)
                                                      .addOutput(<item:cgm:stun_grenade> * 2, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:blaze_powder>))
													  );