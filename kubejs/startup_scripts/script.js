// priority: 0

console.info('Hello, World! (You will only see this line once in console, during startup)')

StartupEvents.registry('item', event => {
	// Register new items here
	// event.create('example_item').displayName('Example Item')

	event.create('wrought_iron_ingot').displayName('Wrought Iron Ingot');
	event.create('cast_iron_ingot').displayName('Cast Iron Ingot');
	event.create('pig_iron_ingot').displayName('Pig Iron Ingot');

	// WIP Items
	event.create('quicklime').displayName('Quicklime');
	event.create('titanium_ingot').displayName('Titanium Ingot').texture('kubejs:item/generic_ingot');
	event.create('tungsten_ingot').displayName('Tungsten Ingot').texture('kubejs:item/generic_ingot');
	event.create('beryllium_ingot').displayName('Beryllium Ingot').texture('kubejs:item/generic_ingot');
	event.create('aluminum_bronze_ingot').displayName('Aluminum Bronze Ingot').texture('kubejs:item/generic_ingot');
	event.create('beryllium_bronze_ingot').displayName('Beryllium Bronze Ingot').texture('kubejs:item/generic_ingot');
	event.create('celestial_bronze_ingot').displayName('Celestial Bronze Ingot').texture('kubejs:item/generic_ingot');
	event.create('stygian_iron_ingot').displayName('Stygian Iron Ingot').texture('kubejs:item/generic_ingot');
	event.create('spangold_ingot').displayName('Spangold Ingot').texture('kubejs:item/generic_ingot');
	event.create('platinum_ingot').displayName('Platinum Ingot').texture('kubejs:item/generic_ingot');
	event.create('leaded_copper_ingot').displayName('Leaded Copper Ingot').texture('kubejs:item/generic_ingot');

})

StartupEvents.registry('fluid', e => {
	e.create('molten_cast_iron')
		.thickTexture(0xf02b11)
		.bucketColor(0xf02b11)
		.displayName('Molten Cast Iron')
		.luminosity(15)
		.stillTexture('block/thick_fluid_still')
		.flowingTexture('block/thick_fluid_flow')
})

StartupEvents.registry('block', event => {
	// Register new blocks here
	// event.create('example_block').material('wood').hardness(1.0).displayName('Example Block')
})