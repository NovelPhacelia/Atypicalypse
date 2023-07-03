import mods.jei.JEI;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.item.IItemStack;
import mods.create.SequencedAssemblyManager;

//scorched guns
//powder and ball
craftingTable.addShapeless("powder_and_ball", <item:scorchedguns:powder_and_ball>,
    [<tag:items:forge:gunpowder>, <tag:items:forge:gravel>, <tag:items:forge:nuggets/copper>]);

//simple bullet
craftingTable.remove(<item:scorchedguns:simple_bullet>);
craftingTable.addShapeless("simple_bullet", <item:scorchedguns:simple_bullet>,
    [<item:minecraft:gunpowder>, <tag:items:forge:nuggets/iron>, <item:minecraft:paper>]);

//shotbolt
craftingTable.remove(<item:scorchedguns:shotbolt>);
craftingTable.addShapeless("shotbolt", <item:scorchedguns:shotbolt>,
    [<item:minecraft:gunpowder>, <item:minecraft:arrow>]);

//volatile scrap
craftingTable.remove(<item:scorchedguns:volatile_scrap>);
craftingTable.addShapeless("volatile_scrap", <item:scorchedguns:volatile_scrap>,
    [<item:minecraft:gunpowder>, <tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>]);

//encased fire
<recipetype:cgm:workbench>.remove(<item:scorchedguns:encased_fire>);
craftingTable.addShapeless("encased_fire", <item:scorchedguns:encased_fire>,
    [<item:minecraft:blaze_powder>, <item:minecraft:iron_ingot>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("encased_fire")
                                                    .transitionTo(<item:minecraft:blaze_powder>)
                                                    .require(<item:minecraft:blaze_powder>)
                                                    .loops(1)
                                                    .addOutput(<item:scorchedguns:encased_fire> * 2, 1)
                                                    .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:lava> * 50))
                                                    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/iron>))
													);

//rivet
craftingTable.remove(<item:scorchedguns:rivet>);
craftingTable.addShapeless("rivet", <item:scorchedguns:rivet> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:pressing>.addRecipe("rivet", [(<item:scorchedguns:rivet> * 2)], <tag:items:forge:nuggets/iron>, 200);

//flechette
craftingTable.remove(<item:scorchedguns:flechette>);
craftingTable.addShapeless("flechette", <item:scorchedguns:flechette> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
    <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("flechette")
        .transitionTo(<item:minecraft:iron_nugget>)
        .require(<item:minecraft:iron_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:flechette> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
        .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(50))
	);

//flechette round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:flechette_round>);
craftingTable.addShapeless("flechette_round", <item:scorchedguns:flechette_round>,
    [<item:scorchedguns:flechette>, <item:minecraft:gunpowder>, <tag:items:forge:nuggets/brass>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("flechette_round")
        .transitionTo(<item:create:brass_nugget>)
        .require(<item:create:brass_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:flechette_round> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:flechette>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//ec round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ec_round>);
craftingTable.addShapeless("ec_round", <item:scorchedguns:ec_round>,
    [<item:scorchedguns:flechette>, <item:scorchedguns:pure_gunpowder>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("ec_round")
        .transitionTo(<item:scorchedguns:flechette>)
        .require(<item:scorchedguns:flechette>)
        .loops(1)
        .addOutput(<item:scorchedguns:ec_round> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:pure_gunpowder>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(100))
	);

//scorched bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:scorched_bullet>);
craftingTable.addShapeless("scorched_bullet", <item:scorchedguns:scorched_bullet>,
    [<item:scorchedguns:scorched_bronze_nugget>, <item:scorchedguns:pure_gunpowder>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("scorched_bullet")
        .transitionTo(<item:scorchedguns:scorched_bronze_nugget>)
        .require(<item:scorchedguns:scorched_bronze_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:scorched_bullet> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:pure_gunpowder>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//scorched big bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:scorched_big_bullet>);
craftingTable.addShapeless("scorched_big_bullet", <item:scorchedguns:scorched_big_bullet>,
    [<item:scorchedguns:scorched_bronze_nugget>, <item:scorchedguns:pure_gunpowder>, <tag:items:forge:sand>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("scorched_big_bullet")
        .transitionTo(<item:scorchedguns:scorched_bronze_nugget>)
        .require(<item:scorchedguns:scorched_bronze_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:scorched_big_bullet> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:sand>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:pure_gunpowder>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//scorched shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:scorched_shell>);
craftingTable.addShapeless("scorched_shell", <item:scorchedguns:scorched_shell>,
    [<item:scorchedguns:scorched_bronze_nugget>, <item:scorchedguns:pure_gunpowder>, <tag:items:forge:nuggets/gold>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("scorched_shell")
        .transitionTo(<item:scorchedguns:scorched_bronze_nugget>)
        .require(<item:scorchedguns:scorched_bronze_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:scorched_shell> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:pure_gunpowder>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/gold>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//heavy bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:heavy_bullet>);
craftingTable.addShapeless("heavy_bullet", <item:scorchedguns:heavy_bullet>,
    [<tag:items:forge:nuggets/brass>, <tag:items:forge:nuggets/copper>, <item:minecraft:gunpowder>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("scorched_big_bullet")
        .transitionTo(<item:create:brass_nugget>)
        .require(<item:create:brass_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:scorched_shell> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/copper>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//pig round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:pig_round>);
craftingTable.addShapeless("pig_round", <item:scorchedguns:pig_round>,
    [<tag:items:forge:nuggets/gold>, <item:scorchedguns:hell_gunpowder>, <item:minecraft:blaze_powder>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pig_round")
        .transitionTo(<item:minecraft:gold_nugget>)
        .require(<item:minecraft:gold_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:pig_round> * 3, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:hell_gunpowder>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:blaze_rod>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//heavy pig round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:heavy_pig_round>);
craftingTable.addShapeless("heavy_pig_round", <item:scorchedguns:heavy_pig_round>,
    [<tag:items:forge:nuggets/brass>, <item:scorchedguns:hell_gunpowder>, <item:minecraft:blaze_rod>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("heavy_pig_round")
        .transitionTo(<item:create:brass_nugget>)
        .require(<item:create:brass_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:heavy_pig_round> * 3, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:hell_gunpowder>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:blaze_rod>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//quartz shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:quartz_shell>);
craftingTable.addShapeless("quartz_shell", <item:scorchedguns:quartz_shell>,
    [<tag:items:forge:nuggets/gold>, <item:scorchedguns:hell_gunpowder>, <item:minecraft:quartz>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("quartz_shell")
        .transitionTo(<item:minecraft:gold_nugget>)
        .require(<item:minecraft:gold_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:quartz_shell> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:quartz>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:hell_gunpowder>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//osborne slug
<recipetype:cgm:workbench>.remove(<item:scorchedguns:osborne_slug>);
craftingTable.addShapeless("osborne_slug", <item:scorchedguns:osborne_slug>,
    [<item:scorchedguns:nitro_dust>, <tag:items:forge:ingots/steel>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("osborne_slug")
        .transitionTo(<item:alloyed:steel_nugget>)
        .require(<item:alloyed:steel_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:osborne_slug> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:nitro_dust>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//experimental round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:experimental_round>);
craftingTable.addShapeless("experimental_round", <item:scorchedguns:experimental_round>,
    [<item:scorchedguns:pure_gunpowder>, <item:scorchedguns:scorched_bronze_nugget>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("experimental_round")
        .transitionTo(<item:minecraft:iron_nugget>)
        .require(<item:minecraft:iron_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:experimental_round> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:pure_gunpowder>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:scorched_bronze_nugget>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//ethereal bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_bullet>);
craftingTable.addShapeless("ethereal_bullet", <item:scorchedguns:ethereal_bullet>,
    [<tag:items:forge:nuggets/iron>, <item:scorchedguns:nitro_dust>, <item:scorchedguns:diamond_steel_nugget>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("ethereal_bullet")
        .transitionTo(<item:minecraft:iron_nugget>)
        .require(<item:minecraft:iron_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:ethereal_bullet> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:nitro_dust>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:diamond_steel_nugget>))
        .addStep<mods.createtweaker.FillingRecipe>((rb1) => rb.require(<fluid:minecraft:lava> * 50))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//ethereal heavy bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_heavy_bullet>);
craftingTable.addShapeless("ethereal_heavy_bullet", <item:scorchedguns:ethereal_heavy_bullet>,
    [<tag:items:forge:nuggets/brass>, <tag:items:forge:nuggets/steel>, <item:scorchedguns:nitro_dust>, <item:scorchedguns:diamond_steel_nugget>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("ethereal_heavy_bullet")
        .transitionTo(<item:create:brass_nugget>)
        .require(<item:create:brass_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:ethereal_heavy_bullet> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/steel>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:nitro_dust>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:diamond_steel_nugget>))
        .addStep<mods.createtweaker.FillingRecipe>((rb1) => rb.require(<fluid:minecraft:lava> * 50))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//ethereal shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_shell>);
craftingTable.addShapeless("ethereal_shell", <item:scorchedguns:ethereal_shell>,
    [<tag:items:forge:nuggets/gold>, <item:scorchedguns:nitro_dust>, <item:scorchedguns:diamond_steel_nugget>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("ethereal_shell")
        .transitionTo(<item:minecraft:gold_nugget>)
        .require(<item:minecraft:gold_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:ethereal_shell> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:nitro_dust>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:diamond_steel_nugget>))
        .addStep<mods.createtweaker.FillingRecipe>((rb1) => rb.require(<fluid:minecraft:lava> * 50))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//ethereal ec round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_ec_round>);
craftingTable.addShapeless("ethereal_ec_round", <item:scorchedguns:ethereal_ec_round>,
    [<item:scorchedguns:diamond_steel_nugget>, <item:scorchedguns:nitro_dust>, <item:scorchedguns:flechette>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("ethereal_ec_round")
        .transitionTo(<item:scorchedguns:diamond_steel_nugget>)
        .require(<item:scorchedguns:diamond_steel_nugget>)
        .loops(1)
        .addOutput(<item:scorchedguns:ethereal_ec_round> * 2, 1)
        .addStep<mods.createtweaker.FillingRecipe>((rb1) => rb.require(<fluid:minecraft:lava> * 50))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:nitro_dust>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:flechette>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50))
	);

//mo's guns
//7.62x51 nato
<recipetype:cgm:workbench>.remove(<item:moguns:762x51>);
craftingTable.addShapeless("762x51_nato", <item:moguns:762x51>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>, <tag:items:forge:sand>, <tag:items:forge:nuggets/iron>]);

//5.56x45 nato
<recipetype:cgm:workbench>.remove(<item:moguns:556x45>);
craftingTable.addShapeless("556x45_nato", <item:moguns:556x45>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>, <tag:items:forge:nuggets/iron>]);

//garbage
<recipetype:cgm:workbench>.remove(<item:moguns:garbage>);
craftingTable.addShapeless("garbage", <item:moguns:garbage>,
    [<item:minecraft:rotten_flesh>, <item:minecraft:poisonous_potato>, <tag:items:spoiled:foods>, <item:minecraft:gunpowder>]);

//9x39mm
<recipetype:cgm:workbench>.remove(<item:moguns:9x39>);
craftingTable.addShapeless("9x39mm", <item:moguns:9x39>,
    [<tag:items:forge:nuggets/iron>, <item:minecraft:gunpowder>]);

//9x19mm
<recipetype:cgm:workbench>.remove(<item:moguns:9x19>);
craftingTable.addShapeless("9x19mm", <item:moguns:9x19>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>]);

//12 gauge buckshot
<recipetype:cgm:workbench>.remove(<item:moguns:12_gauge>);
craftingTable.addShapeless("12_gauge_buckshot", <item:moguns:12_gauge>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>, <item:minecraft:paper>, <tag:items:forge:nuggets/iron>]);

//12 gauge slug
<recipetype:cgm:workbench>.remove(<item:moguns:slug>);
craftingTable.addShapeless("12_gauge_slug", <item:moguns:slug>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>, <item:minecraft:paper>, <item:minecraft:flint>]);

//.45 acp
<recipetype:cgm:workbench>.remove(<item:moguns:45acp>);
craftingTable.addShapeless("45_acp", <item:moguns:45acp>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//.30-06
<recipetype:cgm:workbench>.remove(<item:moguns:3006>);
craftingTable.addShapeless("3006", <item:moguns:3006>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>, <item:minecraft:flint>, <tag:items:forge:nuggets/iron>]);

//7.62x39
<recipetype:cgm:workbench>.remove(<item:moguns:762x39>);
craftingTable.addShapeless("762x39", <item:moguns:762x39>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>, <tag:items:forge:nuggets/steel>]);

//musket cartridge
<recipetype:cgm:workbench>.remove(<item:moguns:musket_cartridge>);
craftingTable.addShapeless("musket_cartridge", <item:moguns:musket_cartridge>,
    [<item:minecraft:paper>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//7.62x25 tokarev
<recipetype:cgm:workbench>.remove(<item:moguns:762x25>);
craftingTable.addShapeless("762x25_tokarev", <item:moguns:762x25>,
    [<tag:items:forge:nuggets/steel>, <item:minecraft:gunpowder>]);

//x-mas light
<recipetype:cgm:workbench>.remove(<item:moguns:x_mas_light>);
craftingTable.addShapeless("x_mas_light", <item:moguns:x_mas_light>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:glass>, <item:minecraft:redstone>]);

//taki
<recipetype:cgm:workbench>.remove(<item:moguns:taki>);
craftingTable.addShapeless("taki", <item:moguns:taki>,
    [<item:minecraft:wheat>, <item:minecraft:gunpowder>, <item:minecraft:rotten_flesh>]);

//flare
<recipetype:cgm:workbench>.remove(<item:moguns:flare>);
craftingTable.addShapeless("flare", <item:moguns:flare>,
    [<item:minecraft:gunpowder>, <item:minecraft:fire_charge>]);

//cgm
//Basic Bullet
<recipetype:cgm:workbench>.remove(<item:cgm:basic_bullet>);
craftingTable.addShapeless("basic_bullet", <item:cgm:basic_bullet>,
    [<tag:items:forge:nuggets/copper>, <item:minecraft:gunpowder>]);

//Advanced Bullet
<recipetype:cgm:workbench>.remove(<item:cgm:advanced_bullet>);
craftingTable.addShapeless("advanced_bullet", <item:cgm:advanced_bullet>,
    [<tag:items:forge:nuggets/copper>, <item:minecraft:gunpowder>, <tag:items:forge:nuggets/iron>]);

//Shell
<recipetype:cgm:workbench>.remove(<item:cgm:shell>);
craftingTable.addShapeless("shell", <item:cgm:shell>,
    [<tag:items:forge:nuggets/copper>, <item:minecraft:gunpowder>, <tag:items:forge:nuggets/gold>]);

//Missile
<recipetype:cgm:workbench>.remove(<item:cgm:missile>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("missile")
                                                      .transitionTo(<item:create:copper_nugget>)
                                                      .require(<tag:items:forge:plates/steel>)
                                                      .loops(1)
                                                      .addOutput(<item:cgm:missile>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:tnt>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/steel>))
													  );
                                                      
//Grenade
<recipetype:cgm:workbench>.remove(<item:cgm:grenade>);
craftingTable.addShapeless("grenade", <item:cgm:grenade>,
    [<tag:items:forge:sand>, <item:minecraft:gunpowder>, <item:minecraft:gunpowder>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("grenade")
                                                      .transitionTo(<item:create:copper_nugget>)
                                                      .require(<tag:items:forge:sand>)
                                                      .loops(2)
                                                      .addOutput(<item:cgm:grenade> * 2, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
													  );
                                                      
//Stun Grenade
<recipetype:cgm:workbench>.remove(<item:cgm:stun_grenade>);
craftingTable.addShapeless("stun_grenade", <item:cgm:stun_grenade>,
    [<tag:items:forge:sand>, <item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("stun_grenade")
                                                      .transitionTo(<item:create:copper_nugget>)
                                                      .require(<tag:items:forge:sand>)
                                                      .loops(2)
                                                      .addOutput(<item:cgm:stun_grenade> * 2, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:blaze_powder>))
													  );