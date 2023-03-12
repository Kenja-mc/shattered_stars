// priority: 1

console.info('Hello, World! (You will see this line every time server resources reload)')

ServerEvents.recipes(event => {
	// Change recipes here

	// event.remove({id: 'create:crafting/materials/andesite_alloy'});
	// event.remove({id: 'create:mixing/andesite_alloy_from_zinc'});
	// event.remove({id: 'create:mixing/andesite_alloy'});
})

ServerEvents.tags('item', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')

	event.add('forge:ingots/wrought_iron', 'kubejs:wrought_iron_ingot');
	event.add('forge:ingots/cast_iron', 'kubejs:cast_iron_ingot');
	event.add('forge:ingots/pig_iron', 'kubejs:pig_iron_ingot');


})