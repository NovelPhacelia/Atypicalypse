import crafttweaker.api.item.IItemStack;

//Scorched Guns
//Powder and ball
craftingTable.addShapeless("Powder and Ball", <item:scorchedguns:powder_and_ball> * 1,
    [<tag:items:forge:gunpowder>, <tag:items:forge:gravel>, <tag:items:minecraft:paper>]);

//Simple Bullet
craftingTable.addShapeless("Simple Bullet", <item:scorchedguns:powder_and_ball>,
    [<tag:items:forge:gunpowder>, <tag:items:forge:nuggets/iron>, <tag:items:minecraft:paper>]);

//Shotbolt
craftingTable.addShapeless("Shotbolt", <item:scorchedguns:shotbolt>,
    [<tag:items:forge:gunpowder>, <tag:items:minecraft:arrows>]);


//Volatile Scrap
craftingTable.addShapeless("Volatile Scrap", <item:scorchedguns:volatile_scrap>,
    [<tag:items:forge:gunpowder>, <tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>]);

//Encased Fire
craftingTable.addShapeless("Encased Fire", <item:scorchedguns:encased_fire>,
    [<tag:items:minecraft:blaze_powder>, <tag:items:minecraft:iron_ingot>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("Encased Fire")
                                                      .transitionTo(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:minecraft:blaze_powder>)
                                                      .loops(1)
                                                      .addOutput(<item:scorchedguns:encased_fire>, 2)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:forge:plates/iron>))
													  );

//Rivet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:rivet>);
craftingTable.addShapeless("Rivet", <item:scorchedguns:rivet> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:pressing>.addRecipe("Rivet", [<item:scorchedguns:rivet>, <item:minecraft:apple>, (<item:minecraft:dirt> * 2) % 12], <item:minecraft:dirt>, 200);

//Flechette
craftingTable.addShapeless("Flechette", <item:scorchedguns:flechette> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);

//Flechette Round
craftingTable.addShapeless("Flechette Round", <item:scorchedguns:flechette_round>,
    [<item:scorchedguns:flechette>, <tag:items:forge:gunpowder>, <tag:items:forge:nuggets/brass>]);

//EC Round
craftingTable.addShapeless("EC Round", <item:scorchedguns:ec_round>,
    [<item:scorchedguns:flechette>, <tag:items:scorchedguns:pure_gunpowder>]);

//Scorched Bullet
craftingTable.addShapeless("Scorched Bullet", <item:scorchedguns:scorched_bullet>,
    [<item:scorchedguns:scorched_bronze_nugget>, <tag:items:scorchedguns:pure_gunpowder>]);

//Scorched Big Bullet
craftingTable.addShapeless("Scorched Big Bullet", <item:scorchedguns:scorched_big_bullet>,
    [<item:scorchedguns:scorched_bronze_nugget>, <tag:items:scorchedguns:pure_gunpowder>, <tag:items:forge:sand>]);

//Scorched Shell
craftingTable.addShapeless("Scorched Shell", <item:scorchedguns:scorched_shell>,
    [<item:scorchedguns:scorched_bronze_nugget>, <tag:items:scorchedguns:pure_gunpowder>, <tag:items:forge:nuggets/gold>]);

//Heavy Bullet
craftingTable.addShapeless("Heavy Bullet", <item:scorchedguns:heavy_bullet>,
    [<item:forge:gunpowder>, <tag:items:forge:nugget/copper>]);

//Pig Round
craftingTable.addShapeless("Pig Round", <item:scorchedguns:pig_round>,
    [<item:scorchedguns:hell_gunpowder>, <tag:items:mineraft:blaze_powder>, <item:forge:nugget/gold>]);

//Heavy Pig Round
craftingTable.addShapeless("Heavy Pig Round", <item:scorchedguns:heavy_pig_round>,
    [<item:scorchedguns:hell_gunpowder>, <tag:items:mineraft:blaze_powder>, <item:forge:nugget/gold>, <item:scorchedguns:pure_gunpowder>]);

//Quartz Shell
craftingTable.addShapeless("Quartz Shell", <item:scorchedguns:quartz_shell>,
    [<item:scorchedguns:hell_gunpowder>, <tag:items:mineraft:quartz>, <item:forge:nugget/gold>]);

//Osborne Slug
craftingTable.addShapeless("Osborne Slug", <item:scorchedguns:osborne_slug>,
    [<item:scorchedguns:nitro_dust>, <item:forge:nugget/iron>]);

//Experimental Round
craftingTable.addShapeless("Experimental Round", <item:scorchedguns:experimental_round>,
    [<item:scorchedguns:pure_gunpowder>, <item:scorchedguns:scorched_bronze_nugget>, <item:forge:nugget/iron>]);

//Ethereal Bullet
craftingTable.addShapeless("Ethereal Bullet", <item:scorchedguns:ethereal_bullet>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:diamond_steel_nugget>, <item:forge:nugget/steel>]);

//Ethereal Heavy Bullet
craftingTable.addShapeless("Ethereal Heavy Bullet", <item:scorchedguns:ethereal_heavy_bullet>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:pure_gunpowder>, <item:scorchedguns:diamond_steel_nugget>, <item:forge:nugget/steel>]);

//Ethereal Shell
craftingTable.addShapeless("Ethereal Shell", <item:scorchedguns:ethereal_shell>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:pure_gunpowder>, <item:forge:nugget/gold>]);

//Ethereal EC Round
craftingTable.addShapeless("Ethereal EC Round", <item:scorchedguns:ethereal_ec_round>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:flechette>, <item:scorchedguns:diamond_steel_nugget>]);

//Mo's Guns
//7.62x51 NATO
craftingTable.addShapeless("7.62x51 NATO", <item:moguns:762x51>,
    [<item:forge:nugget/iron>, <item:forge:nugget/brass>, <item:forge:sand>, <item:forge:gunpowder>]);

//5.56x45 NATO
craftingTable.addShapeless("5.56x45 NATO", <item:moguns:556x45>,
    [<item:forge:nugget/iron>, <item:forge:nugget/brass>, <item:forge:gunpowder>]);

//Garbage
craftingTable.addShapeless("Garbage", <item:moguns:garbage>,
    [<item:minecraft:rotten_flesh>, <item:minecraft:poisonous_potato>, <item:spoiled:foods>, <item:forge:gunpowder>]);

//9x39mm
craftingTable.addShapeless("9x39mm", <item:moguns:9x39>,
    [<item:forge:nugget/iron>, <item:mineraft:flint>, <item:forge:gunpowder>]);

//9x19mm
craftingTable.addShapeless("9x19mm", <item:moguns:9x19>,
    [<item:forge:nugget/iron>, <item:minecraft:flint>, <item:forge:gunpowder>]);

//12 Gauge Buckshot
craftingTable.addShapeless("12 Gauge Buckshot", <item:moguns:12_gauge>,
    [<item:minecraft:paper>, <item:forge:nugget/iron>, <item:forge:gunpowder>, <item:forge:copper_ingot>]);

//12 Gauge Slug
craftingTable.addShapeless("12 Gauge Slug", <item:moguns:slug>,
    [<item:minecraft:paper>, <item:minecraft:flint>, <item:forge:gunpowder>, <item:forge:copper_ingot>]);

//.45 ACP
craftingTable.addShapeless(".45 ACP", <item:moguns:45acp>,
    [<item:forge:nugget/brass>, <item:forge:gunpowder>]);

//.30-06
craftingTable.addShapeless(".45 ACP", <item:moguns:3006>,
    [<item:forge:nugget/brass>, <item:forge:nugget/iron>, <item:forge:gunpowder>]);

//7.62x39
craftingTable.addShapeless("7.62x39", <item:moguns:762x39>,
    [<item:forge:nugget/brass>, <item:forge:sand>, <item:forge:gunpowder>]);

//Musket Cartridge
craftingTable.addShapeless("Musket Cartridge", <item:moguns:musket_cartridge>,
    [<item:minecraft:paper>, <item:minecraft:flint>, <item:forge:gunpowder>]);

//7.62x25 Tokarev
craftingTable.addShapeless("7.62x25 Tokarev", <item:moguns:762x25>,
    [<item:forge:nugget/iron>, <item:forge:gunpowder>]);

//X-mas Light
craftingTable.addShapeless("X-mas Light", <item:moguns:x_mas_light>,
    [<item:forge:nugget/iron>, <item:forge:glass>, <item:minecraft:redstoen>]);

//Taki
craftingTable.addShapeless("Taki", <item:moguns:taki>,
    [<item:forge:crops/wheat>, <item:forge:gunpowder>, <item:minecraft:rotten_flesh>]);

//Flare
craftingTable.addShapeless("Flare", <item:moguns:flare>,
    [<item:forge:gunpowder>, <item:minecraft:fire_charge>]);

//Cgm
// Missile
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("missile")
                                                      .transitionTo(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:plates/steel>)
                                                      .loops(1)
                                                      .addOutput(<item:cgm:missile>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:tnt>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/steel>))
													  );
                                                      
// Grenade
craftingTable.addShapeless("grenade", <item:cgm:grenade>,
    [<tag:items:forge:sand>, <tag:items:forge:gunpowder>, <tag:items:forge:gunpowder>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("grenade")
                                                      .transitionTo(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:sand>)
                                                      .loops(2)
                                                      .addOutput(<item:cgm:grenade> * 2, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:gunpowder>))
													  );
                                                      
// Stun Grenade
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