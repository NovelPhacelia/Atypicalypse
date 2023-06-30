#loader contenttweaker

import contenttweaker.builder.vanilla.item.Basic;
import contenttweaker.object.vanilla.property.StandardItemProperties;

val deceasedCreativeTab = <factory:creative_tab>.create("deceasedTab", <item:minecraft:zombie_head>);
val deceasedTab = <tab:deceasedTab>;

// Misc
val incomplete_small_redstone_battery = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(5)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_small_redstone_battery");

val incomplete_ender_pearl = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_ender_pearl");

val polyethylene = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:uncommon>)
    .build("polyethylene");

val high_carbon_steel_alloy = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:epic>)
    .build("high_carbon_steel_alloy");

val resistant_fiber = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:rare>)
    .build("resistant_fiber");

val resistant_fabric = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:rare>)
    .build("resistant_fabric");

val rubber = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:uncommon>)
    .build("rubber");
    

// IE
val incomplete_electron_tube = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(3)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_electron_tube");

val incomplete_component_electronic = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(3)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_component_electronic");

val incomplete_component_electronic_adv = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(3)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_component_electronic_adv");
    
// refinedstorage

val silica_dust = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("silica_dust");

val incomplete_basic_processor = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_basic_processor");

val incomplete_improved_processor = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_improved_processor");

val incomplete_advanced_processor = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_advanced_processor");

val incomplete_1k_storage_part = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_1k_storage_part");

val incomplete_4k_storage_part = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_4k_storage_part");
    
val incomplete_16k_storage_part = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_16k_storage_part");
    
val incomplete_64k_storage_part = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_64k_storage_part");


val incomplete_64k_fluid_storage_part = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_64k_fluid_storage_part");

val incomplete_256k_fluid_storage_part = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_256k_fluid_storage_part");

val incomplete_1024k_fluid_storage_part = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_1024k_fluid_storage_part");

val incomplete_4096k_fluid_storage_part = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_4096k_fluid_storage_part");

// Molds
val mold_basic_processor = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("mold_basic_processor");

val mold_improved_processor = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("mold_improved_processor");
    
val mold_advanced_processor = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("mold_advanced_processor");

val incomplete_bullet = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_bullet");
    
val mold_bullet_casing_small = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("mold_bullet_casing_small");
    
val mold_bullet_casing_short = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("mold_bullet_casing_short");

val mold_bullet_casing_medium = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("mold_bullet_casing_medium");

val mold_bullet_casing_long = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("mold_bullet_casing_long");

val mold_bullet_casing_heavy = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("mold_bullet_casing_heavy");

val mold_bullet_casing_special = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("mold_bullet_casing_special");

val mold_bullet_casing_shell = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("mold_bullet_casing_shell");

// Cars
val incomplete_battery = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(10)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_battery");

val incomplete_engine_piston = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(4)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_engine_piston");

val incomplete_engine_3_cylinder = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(18)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_engine_3_cylinder");
	
val incomplete_engine_6_cylinder = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(18)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_engine_6_cylinder");

val incomplete_engine_truck = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(18)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_engine_truck");

val incomplete_wheel = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(9)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_wheel");

val incomplete_big_wheel = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(9)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_big_wheel");

val incomplete_small_tank = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(3)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_small_tank");

val incomplete_medium_tank = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(4)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_medium_tank");
	
val incomplete_large_tank = <factory:item>.typed<Basic>()
    .tab(deceasedTab)
	.durability(4)
    .rarity(<constant:minecraft:item/rarity:common>)
    .build("incomplete_large_tank");