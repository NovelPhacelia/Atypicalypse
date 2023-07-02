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
<recipetype:create:pressing>.addRecipe("rivet", [<item:scorchedguns:rivet>, <item:minecraft:apple>, (<item:minecraft:dirt> * 2) % 12], <item:minecraft:dirt>, 200);
//check this recipe

//flechette
craftingTable.remove(<item:scorchedguns:flechette>);
craftingTable.addShapeless("flechette", <item:scorchedguns:flechette> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
    <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("flechette")
        .transitionTo(<tag:items:forge:nuggets/iron>)
        .require(<tag:items:forge:nuggets/iron>)
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
        .transitionTo(<tag:items:forge:nuggets/brass>)
        .require(<tag:items:forge:nuggets/brass>)
        .loops(1)
        .addOutput(<item:scorchedguns:flechette_round> * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scorchedguns:flechette>))
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50));
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
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(100));
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
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50));
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
        .addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(50));
	);

//scorched shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:scorched_shell>);
craftingTable.addShapeless("scorched_shell", <item:scorchedguns:scorched_shell>,
    [<item:scorchedguns:scorched_bronze_nugget>, <item:scorchedguns:pure_gunpowder>, <tag:items:forge:nuggets/gold>]);

//heavy bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:heavy_bullet>);
craftingTable.addShapeless("heavy_bullet", <item:scorchedguns:heavy_bullet>,
    [<item:minecraft:gunpowder>, <tag:items:forge:nuggets/copper>]);

//pig round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:pig_round>);
craftingTable.addShapeless("pig_round", <item:scorchedguns:pig_round>,
    [<item:scorchedguns:hell_gunpowder>, <item:minecraft:blaze_powder>, <tag:items:forge:nuggets/gold>]);

//heavy pig round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:heavy_pig_round>);
craftingTable.addShapeless("heavy_pig_round", <item:scorchedguns:heavy_pig_round>,
    [<item:scorchedguns:hell_gunpowder>, <item:minecraft:blaze_powder>, <tag:items:forge:nuggets/gold>, <item:scorchedguns:pure_gunpowder>]);

//quartz shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:quartz_shell>);
craftingTable.addShapeless("quartz_shell", <item:scorchedguns:quartz_shell>,
    [<item:scorchedguns:hell_gunpowder>, <item:minecraft:quartz>, <tag:items:forge:nuggets/gold>]);

//osborne slug
<recipetype:cgm:workbench>.remove(<item:scorchedguns:osborne_slug>);
craftingTable.addShapeless("osborne_slug", <item:scorchedguns:osborne_slug>,
    [<item:scorchedguns:nitro_dust>, <tag:items:forge:nuggets/iron>]);

//experimental round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:experimental_round>);
craftingTable.addShapeless("experimental_round", <item:scorchedguns:experimental_round>,
    [<item:scorchedguns:pure_gunpowder>, <item:scorchedguns:scorched_bronze_nugget>, <tag:items:forge:nuggets/iron>]);

//ethereal bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_bullet>);
craftingTable.addShapeless("ethereal_bullet", <item:scorchedguns:ethereal_bullet>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:diamond_steel_nugget>, <tag:items:forge:nuggets/steel>]);

//ethereal heavy bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_heavy_bullet>);
craftingTable.addShapeless("ethereal_heavy_bullet", <item:scorchedguns:ethereal_heavy_bullet>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:pure_gunpowder>, <item:scorchedguns:diamond_steel_nugget>, <tag:items:forge:nuggets/steel>]);

//ethereal shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_shell>);
craftingTable.addShapeless("ethereal_shell", <item:scorchedguns:ethereal_shell>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:pure_gunpowder>, <tag:items:forge:nuggets/gold>]);

//ethereal ec round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_ec_round>);
craftingTable.addShapeless("ethereal_ec_round", <item:scorchedguns:ethereal_ec_round>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:flechette>, <item:scorchedguns:diamond_steel_nugget>]);

//mo's guns
//7.62x51 nato
<recipetype:cgm:workbench>.remove(<item:moguns:762x51>);
craftingTable.addShapeless("762x51_nato", <item:moguns:762x51>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/brass>, <tag:items:forge:sand>, <item:minecraft:gunpowder>]);

//5.56x45 nato
<recipetype:cgm:workbench>.remove(<item:moguns:556x45>);
craftingTable.addShapeless("556x45_nato", <item:moguns:556x45>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>]);

//garbage
<recipetype:cgm:workbench>.remove(<item:moguns:garbage>);
craftingTable.addShapeless("garbage", <item:moguns:garbage>,
    [<item:minecraft:rotten_flesh>, <item:minecraft:poisonous_potato>, <tag:items:spoiled:foods>, <item:minecraft:gunpowder>]);

//9x39mm
<recipetype:cgm:workbench>.remove(<item:moguns:9x39>);
craftingTable.addShapeless("9x39mm", <item:moguns:9x39>,
    [<tag:items:forge:nuggets/iron>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//9x19mm
<recipetype:cgm:workbench>.remove(<item:moguns:9x19>);
craftingTable.addShapeless("9x19mm", <item:moguns:9x19>,
    [<tag:items:forge:nuggets/iron>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//12 gauge buckshot
<recipetype:cgm:workbench>.remove(<item:moguns:12_gauge>);
craftingTable.addShapeless("12_gauge_buckshot", <item:moguns:12_gauge>,
    [<item:minecraft:paper>, <tag:items:forge:nuggets/iron>, <item:minecraft:gunpowder>, <tag:items:forge:copper_ingot>]);

//12 gauge slug
<recipetype:cgm:workbench>.remove(<item:moguns:slug>);
craftingTable.addShapeless("12_gauge_slug", <item:moguns:slug>,
    [<item:minecraft:paper>, <item:minecraft:flint>, <item:minecraft:gunpowder>, <tag:items:forge:copper_ingot>]);

//.45 acp
<recipetype:cgm:workbench>.remove(<item:moguns:45acp>);
craftingTable.addShapeless("45_acp", <item:moguns:45acp>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>]);

//.30-06
<recipetype:cgm:workbench>.remove(<item:moguns:3006>);
craftingTable.addShapeless("3006", <item:moguns:3006>,
    [<tag:items:forge:nuggets/brass>, <tag:items:forge:nuggets/iron>, <item:minecraft:gunpowder>]);

//7.62x39
<recipetype:cgm:workbench>.remove(<item:moguns:762x39>);
craftingTable.addShapeless("762x39", <item:moguns:762x39>,
    [<tag:items:forge:nuggets/brass>, <tag:items:forge:sand>, <item:minecraft:gunpowder>]);

//musket cartridge
<recipetype:cgm:workbench>.remove(<item:moguns:musket_cartridge>);
craftingTable.addShapeless("musket_cartridge", <item:moguns:musket_cartridge>,
    [<item:minecraft:paper>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//7.62x25 tokarev
<recipetype:cgm:workbench>.remove(<item:moguns:762x25>);
craftingTable.addShapeless("762x25_tokarev", <item:moguns:762x25>,
    [<tag:items:forge:nuggets/iron>, <item:minecraft:gunpowder>]);

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
// missile
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
                                                      
// grenade
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
                                                      
// stun grenade
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