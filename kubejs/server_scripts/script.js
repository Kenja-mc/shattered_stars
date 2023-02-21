// priority: 0

console.info('Hello, World! (You will see this line every time server resources reload)')

ServerEvents.recipes(event => {
	// Change recipes here

	// Remove all recipes relating to Thermal Cultivation Flax, Tea, Onion and Rice
	
	// Items to remove
	// Removing Thermal Cultivation Crop overlap 
	event.remove({input: 'thermal:flax_block'});
	event.remove({input: 'thermal:flax'});
	event.remove({input: 'thermal:flax_seeds'});
	event.remove({input: 'thermal:tea_seeds'});
	event.remove({input: 'thermal:tea'});
	event.remove({input: 'thermal:tea_block'});
	event.remove({input: 'thermal:onion_seeds'});
	event.remove({input: 'thermal:onion'});
	event.remove({input: 'thermal:onion_block'});
	event.remove({input: 'thermal:rice_seeds'});
	event.remove({input: 'thermal:rice'});
	event.remove({input: 'thermal:rice_block'});

})

ServerEvents.tags('item', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')
})