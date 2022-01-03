# all measurements are 1 gram/millilitre.

friday_evening_cook = {
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

friday_midday_cook = {
	:raw_brown_rice => 295,
	:red_onion => 123,
	:carrots => 349,
	:cucumber => 223,
	:babycorn => 299,
	:baby_plum_tomatoes => 255,
	:seed_mix => 73,
	:nutritional_yeast => 25,
	:pasata => 500,
	:garlic => 31,
	:olive_oil => 60,
	:veggie_stock_cubes => 20
}


friday_weight = 2605
friday_weight_2 = 2568


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

calories_fat_protein_carbs ={
	:aldi_oat_drink => [0.48, 0.76, 0.4, 0.077],
	:aldi_sunflower_spread => [6.3, 0.69, 0, 0],
	:aldi_kidney_beans => [0.98, 0.006, 0.077, 0.13],
	:aldi_plant_menu_chicken => [2.02 , 0.047, 0.18, 0.19],
	:almond => [5.85, 0.52, 0.205, 0.205],
	:apple => [0.52, 0.0017, 0.0026, 0.1381],
	:avocado => [1.67, 0.15, 0.0206, 0.0882],
	:babycorn => [0.269, 0, 0.015, 0.046],
	:baby_plum_tomatoes => [0.18, 0.003, 0.007, 0.031],
	:banana => [1, 0, 0.01, 0.25],
	:bbq_sauce => [1, 0.003, 0, 0.363],
	:blueberries => [0.5, 0.007, 0, 0.121],
	:chia_seeds => [4.42, 0.31, 0.17, 0.077],
	:raw_brown_rice => [3.49, 0.009, 0.026, 0.23],
	:brocolli => [0.32, 0.004, 0.028, 0.066],
	:brown_spag => [3.35, 0.0375, 0.00175, 0.63],
	:carrots => [0.41, 0.002, 0.009, 0.096],
	:courgettes => [0.17, 0.003, 0.012, 0.031],
	:chestnut_mushroom => [0.08, 0.005, 0.01, 0.005],
	:crunchy_PB => [6.34, 0.5, 0.26, 0.14],
	:cashew_nuts => [0.5, 0.5, 0.17, 0.16],	
	:cherry_tom => [0.186, 0.002, 0.009, 0.04],
	:cucumber => [0.15, 0.001, 0.01, 0.036],
	:dark_soy_sauce => [0.83, 0.004, 0.015, 0],
	:garlic => [1.49, 0.005, 0.0636, 0.33],
	:grapes => [0.68, 0.002, 0.007, 0.178],
	:houmous => [3.02, 0.24, 0.07, 0.12],
	:huel_protein => [3.62, 0.034, 0.69, 0.103],
	:kale => [0.45, 0.005, 0.032, 0.096],
	:dried_figs => [2.74, 0.022, 0.029, 0.57],
	:dried_kidney_beans => [3.31, 0.01, 0.24, 0.61],
	:margarine => [7.2, 0, 0, 0],
	:mushrooms => [0.28, 0, 0.02, 0.05],
	:nutritional_yeast => [0.344, 0.04, 0.51, 0.37],
	:oatcakes=> [4.47, 0.174, 0.103, 0.58],
	:oats => [4.14, 0.081, 0.11, 0.71],
	:olive_oil => [8.33, 1, 0, 0],
	:orange => [0.47, 0.0012, 0.0094, 0.1175],
	:ale => [0.32, 0, 0, 0.023],
	:pasata => [0.25, 0.004, 0.012, 0.043],
	:pear => [0.58, 0.0012, 0.0038, 0.1546],
	:pickled_gherkins => [0.12, 0.003, 0.0048, 0.0238],
	:pomegranite_seeds => [0.61, 0.005, 0.013, 0.094],
	:rye_bread => [2.29, 0.009, 0.049, 0.446],
	:rye_crispbread_with_sesame_seeds => [3.85, 0.078, 0.13, 0.58],
	:seed_mix => [5.76, 0.46, 0.23, 0.13],
	:stella_beer => [0.39, 0, 0.004, 0.032],
	:sweet_potato => [0.9, 0.0003, 0.02, 0.206],
	:potato => [0.58, 0.0012, 0.0243, 0.124],
	:red_onion => [0.42, 0.0008, 0.0092, 0.1011],
	:satsuma => [0.5, 0, 0, 0.05],
	:string_beans => [0.23, 0.004, 0.016, 0.032],
	:spinach => [0.23, 0.003, 0.03, 0.038],
	:sundried_tomatoes => [2.112, 0.139, 0.05, 0.231],
	:veggie_stock_cubes => [3.1, 0.18, 0, 0.09]
}

friday_cook_macros = calories_calculator(friday_evening_cook, calories_fat_protein_carbs)
friday_cook_macros_2 = calories_calculator(friday_midday_cook, calories_fat_protein_carbs)

friday_cook_grams = friday_cook_macros.map do |num|
	(num.to_f/friday_weight).round(3)
end

friday_cook_grams_2 = friday_cook_macros_2.map do |num|
	(num.to_f/friday_weight_2 ).round(3)
end

calories_fat_protein_carbs [:friday_cook_grams] = friday_cook_grams
calories_fat_protein_carbs [:friday_cook_grams_2] = friday_cook_grams_2

# puts "Each gram in friday's cook has #{friday_cook_grams[0]} calories, #{friday_cook_grams[1]}g fat #{friday_cook_grams[2]}g protein, #{friday_cook_grams[3]}g carbs" 

# calories = #{day_macros[0]}/3,207
# fat = #{day_macros[1]}/91
# protein = #{day_macros[2]}/120
# carbs = #{day_macros[3]}/428"

friday_input = {
 
	:friday_cook_grams => 897 + 441,
  :friday_cook_grams_2 => 638 + 500,
	:pomegranite_seeds => 80,
	:pear => 136,
	:cucumber => 113,
	:margarine => 16,
	:rye_bread => 68 + 77,
	:oatcakes => 64,
	:huel_protein => 29,
	:aldi_plant_menu_chicken => 120,
}

friday_macros = calories_calculator(friday_input, calories_fat_protein_carbs)

puts "today thus far, i have consumed #{friday_macros[0]}/3,207 calories, #{friday_macros[1]}/91g fat, #{friday_macros[2]}/120g protein, #{friday_macros[3]}/428g carbs"