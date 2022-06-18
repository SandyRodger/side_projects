require 'pry'
BIG_GLASS_POT = 1597
SMALL_GLASS_POT = 933
THREE_LEVEL_SCOOPS_VEGAN_GAINZ = 96
BIG_GREEN_BOX = 104
WINE_BOTTLE = 750
WHITE_BOWL = 607
ONE_BOURBON = 13.9
# all measurements are 1 gram/millilitre

tuesday_rice = {
	:raw_brown_rice => 440,
	:red_onion => 211,
	:olive_oil => 29,
	:veggie_stock_cubes => 20,
	:garlic => 22,
	:carrots => 447,
	:sugar_snap_peas => 159,
	:cherry_tomatoes => 252,
	:vegan_streaky_bacon => 180,
	:aldi_kidney_beans_with_ring => 481,
}

tuesday_sweet_potato = {
	:spinach => 450,
	:sweet_potato => 1006,
	:red_onion => 210,
	:olive_oil => 37,
	:veggie_stock_cubes => 20,
	:garlic => 32,
	:cabbage => 491,
	:chimichuri_olives => 150,
	:beetroot => 599,
	:flaxseed => 55,
}

monday_porridge = {
	:nutritional_yeast => 18,
	:oats => 350,
	:olive_oil => 42,
	:white_onion => 177,
	:chia_seeds => 48,
	:garlic_paste => 20,
	:veggie_stock_cubes => 10,
}

thursday_rice = {
	:raw_brown_rice => 298,
	:carrots => 247,
	:olive_oil => 40,
	:veggie_stock_cubes => 20,
	:cauliflower => 144 + 312,
	:string_beans => 226,
	:kale => 200,
	:garlic_paste => 20,
}

thursday_lentils = {
	:lentils => 355,
	:veggie_stock_cubes => 10,
	:flaxseed => 48
}

thursday_brocolli = {
	:red_onion => 208,
	:olive_oil => 26,
	:brocolli => 343,
	:veggie_stock_cubes => 10,
	:carrots => 196,
	:mushrooms => 117,
	:babycorn => 145,
	:beetroot => 500
}

tuesday_rice_weight = 2321 + 1092	
tuesday_sweet_potato_weight = 1573 + 986
monday_porridge_weight = 2140
thursday_brocolli_weight = 3349 - BIG_GLASS_POT
thursday_lentils_weight = 986
thursday_rice_weight = 1527 + 834

calories_fat_protein_carbs_fibre = {
	:aldi_italian_salad => [0.17, 0.004, 0.024, 0.005, 0.02],
	:aldi_kidney_beans => [0.98, 0.006, 0.077, 0.13, 0.057], 
	:aldi_kidney_beans_with_ring => [0.93, 0.004, 0.068, 0.12, 0.097], 
	:aldi_oat_drink => [0.48, 0.015, 0.003, 0.077, 0.007], 
	:aldi_plant_menu_chicken => [2.02, 0.047, 0.18, 0.19, 0.059], 
	:aldi_sunflower_spread => [6.3, 0.69, 0, 0, 0.002], 
	:ale => [0.32, 0, 0, 0.023, 0], 
	:almond => [5.85, 0.52, 0.205, 0.205, 0.118], 
	:apple => [0.52, 0.0017, 0.0026, 0.1381, 0.024], 
	:asparagus => [0.2, 0.0012, 0.022, 0.0388, 0.021], 
	:avocado => [1.67, 0.15, 0.0206, 0.0882, 0.0625], 
	:baby_plum_tomatoes => [0.18, 0.003, 0.007, 0.031, 0.012], 
	:babycorn => [0.269, 0, 0.015, 0.046, 0.02], 
	:banana => [1, 0, 0.01, 0.25, 0.026], 
	:bbq_sauce => [1, 0.003, 0, 0.363, 0.012], 
	:beetroot => [0.53, 0.004, 0.013, 0.11, 0.011], 
	:biscuit_bourbon => [4.94, 0.21, 0.05, 0.71, 0], 
	:blueberries => [0.5, 0.007, 0, 0.121, 0.024],
	:brocolli => [0.32, 0.004, 0.028, 0.066, 0.026],
	:brown_spag => [3.35, 0.0375, 0.00175, 0.63, 0.084], 
	:cabbage => [0.24, 0.0012, 0.0144, 0.0558, 0.023], 
	:cake => [1.449, 0.064, 0.023, 0.241, 0.013], 
	:carrots => [0.41, 0.002, 0.009, 0.096, 0.028], 
	:cashew_nuts => [0.5, 0.5, 0.17, 0.16, 0.032], 
	:cauliflower => [0.25, 0.001, 0.0198, 0.001, 0.025], 
	:cherry_tomatoes => [0.186, 0.002, 0.009, 0.04, 0.012], 
	:chestnut_mushroom => [0.08, 0.005, 0.01, 0.005, 0.01], 
	:chia_seeds => [4.42, 0.31, 0.17, 0.077, 0.34], 
	:chickpeas => [1.09, 0.02, 0.062, 0.14, 0.08], 
	:chimichuri_olives => [1.60, 0.16, 0.011, 0.015, 0.031],
	:courgettes => [0.17, 0.003, 0.012, 0.031, 0.011],
	:crunchy_PB => [6.34, 0.5, 0.26, 0.14, 0.063], 
	:cucumber => [0.15, 0.001, 0.01, 0.036, 0.005], 
	:dark_soy_sauce => [0.83, 0.004, 0.015, 0, 0.002], 
	:dried_figs => [2.74, 0.022, 0.029, 0.57, 0.078], 
	:dried_kidney_beans => [3.31, 0.01, 0.24, 0.61, 0.07], 
	:dried_mango => [3.04, 0.007, 0.021, 0.71, 0.034], 
	:dried_prunes => [1.68, 0.004, 0.023, 0.37, 0.057], 
	:falafel => [2.38, 0.12, 0.064, 0.28, 0.064], 
	:fizzy_fish_sweets => [3.52, 0.0005, 0.0005, 0.87, 0],
	:flaxseed => [4.9, 0.38, 0.21, 0.013, 0.29], 
	:fruit_cake_with_icing => [3.5, 0.082, 0.039, 0.652, 0.036], 
	:garlic => [1.49, 0.005, 0.0636, 0.33, 0.021], 
	:garlic_paste => [4.58, 0.003, 0.054, 0.19, 0.04],
	:gnocchi => [1.33, 0.003, 0.027, 0.29, 0.03],
	:grapefruit => [0.42, 0.0014, 0.0077, 0.1066, 0.011], 
	:grapes => [0.68, 0.002, 0.007, 0.178, 0.009], 
	:green_beans => [0.35, 0.003, 0.019, 0.079, 0.085],
	:guiness => [0.35, 0, 0.003, 0.028, 0],
	:honey => [3.04, 0, 0.003, 0.82, 0.002],
	:honeydew_melon => [0.36, 0.0014, 0.0054, 0.0909, 0.008], 
	:houmous => [3.02, 0.24, 0.07, 0.12, 0.033],
	:huel_protein => [3.62, 0.034, 0.69, 0.103, 0.054],
	:instant_noodles => [0.66, 0.028, 0.013, 0.088, 0.02],
	:ipa_beer => [0.58, 0, 0.009, 0.0027, 0], 
	:kale => [0.45, 0.005, 0.032, 0.096, 0.02], 
	:ketchup => [0.97, 0.003, 0.017, 0.252, 0.003], 
	:kiwi => [0.61, 0.0052, 0.0114, 0.1466, 0.03], 
	:lentils => [1.19, 0.007, 0.081, 0.169, 0.063],
	:lychee => [0.66, 0.0044, 0.0083, 0.1653, 0.013],
	:mangetout => [0.33, 0.002, 0.036, 0.042, 0.02], 
	:margarine => [7.2, 0, 0, 0, 0.001], 
	:marmalade => [2.46, 0, 0.003, 0.663, 0.007],
	:marmite => [2.71, 0.003, 0.39, 0.29, 0], 
	:mushrooms => [0.28, 0, 0.02, 0.05, 0.005],
	:nectarine => [0.44, 0.003, 0.036, 0.106, 0.017],
	:nutritional_yeast => [0.344, 0.04, 0.51, 0.37, 0.2], 
	:oatcakes => [4.47, 0.174, 0.103, 0.58, 0.076], 
	:oats => [4.14, 0.081, 0.11, 0.71, 0.106], 
	:olive_oil => [8.33, 1, 0, 0, 0], 
	:orange => [0.47, 0.0012, 0.0094, 0.1175, 0.024], 
	:passata => [0.25, 0.004, 0.012, 0.043, 0.018], 
	:pasta_sauce_tomato_coop => [0.76, 0.031, 0.023, 0.083, 0.025],
	:pear => [0.58, 0.0012, 0.0038, 0.1546, 0.031], 
	:peppers => [0.26, 0.003, 0.0099, 0.0603, 0.02],
	:pickled_gherkins => [0.12, 0.003, 0.0048, 0.0238, 0.008], 
	:pickled_onions => [0.23, 0.001, 0.008, 0.049, 0.007],
	:pomegranite_seeds => [0.61, 0.005, 0.013, 0.094, 0.04],
	:potato => [0.58, 0.0012, 0.0243, 0.124, 0.017], 
	:raisins_and_cranberries => [3.1, 0.007, 0.014, 0.74, 0.015],
	:raw_brown_rice => [3.49, 0.027, 0.075, 0.76, 0.034], 
	:red_grapes => [0.69, 0.002, 0.007, 0.18, 0.009], 
	:red_onion => [0.42, 0.0008, 0.0092, 0.1011, 0.014],
	:red_wine => [0.87, 0, 0, 0.0369, 0], 
	:rocket => [0.257, 0.003, 0.029, 0.019, 0.016], 
	:rye_bread => [2.29, 0.009, 0.049, 0.446, 0.106], 
	:rye_crispbread_with_sesame_seeds => [3.85, 0.078, 0.13, 0.58, 0.15],
	:satsuma => [0.5, 0, 0, 0.05, 0.015],
	:seed_mix => [5.76, 0.46, 0.23, 0.13, 0.087], 
	:shredded_greens => [0.26, 0.007, 0.019, 0.016, 0.026], 
	:spinach => [0.23, 0.003, 0.03, 0.038, 0.022],
	:spring_onions => [0.28, 0.005, 0.02, 0.03, 0.014], 
	:stella_beer => [0.39, 0, 0.004, 0.032, 0],
	:stir_fried_rice => [3.286, 0.014, 0.1, 0.729, 0.029], 
	:string_beans => [0.23, 0.004, 0.016, 0.032, 0.034],
	:sugar_snap_peas => [0.42, 0.002, 0.028, 0.0755, 0.026], 
	:sundried_tomatoes => [2.112, 0.139, 0.05, 0.231, 0.027], 
	:swede => [0.36, 0.002, 0.012, 0.0813, 0.025], 
	:sweet_potato => [0.9, 0.0003, 0.02, 0.206, 0.03], 
	:sweetcorn => [0.73, 0.014, 0.024, 0.11, 0.027],
	:tropical_mango_kitten_sweets => [3.41, 0.001, 0.008, 0.83, 0],
	:vegan_beef_burgers => [2.28, 0.15, 0.15, 0.062, 0.027], 
	:vegan_celebration_chocolate_cake => [3.89, 0.204, 0.035, 0.472, 0.039],
	:vegan_cheddar => [3.02, 0.243, 0.005, 0.204, 0.002],
	:moser_roth_vegan_chocolate => [5.57, 0.33, 0.035, 0.62, 0.03],
	:vegan_chocolate_sponge_aldi => [3.99, 0.225, 0.044, 0.438, 0.016],
	:vegan_coleslaw => [1.99, 0.18, 0.009, 0.072, 0.012],
	:vegan_gainz_protein => [3.8313, 0.0416, 0.2431, 0.621, 0.0367],
	:vegan_pie => [0.87, 0.01, 0.04, 0.16, 0.03], 
	:vegan_streaky_bacon => [2.23, 0.14, 0.109, 0.095, 0.077],
	:vegan_yoghurt => [0.79, 0.024, 0.037, 0.1, 0.006], 
	:veggie_stock_cubes => [3.1, 0.18, 0, 0.09, 0.002], 
	:whiskey => [2.35, 0, 0, 0.0009, 0], 
	:white_onion => [0.38, 0.0005, 0.0083, 0.0861, 0.014], 
	:white_wine => [0.82, 0, 0.0007, 0.0232, 0],
}

def calories_calculator(foods_and_weights, nutrients_hash)

	calories = 0
	protein = 0
	fat = 0
	carbs = 0
	fibre = 0

	foods_and_weights.each do |key, value|
		calories += nutrients_hash[key][0]*value
		fat += nutrients_hash[key][1]*value
		protein += nutrients_hash[key][2]*value
		carbs += nutrients_hash[key][3]*value
		fibre += nutrients_hash[key][4]*value
	end

	[calories.round, fat.round, protein.round, carbs.round, fibre.round]

end

# monday_porridge

monday_porridge_macros = calories_calculator(monday_porridge, calories_fat_protein_carbs_fibre)

monday_porridge_grams = monday_porridge_macros.map do |num|
	(num.to_f/monday_porridge_weight).round(3)
end

calories_fat_protein_carbs_fibre [:monday_porridge_grams] = monday_porridge_grams

# tuesday_sweet_potato

tuesday_sweet_potato_macros = calories_calculator(tuesday_sweet_potato, calories_fat_protein_carbs_fibre)

tuesday_sweet_potato_grams = tuesday_sweet_potato_macros.map do |num|
	(num.to_f/tuesday_sweet_potato_weight).round(3)
end

calories_fat_protein_carbs_fibre [:tuesday_sweet_potato_grams] = tuesday_sweet_potato_grams

# tuesday_rice

tuesday_rice_macros = calories_calculator(tuesday_rice, calories_fat_protein_carbs_fibre)

tuesday_rice_grams = tuesday_rice_macros.map do |num|
	(num.to_f/tuesday_rice_weight).round(3)
end

calories_fat_protein_carbs_fibre [:tuesday_rice_grams] = tuesday_rice_grams

# thursday_rice

thursday_rice_macros = calories_calculator(thursday_rice, calories_fat_protein_carbs_fibre)

thursday_rice_grams = thursday_rice_macros.map do |num|
	(num.to_f/thursday_rice_weight).round(3)
end

calories_fat_protein_carbs_fibre [:thursday_rice_grams] = thursday_rice_grams

# thursday_lentils

thursday_lentils_macros = calories_calculator(thursday_lentils, calories_fat_protein_carbs_fibre)

thursday_lentils_grams = thursday_lentils_macros.map do |num|
	(num.to_f/thursday_lentils_weight).round(3)
end

calories_fat_protein_carbs_fibre [:thursday_lentils_grams] = thursday_lentils_grams

# thursday_brocolli

thursday_brocolli_macros = calories_calculator(thursday_brocolli, calories_fat_protein_carbs_fibre)

thursday_brocolli_grams = thursday_brocolli_macros.map do |num|
	(num.to_f/thursday_brocolli_weight).round(3)
end

calories_fat_protein_carbs_fibre [:thursday_brocolli_grams] = thursday_brocolli_grams

puts "Each gram in thursday_brocolli's cook has #{thursday_brocolli_grams[0]} calories, #{thursday_brocolli_grams[1]} grams fat #{thursday_brocolli_grams[2]} grams protein, #{thursday_brocolli_grams[3]} grams carbs and  #{thursday_brocolli_grams[4]} grams fibre" 

 



today_input = {
	# 09:30
	# :tuesday_rice_grams => 834,
	# :carrots => 71,
	# :apple => 133,
	# :orange => 158
	# 13:00 
	# :vegan_gainz_protein => THREE_LEVEL_SCOOPS_VEGAN_GAINZ,
	# 14:30
	# :monday_porridge_grams => 671,
	# :tuesday_sweet_potato_grams => 170,
	# :apple => 147,
	# :dried_prunes => 65,
	# :vegan_yoghurt => 191,
	# 17:30
	# :thursday_lentils_grams => 522
	# 19:00
	:tropical_mango_kitten_sweets => 120,
	:red_wine => 200,
	:moser_roth_vegan_chocolate => 80
}

today_macros = calories_calculator(today_input, calories_fat_protein_carbs_fibre)

 # puts "today: (Thursday 10th) 
#{today_macros[0]}/3,207 calories, 
#{today_macros[1]}/91g fat, 
#{today_macros[2]}/120g protein, 
#{today_macros[3]}/428g carbs  
#{today_macros[4]}g fibre"