import mods.jei.jei;
import crafttweaker.api.recipe.craftingtablerecipemanager;
import crafttweaker.api.item.iitemstack;


// sequencedassemblymanager.addrecipe(builder as sequencedassemblyrecipebuilder) as void
//    <recipetype:create:sequenced_assembly>.addrecipe(<recipetype:create:sequenced_assembly>.builder("seq_blast_brick")
//                                                      .transitionto(<item:create:incomplete_tracks>)
//                                                      .require(<item:create:andesite_alloy>)
//                                                      .loops(3)
//                                                      .addoutput(<item:create:large_cogwheel> * 6, 32)
//                                                      .addoutput(<item:create:andesite_alloy>, 2)
//                                                      .addoutput(<item:minecraft:andesite>, 1)
//                                                      .addoutput(<item:create:cogwheel>, 1)
//                                                      .addoutput(<item:minecraft:stick>, 1)
//                                                      .addoutput(<item:minecraft:iron_nugget>, 1)
//                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<item:minecraft:planks>))
//                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<item:minecraft:wooden_buttons>))
//                                                      .addstep<mods.createtweaker.cuttingrecipe>((rb) => rb.duration(50))
//                                                      .addstep<mods.createtweaker.fillingrecipe>((rb) => rb.require(<fluid:minecraft:water> * 50)));

//scorched guns
//powder and ball
craftingtable.addshapeless("powder_and_ball", <item:scorchedguns:powder_and_ball>,
    [<tag:items:forge:gunpowder>, <tag:items:forge:gravel>, <tag:items:forge:nuggets/copper>]);

//simple bullet
craftingtable.remove(<item:scorchedguns:simple_bullet>);
craftingtable.addshapeless("simple_bullet", <item:scorchedguns:simple_bullet>,
    [<item:minecraft:gunpowder>, <tag:items:forge:nuggets/iron>, <item:minecraft:paper>]);

//shotbolt
craftingtable.remove(<item:scorchedguns:shotbolt>);
craftingtable.addshapeless("shotbolt", <item:scorchedguns:shotbolt>,
    [<item:minecraft:gunpowder>, <item:minecraft:arrow>]);

//volatile scrap
craftingtable.remove(<item:scorchedguns:volatile_scrap>);
craftingtable.addshapeless("volatile_scrap", <item:scorchedguns:volatile_scrap>,
    [<item:minecraft:gunpowder>, <tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>]);

//encased fire
<recipetype:cgm:workbench>.remove(<item:scorchedguns:encased_fire>);
craftingtable.addshapeless("encased_fire", <item:scorchedguns:encased_fire>,
    [<item:minecraft:blaze_powder>, <item:minecraft:iron_ingot>]);
<recipetype:create:sequenced_assembly>.addrecipe(<recipetype:create:sequenced_assembly>.builder("encased fire")
                                                      .transitionto(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<item:minecraft:blaze_powder>)
                                                      .loops(1)
                                                      .addoutput(<item:scorchedguns:encased_fire> * 2, 1)
                                                      .addstep<mods.createtweaker.fillingrecipe>((rb) => rb.require(<fluid:minecraft:lava> * 50))
                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<tag:items:forge:plates/iron>))
													  );

/*
<recipetype:create:sequenced_assembly>.addrecipe(<recipetype:create:sequenced_assembly>.builder("stun_grenade")
                                                      .transitionto(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:plates/plastic>)
                                                      .loops(2)
                                                      .addoutput(<item:cgm:stun_grenade> * 2, 1)
                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<item:minecraft:blaze_powder>))
													  );
*/

//rivet
craftingtable.remove(<item:scorchedguns:rivet>);
craftingtable.addshapeless("rivet", <item:scorchedguns:rivet> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:pressing>.addrecipe("rivet", [<item:scorchedguns:rivet>, <item:minecraft:apple>, (<item:minecraft:dirt> * 2) % 12], <item:minecraft:dirt>, 200);
//check this recipe

//flechette
craftingtable.remove(<item:scorchedguns:flechette>);
craftingtable.addshapeless("flechette", <item:scorchedguns:flechette> * 2,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
//nugget nugget cut

//flechette round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:flechette_round>);
craftingtable.addshapeless("flechette_round", <item:scorchedguns:flechette_round>,
    [<item:scorchedguns:flechette>, <item:minecraft:gunpowder>, <tag:items:forge:nuggets/brass>]);
//brass gunpowder flechette

//ec round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ec_round>);
craftingtable.addshapeless("ec_round", <item:scorchedguns:ec_round>,
    [<item:scorchedguns:flechette>, <item:scorchedguns:pure_gunpowder>]);
//flechette gunpowder

//scorched bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:scorched_bullet>);
craftingtable.addshapeless("scorched_bullet", <item:scorchedguns:scorched_bullet>,
    [<item:scorchedguns:scorched_bronze_nugget>, <item:scorchedguns:pure_gunpowder>]);

//scorched big bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:scorched_big_bullet>);
craftingtable.addshapeless("scorched_big_bullet", <item:scorchedguns:scorched_big_bullet>,
    [<item:scorchedguns:scorched_bronze_nugget>, <item:scorchedguns:pure_gunpowder>, <tag:items:forge:sand>]);

//scorched shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:scorched_shell>);
craftingtable.addshapeless("scorched_shell", <item:scorchedguns:scorched_shell>,
    [<item:scorchedguns:scorched_bronze_nugget>, <item:scorchedguns:pure_gunpowder>, <tag:items:forge:nuggets/gold>]);

//heavy bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:heavy_bullet>);
craftingtable.addshapeless("heavy_bullet", <item:scorchedguns:heavy_bullet>,
    [<item:minecraft:gunpowder>, <tag:items:forge:nuggets/copper>]);

//pig round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:pig_round>);
craftingtable.addshapeless("pig_round", <item:scorchedguns:pig_round>,
    [<item:scorchedguns:hell_gunpowder>, <item:minecraft:blaze_powder>, <tag:items:forge:nuggets/gold>]);

//heavy pig round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:heavy_pig_round>);
craftingtable.addshapeless("heavy_pig_round", <item:scorchedguns:heavy_pig_round>,
    [<item:scorchedguns:hell_gunpowder>, <item:minecraft:blaze_powder>, <tag:items:forge:nuggets/gold>, <item:scorchedguns:pure_gunpowder>]);

//quartz shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:quartz_shell>);
craftingtable.addshapeless("quartz_shell", <item:scorchedguns:quartz_shell>,
    [<item:scorchedguns:hell_gunpowder>, <item:minecraft:quartz>, <tag:items:forge:nuggets/gold>]);

//osborne slug
<recipetype:cgm:workbench>.remove(<item:scorchedguns:osborne_slug>);
craftingtable.addshapeless("osborne_slug", <item:scorchedguns:osborne_slug>,
    [<item:scorchedguns:nitro_dust>, <tag:items:forge:nuggets/iron>]);

//experimental round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:experimental_round>);
craftingtable.addshapeless("experimental_round", <item:scorchedguns:experimental_round>,
    [<item:scorchedguns:pure_gunpowder>, <item:scorchedguns:scorched_bronze_nugget>, <tag:items:forge:nuggets/iron>]);

//ethereal bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_bullet>);
craftingtable.addshapeless("ethereal_bullet", <item:scorchedguns:ethereal_bullet>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:diamond_steel_nugget>, <tag:items:forge:nuggets/steel>]);

//ethereal heavy bullet
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_heavy_bullet>);
craftingtable.addshapeless("ethereal_heavy_bullet", <item:scorchedguns:ethereal_heavy_bullet>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:pure_gunpowder>, <item:scorchedguns:diamond_steel_nugget>, <tag:items:forge:nuggets/steel>]);

//ethereal shell
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_shell>);
craftingtable.addshapeless("ethereal_shell", <item:scorchedguns:ethereal_shell>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:pure_gunpowder>, <tag:items:forge:nuggets/gold>]);

//ethereal ec round
<recipetype:cgm:workbench>.remove(<item:scorchedguns:ethereal_ec_round>);
craftingtable.addshapeless("ethereal_ec_round", <item:scorchedguns:ethereal_ec_round>,
    [<item:scorchedguns:nitro_dust>, <item:scorchedguns:flechette>, <item:scorchedguns:diamond_steel_nugget>]);

//mo's guns
//7.62x51 nato
<recipetype:cgm:workbench>.remove(<item:moguns:762x51>);
craftingtable.addshapeless("762x51_nato", <item:moguns:762x51>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/brass>, <tag:items:forge:sand>, <item:minecraft:gunpowder>]);

//5.56x45 nato
<recipetype:cgm:workbench>.remove(<item:moguns:556x45>);
craftingtable.addshapeless("556x45_nato", <item:moguns:556x45>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>]);

//garbage
<recipetype:cgm:workbench>.remove(<item:moguns:garbage>);
craftingtable.addshapeless("garbage", <item:moguns:garbage>,
    [<item:minecraft:rotten_flesh>, <item:minecraft:poisonous_potato>, <tag:items:spoiled:foods>, <item:minecraft:gunpowder>]);

//9x39mm
<recipetype:cgm:workbench>.remove(<item:moguns:9x39>);
craftingtable.addshapeless("9x39mm", <item:moguns:9x39>,
    [<tag:items:forge:nuggets/iron>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//9x19mm
<recipetype:cgm:workbench>.remove(<item:moguns:9x19>);
craftingtable.addshapeless("9x19mm", <item:moguns:9x19>,
    [<tag:items:forge:nuggets/iron>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//12 gauge buckshot
<recipetype:cgm:workbench>.remove(<item:moguns:12_gauge>);
craftingtable.addshapeless("12_gauge_buckshot", <item:moguns:12_gauge>,
    [<item:minecraft:paper>, <tag:items:forge:nuggets/iron>, <item:minecraft:gunpowder>, <tag:items:forge:copper_ingot>]);

//12 gauge slug
<recipetype:cgm:workbench>.remove(<item:moguns:slug>);
craftingtable.addshapeless("12_gauge_slug", <item:moguns:slug>,
    [<item:minecraft:paper>, <item:minecraft:flint>, <item:minecraft:gunpowder>, <tag:items:forge:copper_ingot>]);

//.45 acp
<recipetype:cgm:workbench>.remove(<item:moguns:45acp>);
craftingtable.addshapeless("45_acp", <item:moguns:45acp>,
    [<tag:items:forge:nuggets/brass>, <item:minecraft:gunpowder>]);

//.30-06
<recipetype:cgm:workbench>.remove(<item:moguns:3006>);
craftingtable.addshapeless("3006", <item:moguns:3006>,
    [<tag:items:forge:nuggets/brass>, <tag:items:forge:nuggets/iron>, <item:minecraft:gunpowder>]);

//7.62x39
<recipetype:cgm:workbench>.remove(<item:moguns:762x39>);
craftingtable.addshapeless("762x39", <item:moguns:762x39>,
    [<tag:items:forge:nuggets/brass>, <tag:items:forge:sand>, <item:minecraft:gunpowder>]);

//musket cartridge
<recipetype:cgm:workbench>.remove(<item:moguns:musket_cartridge>);
craftingtable.addshapeless("musket_cartridge", <item:moguns:musket_cartridge>,
    [<item:minecraft:paper>, <item:minecraft:flint>, <item:minecraft:gunpowder>]);

//7.62x25 tokarev
<recipetype:cgm:workbench>.remove(<item:moguns:762x25>);
craftingtable.addshapeless("762x25_tokarev", <item:moguns:762x25>,
    [<tag:items:forge:nuggets/iron>, <item:minecraft:gunpowder>]);

//x-mas light
<recipetype:cgm:workbench>.remove(<item:moguns:x_mas_light>);
craftingtable.addshapeless("x_mas_light", <item:moguns:x_mas_light>,
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:glass>, <item:minecraft:redstone>]);

//taki
<recipetype:cgm:workbench>.remove(<item:moguns:taki>);
craftingtable.addshapeless("taki", <item:moguns:taki>,
    [<item:minecraft:wheat>, <item:minecraft:gunpowder>, <item:minecraft:rotten_flesh>]);

//flare
<recipetype:cgm:workbench>.remove(<item:moguns:flare>);
craftingtable.addshapeless("flare", <item:moguns:flare>,
    [<item:minecraft:gunpowder>, <item:minecraft:fire_charge>]);

//cgm
// missile
<recipetype:cgm:workbench>.remove(<item:cgm:missile>);
<recipetype:create:sequenced_assembly>.addrecipe(<recipetype:create:sequenced_assembly>.builder("missile")
                                                      .transitionto(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:plates/steel>)
                                                      .loops(1)
                                                      .addoutput(<item:cgm:missile>, 1)
                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<item:minecraft:tnt>))
                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<tag:items:forge:plates/steel>))
													  );
                                                      
// grenade
<recipetype:cgm:workbench>.remove(<item:cgm:grenade>);
craftingtable.addshapeless("grenade", <item:cgm:grenade>,
    [<tag:items:forge:sand>, <item:minecraft:gunpowder>, <item:minecraft:gunpowder>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:sequenced_assembly>.addrecipe(<recipetype:create:sequenced_assembly>.builder("grenade")
                                                      .transitionto(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:sand>)
                                                      .loops(2)
                                                      .addoutput(<item:cgm:grenade> * 2, 1)
                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
													  );
                                                      
// stun grenade
<recipetype:cgm:workbench>.remove(<item:cgm:stun_grenade>);
craftingtable.addshapeless("stun_grenade", <item:cgm:stun_grenade>,
    [<tag:items:forge:sand>, <item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]);
<recipetype:create:sequenced_assembly>.addrecipe(<recipetype:create:sequenced_assembly>.builder("stun_grenade")
                                                      .transitionto(<item:contenttweaker:incomplete_bullet>)
                                                      .require(<tag:items:forge:sand>)
                                                      .loops(2)
                                                      .addoutput(<item:cgm:stun_grenade> * 2, 1)
                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<tag:items:forge:nuggets/iron>))
                                                      .addstep<mods.createtweaker.deployerapplicationrecipe>((rb) => rb.require(<item:minecraft:blaze_powder>))
													  );