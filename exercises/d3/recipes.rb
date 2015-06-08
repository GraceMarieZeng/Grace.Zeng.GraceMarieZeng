snickerdoodles_ingredients = ["flour", "baking soda", "tartar", "salt", "butter", "brown sugar", "granulated sugar", "eggs", "vanillia", "cinmaon"]
chocochip_ingredients = ["butter", "brown sugar", "granulated sugar", "eggs", "vanilla", "semisweet chocolate chips", "flour", "baking soda", "salt"]
peanutbutter_ingredients =["granulated sugar", "brown sugar", "peanut butter", "shortening", "butter", "flour", "baking soda", "baking powder", "salt"]
	ingredients_hash ={snickerdoodles:snickerdoodles_ingredients, chocochip: chocochip_ingredients, peanutbutter: peanutbutter_ingredients}
	descriptions_hash ={snickerdoodles: "A delicious sugary and soft cookie creation.", chocochip: "The cookie you grew up with.", peanutbutter: "For all the peanut butter lovers out there."}
snickerdoodle_steps = ["1. Mix indgredients.", "2. Form 1 inch diameter balls of the combined dough.", "3. Place balls on a baking sheet and bake at 350 degrees for 12 minutes.", "4. Let cool for 10 minutes."]
chocochip_steps =["1. Mix indgredients.", "2. Form 1 inch diameter balls of the combined dough.", "3. Place balls on a baking sheet and bake at 350 degrees for 12 minutes.", "4. Let cool for 10 minutes."]
peanutbutter_steps =["1. Mix indgredients.", "2. Form 1 inch diameter balls of the combined dough.", "3. Place balls on a baking sheet and bake at 350 degrees for 12 minutes.", "4. Let cool for 10 minutes."]
	steps_hash = {snickerdoodles: snickerdoodle_steps, chocochip: chocochip_steps, peanutbutter: peanutbutter_steps }
		recipes = {ingredients: ingredients_hash , descriptions: descriptions_hash, steps: steps_hash}
recipes.each do |key, value|
	puts value
	puts key
end 

