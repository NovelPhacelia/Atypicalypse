import crafttweaker.api.item.IItemStack;

//Scorched Guns
//Powder and ball
craftingTable.remove(<tag:items:scorchedguns:powder_and_ball>);
craftingTable.addShapeless("Powder and Ball", <tag:items:scorchedguns:powder_and_ball> * 1,
    [<tag:items:minecraft:gunpowder>, <tag:items:forge:gravel>, <tag:items:minecraft:paper>]);

//Simple Bullet
craftingTable.remove(<tag:items:scorchedguns:simple_bullet>);
craftingTable.addShapeless("Simple Bullet", <tag:items:scorchedguns:simple_bullet>,
    [<tag:items:minecraft:gunpowder>, <tag:items:forge:nuggets/iron>, <tag:items:minecraft:paper>]);

//Shotbolt
craftingTable.remove(<tag:items:scorchedguns:shotbolt>);
craftingTable.addShapeless("Shotbolt", <tag:items:scorchedguns:shotbolt>,
    [<tag:items:minecraft:gunpowder>, <tag:items:minecraft:arrows>]);

//Volatile Scrap
craftingTable.remove(<tag:items:scorchedguns:volatile_scrap>);
craftingTable.addShapeless("Volatile Scrap", <tag:items:scorchedguns:volatile_scrap>,
    [<tag:items:minecraft:gunpowder>, <tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>]);

//Encased Fire
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:encased_fire>);
craftingTable.addShapeless("Encased Fire", <tag:items:scorchedguns:encased_fire>,
    [<tag:items:minecraft:blaze_powder>, <tag:items:minecraft:iron_ingot>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("Encased Fire")
                                                      .transitionTo(<tag:items:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:minecraft:blaze_powder>)
                                                      .loops(1)
                                                      .addOutput(<tag:items:scorchedguns:encased_fire>, 2)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/iron>))
													  );

//Rivet
craftingTable.remove(<tag:items:scorchedguns:rivet>);
craftingTable.addShapeless("Rivet", <tag:items:scorchedguns:rivet> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:pressing>.addRecipe("Rivet", [<tag:items:scorchedguns:rivet>, <tag:items:minecraft:apple>, (<tag:items:minecraft:dirt> * 2) % 12], <tag:items:minecraft:dirt>, 200);

//Flechette
craftingTable.remove(<tag:items:scorchedguns:flechette>);
craftingTable.addShapeless("Flechette", <tag:items:scorchedguns:flechette> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);

// SequencedAssemblyManager.addRecipe(builder as SequencedAssemblyRecipeBuilder) as void
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_blast_brick")
                                                      .transitionTo(<tag:items:create:incomplete_tracks>)
                                                      .require(<tag:items:create:andesite_alloy>)
                                                      .loops(3)
                                                      .addOutput(<tag:items:create:large_cogwheel> * 6, 32)
                                                      .addOutput(<tag:items:create:andesite_alloy>, 2)
                                                      .addOutput(<tag:items:minecraft:andesite>, 1)
                                                      .addOutput(<tag:items:create:cogwheel>, 1)
                                                      .addOutput(<tag:items:minecraft:stick>, 1)
                                                      .addOutput(<tag:items:minecraft:iron_nugget>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:planks>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:wooden_buttons>))
                                                      .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water> * 50)));

//Flechette Round
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:flechette_round>);
craftingTable.addShapeless("Flechette Round", <tag:items:scorchedguns:flechette_round>,
    [<tag:items:scorchedguns:flechette>, <tag:items:minecraft:gunpowder>, <tag:items:forge:nuggets/brass>]);

//EC Round
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:ec_round>);
craftingTable.addShapeless("EC Round", <tag:items:scorchedguns:ec_round>,
    [<tag:items:scorchedguns:flechette>, <tag:items:scorchedguns:pure_gunpowder>]);

//Scorched Bullet
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:scorched_bullet>);
craftingTable.addShapeless("Scorched Bullet", <tag:items:scorchedguns:scorched_bullet>,
    [<tag:items:scorchedguns:scorched_bronze_nugget>, <tag:items:scorchedguns:pure_gunpowder>]);

//Scorched Big Bullet
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:scorched_big_bullet>);
craftingTable.addShapeless("Scorched Big Bullet", <tag:items:scorchedguns:scorched_big_bullet>,
    [<tag:items:scorchedguns:scorched_bronze_nugget>, <tag:items:scorchedguns:pure_gunpowder>, <tag:items:forge:sand>]);

//Scorched Shell
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:scorched_shell>);
craftingTable.addShapeless("Scorched Shell", <tag:items:scorchedguns:scorched_shell>,
    [<tag:items:scorchedguns:scorched_bronze_nugget>, <tag:items:scorchedguns:pure_gunpowder>, <tag:items:forge:nuggets/gold>]);

//Heavy Bullet
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:heavy_bullet>);
craftingTable.addShapeless("Heavy Bullet", <tag:items:scorchedguns:heavy_bullet>,
    [<tag:items:minecraft:gunpowder>, <tag:items:forge:nuggets/copper>]);

//Pig Round
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:pig_round>);
craftingTable.addShapeless("Pig Round", <tag:items:scorchedguns:pig_round>,
    [<tag:items:scorchedguns:hell_gunpowder>, <tag:items:mineraft:blaze_powder>, <tag:items:forge:nuggets/gold>]);

//Heavy Pig Round
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:heavy_pig_round>);
craftingTable.addShapeless("Heavy Pig Round", <tag:items:scorchedguns:heavy_pig_round>,
    [<tag:items:scorchedguns:hell_gunpowder>, <tag:items:mineraft:blaze_powder>, <tag:items:forge:nuggets/gold>, <tag:items:scorchedguns:pure_gunpowder>]);

//Quartz Shell
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:quartz_shell>);
craftingTable.addShapeless("Quartz Shell", <tag:items:scorchedguns:quartz_shell>,
    [<tag:items:scorchedguns:hell_gunpowder>, <tag:items:mineraft:quartz>, <tag:items:forge:nuggets/gold>]);

//Osborne Slug
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:osborne_slug>);
craftingTable.addShapeless("Osborne Slug", <tag:items:scorchedguns:osborne_slug>,
    [<tag:items:scorchedguns:nitro_dust>, <tag:items:forge:nuggets/iron>]);

//Experimental Round
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:experimental_round>);
craftingTable.addShapeless("Experimental Round", <tag:items:scorchedguns:experimental_round>,
    [<tag:items:scorchedguns:pure_gunpowder>, <tag:items:scorchedguns:scorched_bronze_nugget>, <tag:items:forge:nuggets/iron>]);

//Ethereal Bullet
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:ethereal_bullet>);
craftingTable.addShapeless("Ethereal Bullet", <tag:items:scorchedguns:ethereal_bullet>,
    [<tag:items:scorchedguns:nitro_dust>, <tag:items:scorchedguns:diamond_steel_nugget>, <tag:items:forge:nuggets/steel>]);

//Ethereal Heavy Bullet
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:ethereal_heavy_bullet>);
craftingTable.addShapeless("Ethereal Heavy Bullet", <tag:items:scorchedguns:ethereal_heavy_bullet>,
    [<tag:items:scorchedguns:nitro_dust>, <tag:items:scorchedguns:pure_gunpowder>, <tag:items:scorchedguns:diamond_steel_nugget>, <tag:items:forge:nuggets/steel>]);

//Ethereal Shell
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:ethereal_shell>);
craftingTable.addShapeless("Ethereal Shell", <tag:items:scorchedguns:ethereal_shell>,
    [<tag:items:scorchedguns:nitro_dust>, <tag:items:scorchedguns:pure_gunpowder>, <tag:items:forge:nuggets/gold>]);

//Ethereal EC Round
<recipetype:cgm:workbench>.remove(<tag:items:scorchedguns:ethereal_ec_round>);
craftingTable.addShapeless("Ethereal EC Round", <tag:items:scorchedguns:ethereal_ec_round>,
    [<tag:items:scorchedguns:nitro_dust>, <tag:items:scorchedguns:flechette>, <tag:items:scorchedguns:diamond_steel_nugget>]);

//Mo's Guns
//7.62x51 NATO
<recipetype:cgm:workbench>.remove(<tag:items:moguns:762x51>);
craftingTable.addShapeless("7.62x51 NATO", <tag:items:moguns:762x51>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/brass>, <tag:items:forge:sand>, <tag:items:minecraft:gunpowder>]);

//5.56x45 NATO
<recipetype:cgm:workbench>.remove(<tag:items:moguns:556x45>);
craftingTable.addShapeless("5.56x45 NATO", <tag:items:moguns:556x45>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/brass>, <tag:items:minecraft:gunpowder>]);

//Garbage
<recipetype:cgm:workbench>.remove(<tag:items:moguns:garbage>);
craftingTable.addShapeless("Garbage", <tag:items:moguns:garbage>,
    [<tag:items:minecraft:rotten_flesh>, <tag:items:minecraft:poisonous_potato>, <tag:items:spoiled:foods>, <tag:items:minecraft:gunpowder>]);

//9x39mm
<recipetype:cgm:workbench>.remove(<tag:items:moguns:9x39>);
craftingTable.addShapeless("9x39mm", <tag:items:moguns:9x39>,
    [<tag:items:forge:nuggets/iron>, <tag:items:minecraft:flint>, <tag:items:minecraft:gunpowder>]);

//9x19mm
<recipetype:cgm:workbench>.remove(<tag:items:moguns:9x19>);
craftingTable.addShapeless("9x19mm", <tag:items:moguns:9x19>,
    [<tag:items:forge:nuggets/iron>, <tag:items:minecraft:flint>, <tag:items:minecraft:gunpowder>]);

//12 Gauge Buckshot
<recipetype:cgm:workbench>.remove(<tag:items:moguns:12_gauge>);
craftingTable.addShapeless("12 Gauge Buckshot", <tag:items:moguns:12_gauge>,
    [<tag:items:minecraft:paper>, <tag:items:forge:nuggets/iron>, <tag:items:minecraft:gunpowder>, <tag:items:forge:copper_ingot>]);

//12 Gauge Slug
<recipetype:cgm:workbench>.remove(<tag:items:moguns:slug>);
craftingTable.addShapeless("12 Gauge Slug", <tag:items:moguns:slug>,
    [<tag:items:minecraft:paper>, <tag:items:minecraft:flint>, <tag:items:minecraft:gunpowder>, <tag:items:forge:copper_ingot>]);

//.45 ACP
<recipetype:cgm:workbench>.remove(<tag:items:moguns:45acp>);
craftingTable.addShapeless(".45 ACP", <tag:items:moguns:45acp>,
    [<tag:items:forge:nuggets/brass>, <tag:items:minecraft:gunpowder>]);

//.30-06
<recipetype:cgm:workbench>.remove(<tag:items:moguns:3006>);
craftingTable.addShapeless(".45 ACP", <tag:items:moguns:3006>,
    [<tag:items:forge:nuggets/brass>, <tag:items:forge:nuggets/iron>, <tag:items:minecraft:gunpowder>]);

//7.62x39
<recipetype:cgm:workbench>.remove(<tag:items:moguns:762x39>);
craftingTable.addShapeless("7.62x39", <tag:items:moguns:762x39>,
    [<tag:items:forge:nuggets/brass>, <tag:items:forge:sand>, <tag:items:minecraft:gunpowder>]);

//Musket Cartridge
<recipetype:cgm:workbench>.remove(<tag:items:moguns:musket_cartridge>);
craftingTable.addShapeless("Musket Cartridge", <tag:items:moguns:musket_cartridge>,
    [<tag:items:minecraft:paper>, <tag:items:minecraft:flint>, <tag:items:minecraft:gunpowder>]);

//7.62x25 Tokarev
<recipetype:cgm:workbench>.remove(<tag:items:moguns:762x25>);
craftingTable.addShapeless("7.62x25 Tokarev", <tag:items:moguns:762x25>,
    [<tag:items:forge:nuggets/iron>, <tag:items:minecraft:gunpowder>]);

//X-mas Light
<recipetype:cgm:workbench>.remove(<tag:items:moguns:x_mas_light>);
craftingTable.addShapeless("X-mas Light", <tag:items:moguns:x_mas_light>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:glass>, <tag:items:minecraft:redstone>]);

//Taki
<recipetype:cgm:workbench>.remove(<tag:items:moguns:taki>);
craftingTable.addShapeless("Taki", <tag:items:moguns:taki>,
    [<tag:items:minecraft:wheat>, <tag:items:minecraft:gunpowder>, <tag:items:minecraft:rotten_flesh>]);

//Flare
<recipetype:cgm:workbench>.remove(<tag:items:moguns:flare>);
craftingTable.addShapeless("Flare", <tag:items:moguns:flare>,
    [<tag:items:minecraft:gunpowder>, <tag:items:minecraft:fire_charge>]);

//Cgm
// Missile
<recipetype:cgm:workbench>.remove(<tag:items:cgm:missile>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("missile")
                                                      .transitionTo(<tag:items:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:plates/steel>)
                                                      .loops(1)
                                                      .addOutput(<tag:items:cgm:missile>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:tnt>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/steel>))
													  );
                                                      
// Grenade
<recipetype:cgm:workbench>.remove(<tag:items:cgm:grenade>);
craftingTable.addShapeless("grenade", <tag:items:cgm:grenade>,
    [<tag:items:forge:sand>, <tag:items:minecraft:gunpowder>, <tag:items:minecraft:gunpowder>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("grenade")
                                                      .transitionTo(<tag:items:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:sand>)
                                                      .loops(2)
                                                      .addOutput(<tag:items:cgm:grenade> * 2, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:gunpowder>))
													  );
                                                      
// Stun Grenade
<recipetype:cgm:workbench>.remove(<tag:items:cgm:stun_grenade>);
craftingTable.addShapeless("stun_grenade", <tag:items:cgm:stun_grenade>,
    [<tag:items:forge:sand>, <tag:items:minecraft:blaze_powder>, <tag:items:minecraft:blaze_powder>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("stun_grenade")
                                                      .transitionTo(<tag:items:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:sand>)
                                                      .loops(2)
                                                      .addOutput(<tag:items:cgm:stun_grenade> * 2, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:blaze_powder>))
													  );