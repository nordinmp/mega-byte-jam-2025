/// @description Constructor

name = "Ingredient";
hovering = false;

// scales from 0 to 10
attributes = {
	// Culinary Attributes
	Tasty: 0,
	Bitter: 0,
	Sweet: 0,
	Sour: 0,
	Salty: 0,
	Spicy: 0,
	Umami: 0,
	Crunchy: 0,
	Juicy: 0,
	Aromatic: 0,
	Fresh: 0,
	Rotten: 0,
	Rich: 0,
	Creamy: 0,
	Earthy: 0,
	Smoky: 0,
	Tangy: 0,
	Savory: 0,
	Bland: 10,
	Exotic: 0,

	// Alchemical / Magical Attributes
	Toxic: 10,
	Healing: 0,
	Energizing: 0,
	Calming: 0,
	Hallucinogenic: 0,
	Explosive: 0,
	Flammable: 0,
	Cooling: 0,
	Heating: 0,
	Corrosive: 10,
	Magnetic: 10,
	Luminescent: 0,
	Invisible: 0,
	Sticky: 0,
	Slippery: 0,
	Conductive: 0,
	Absorbent: 0,
	Mutagenic: 0,
	Purifying: 0,
	Cursed: 0,
	Blessed: 0,
	Volatile: 0,
	Stabilizing: 0,
	Ethereal: 0,
	Crystalline: 0,
	Metallic: 0,
	Organic: 0,
	Temporal: 0,
	Astral: 0,
	ElementalFire: 0,
	ElementalWater: 0,
	ElementalAir: 0,
	ElementalEarth: 0,
	Poisonous: 0,
	Regenerative: 0,
	Transformative: 0,

	// Meta Attributes
	Rarity: 10,
	Potency: 0,
	Freshness: 0,
	Value: 0,
	Weight: 0,
	Stability: 0,
	Compatibility: 0,
	MagicalAffinity: 0,
	ShelfLife: 10,
};

text = name+"\n";
var keys = variable_struct_get_names(attributes);
for (var i = 0; i < array_length(keys); i++) {
	var key_name = keys[i];
	var val = variable_struct_get(attributes, key_name);
	if (val != 0) {
		text += key_name + ": " + string(val) + "\n";
	}
}