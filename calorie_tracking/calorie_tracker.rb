require_relative 'calorie_data'

# all measurements are 1 gram/millilitre.

# wedenesday_evening_cook = {
# 	:sweet_potato => 990,
#   :carrots => 291,
#   :spinach => 383,
#   :courgettes => 608,
#   :mushrooms => 136,
#   :aldi_kidney_beans => 480,
#   :nutritional_yeast => 26,
#   :aldi_sunflower_spread => 47,
#   # :almond => 51,
# 	:almond => 25,
#   :garlic => 30,
#   :red_onion => 151,
#   :apple => 143,
#   :orange => 200,
#   :pear =>153,
#   :veggie_stock_cubes => 20,
#   :aldi_oat_drink => 40
#   # :huel_protein => 58
# }

thursday_evening_cook = {
	:oats => 204,
	:red_onion => 276,
	:garlic => 34,
	:olive_oil => 60,
	:brocolli => 338,
	:string_beans => 218,
	:kale => 200,
	:veggie_stock_cubes => 20,
	:chia_seeds => 21,
	:aldi_kidney_beans => 480
}

thursday_weight = 2605


def calories_calculator(foods_and_weights, nutrients_hash)

	calories = 0
	protein = 0
	fat = 0
	carbs = 0

	foods_and_weights.each do |key, value|
		calories += nutrients_hash[key][0]*value
		fat += nutrients_hash[key][1]*value
		protein += nutrients_hash[key][2]*value
		carbs += nutrients_hash[key][3]*value
	end

	[calories.round, fat.round, protein.round, carbs.round]

end



thursday_cook_macros = calories_calculator(thursday_evening_cook, calories_fat_protein_carbs)

thursday_cook_grams = thursday_cook_macros.map do |num|
	(num.to_f/thursday_weight).round(3)
end

calories_fat_protein_carbs [:thursday_cook_grams] = thursday_cook_grams

# puts "Each gram in Thursday's cook has #{thursday_cook_grams[0]}g carbs, #{thursday_cook_grams[1]}g fat #{thursday_cook_grams[2]}g protein, #{thursday_cook_grams[3]}g carbs" 

# calories = #{day_macros[0]}/3,207
# fat = #{day_macros[1]}/91
# protein = #{day_macros[2]}/120
# carbs = #{day_macros[3]}/428"

thursday_input = {
	:huel_protein => 54,
	:thursday_cook_grams => 801 + 623 + 669,
	:apple => 143,
	:orange =>200,
	:dried_figs => 72,
	:stella_beer => 568 * 4,
	:margarine => 10,
	:rye_bread => 74,
	:blueberries => 131,
	# :oatcakes => 64,
	# :almond => 51
	:olive_oil => 45
}

thursday_macros = calories_calculator(thursday_input, calories_fat_protein_carbs)

puts "today thus far, i have consumed #{thursday_macros[0]}/3,207 calories, #{thursday_macros[1]}/91g fat, #{thursday_macros[2]}/120g protein, #{thursday_macros[3]}/428g carbs"

# stella = calories_fat_protein_carbs [:stella_beer]
# puts "four pints of stella contain #{stella[0] * 2248} calories, #{stella[1] * 2248}g fat, #{stella[2] * 2248}g protein and #{stella[3] * 2248}g carbs"