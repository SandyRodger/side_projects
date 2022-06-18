# all measurements are 1 gram/millilitre.

monday_cook = {
	:raw_brown_rice => 300,
	:olive_oil => 60,
	:garlic => 25,
	:white_onion => 310,
	:chestnut_mushroom => 85,
	:peppers => 489,
	:green_beans => 203,
	:beetroot => 501,
	:chickpeas => 494,
	:veggie_stock_cubes => 20,
	:nutritional_yeast => 27,
}

tuesday_cook = {
	:olive_oil => 60,
	:oats => 220,
	:garlic => 25,
	:white_onion => 252,
	:veggie_stock_cubes => 20,
	:aldi_kidney_beans_with_ring => 480,
	:spinach => 450,
	:aldi_italian_salad => 160,
	:babycorn => 147,
	:nutritional_yeast => 26
}

wednesday_cook = {
	:swede => 900,
	:olive_oil => 60,
	:chickpeas => 234,
	:aldi_kidney_beans_with_ring => 430,
	:brocolli => 349,
	:veggie_stock_cubes => 20,
	:spring_onions => 98,
	:kale => 200,
	:green_beans => 198,
	:nutritional_yeast => 25,
	:dark_soy_sauce => 31,
	:baby_plum_tomatoes => 155
}

monday_weight = 3324
tuesday_weight = 1156 + 1542 + 447
wednesday_weight = 1130 + 1150 + 540

calories_fat_protein_carbs ={
	:aldi_italian_salad => [0.17, 0.004, 0.024, 0.005],
	:aldi_oat_drink => [0.48, 0.76, 0.4, 0.077],
	:aldi_sunflower_spread => [6.3, 0.69, 0, 0],
	:aldi_kidney_beans => [0.98, 0.006, 0.077, 0.13],
	:aldi_kidney_beans_with_ring => [0.93, 0.004, 0.068, 0.12],
	:aldi_plant_menu_chicken => [2.02 , 0.047, 0.18, 0.19],
	:almond => [5.85, 0.52, 0.205, 0.205],
	:apple => [0.52, 0.0017, 0.0026, 0.1381],
	:avocado => [1.67, 0.15, 0.0206, 0.0882],
	:babycorn => [0.269, 0, 0.015, 0.046],
	:baby_plum_tomatoes => [0.18, 0.003, 0.007, 0.031],
	:banana => [1, 0, 0.01, 0.25],
	:bbq_sauce => [1, 0.003, 0, 0.363],
	:beetroot => [0.53, 0.004, 0.013, 0.11],
	:blueberries => [0.5, 0.007, 0, 0.121],
	:chia_seeds => [4.42, 0.31, 0.17, 0.077],
	:chickpeas => [1.09, 0.02, 0.062, 0.14],
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
	:dried_prunes => [1.68, 0.004, 0.023, 0.37],
	:falafel => [2.38, 0.12, 0.064, 0.28],
	:garlic => [1.49, 0.005, 0.0636, 0.33],
	:grapefruit => [0.42, 0.0014, 0.0077, 0.1066],
	:grapes => [0.68, 0.002, 0.007, 0.178],
	:green_beans => [0.35, 0.003, 0.019, 0.079],
	:houmous => [3.02, 0.24, 0.07, 0.12],
	:huel_protein => [3.62, 0.034, 0.69, 0.103],
	:kale => [0.45, 0.005, 0.032, 0.096],
	:kiwi => [0.61, 0.0052, 0.0114, 0.1466],
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
	:passata => [0.25, 0.004, 0.012, 0.043],
	:pear => [0.58, 0.0012, 0.0038, 0.1546],
	:peppers => [0.26, 0.003, 0.0099, 0.0603],
	:pickled_gherkins => [0.12, 0.003, 0.0048, 0.0238],
	:pomegranite_seeds => [0.61, 0.005, 0.013, 0.094],
	:rocket => [0.257, 0.003, 0.029, 0.019],
	:rye_bread => [2.29, 0.009, 0.049, 0.446],
	:rye_crispbread_with_sesame_seeds => [3.85, 0.078, 0.13, 0.58],
	:seed_mix => [5.76, 0.46, 0.23, 0.13],
	:spring_onions => [0.28, 0.005, 0.02, 0.03],
	:stella_beer => [0.39, 0, 0.004, 0.032],
	:swede => [0.36, 0.002, 0.012, 0.0813],
	:sweet_potato => [0.9, 0.0003, 0.02, 0.206],
	:potato => [0.58, 0.0012, 0.0243, 0.124],
	:red_grapes => [0.69, 0.002, 0.007, 0.18],
	:red_onion => [0.42, 0.0008, 0.0092, 0.1011],
	:satsuma => [0.5, 0, 0, 0.05],
	:string_beans => [0.23, 0.004, 0.016, 0.032],
	:spinach => [0.23, 0.003, 0.03, 0.038],
	:sundried_tomatoes => [2.112, 0.139, 0.05, 0.231],
	:vegan_beef_burgers => [2.28, 0.15, 0.15, 0.062],
	:vegan_coleslaw => [1.99, 0.18, 0.009, 0.072],
	:veggie_stock_cubes => [3.1, 0.18, 0, 0.09],
	:white_onion => [0.38, 0.0005, 0.0083, 0.0861],
	:cake => [1.449, 0.064, 0.023, 0.241]
}

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

monday_cook_macros = calories_calculator(monday_cook, calories_fat_protein_carbs)
tuesday_cook_macros = calories_calculator(tuesday_cook, calories_fat_protein_carbs)
wednesday_cook_macros = calories_calculator(wednesday_cook, calories_fat_protein_carbs)

monday_cook_grams = monday_cook_macros.map do |num|
	(num.to_f/monday_weight).round(3)
end

tuesday_cook_grams = tuesday_cook_macros.map do |num|
	(num.to_f/tuesday_weight).round(3)
end

wednesday_cook_grams = wednesday_cook_macros.map do |num|
	(num.to_f/wednesday_weight).round(3)
end

calories_fat_protein_carbs [:monday_cook_grams] = monday_cook_grams
calories_fat_protein_carbs [:tuesday_cook_grams] = tuesday_cook_grams
calories_fat_protein_carbs [:wednesday_cook_grams] = wednesday_cook_grams

# puts "Each gram in Wednesday's cook has #{wednesday_cook_grams[0]} calories, #{wednesday_cook_grams[1]}g fat #{wednesday_cook_grams[2]}g protein, #{wednesday_cook_grams[3]}g carbs" 

thursday_input = {
	:huel_protein => 54,
	:tuesday_cook_grams => 854 + 755,
	:apple => 101,
	:wednesday_cook_grams => 649 + 786,
	:falafel => 117,
	:olive_oil => 30,
	:pear => 159,
	:blueberries => 27,
	:kiwi => 59,
	:grapes => 52,
	:vegan_beef_burgers => 113
}

thursday_macros = calories_calculator(thursday_input, calories_fat_protein_carbs)

puts "today (Thursday 6th) thus far, i have consumed #{thursday_macros[0]}/3,207 calories, #{thursday_macros[1]}/91g fat, #{thursday_macros[2]}/120g protein, #{thursday_macros[3]}/428g carbs"