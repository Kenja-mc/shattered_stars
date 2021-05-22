// priority: 0

settings.logAddedRecipes = true
settings.logRemovedRecipes = true
settings.logSkippedRecipes = false
settings.logErroringRecipes = true

console.info('Hello, World! (You will see this line every time server resources reload)')

onEvent('recipes', event => {
	// Change recipes here
})

onEvent('item.tags', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')
})

/*
events.listen('player.chat', function (event) {
	// Check the total time played, this should be world-specific
	if (event.player.stats.get("minecraft:play_one_minute") < 100000) {
		// Give some starting items to the player
		event.player.give('minecraft:stone_sword');
		event.player.give('minecraft:stone_pickaxe');
		event.player.give('minecraft:stone_axe');
		event.player.give(Item.of('minecraft:netherite_sword', {
			Damage: 0,
			AttributeModifiers: [{
				Amount: 1000,
				Name: "generic.attack_damage",
				Operation: 0,
				UUID: [1065273072, 1089919079, 1021484284, 1533953285],
				AttributeName: "generic.attack_damage",
				Slot: "mainhand"
			}]
		}));
	}
});
*/