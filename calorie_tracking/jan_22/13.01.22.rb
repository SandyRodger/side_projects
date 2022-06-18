BIG_GLASS_POT = 1597
SMALL_GLASS_POT = 933
THREE_LEVEL_SCOOPS_VEGAN_GAINZ = 96
ONE_LEVEL_SCOOP_VEGAN_GAINZ = 32
# all measurements are 1 gram/millilitre.

wednesday_cook = {
	:raw_brown_rice => 280,
	:olive_oil => 15,
	:garlic => 30,
	:veggie_stock_cubes => 20,
	:carrots => 498,
	:spring_onions => 110,
	:vegan_beef_burgers => 114,
	:string_beans =>  220,
	:beetroot => 599,
	:mushrooms => 197,
	:cherry_tom => 189,
	:cucumber => 104,
	:courgettes => 605,
	:nutritional_yeast => 24,
	:chia_seeds => 30,
}

thursday_cook = {
	:oats => 284,
	:olive_oil => 12,
	:red_onion => 166,
	:garlic => 29,
	:veggie_stock_cubes => 20,
	:aldi_kidney_beans_with_ring => 481,
	:carrots => 405,
	:brocolli => 282,
	:courgettes => 607,
	:cucumber => 137,
	:kale => 200,
	:dark_soy_sauce => 53
}

wednesday_weight = 2211 + 762 + 521
thursday_weight = 963 + 2678

calories_fat_protein_carbs_fibre ={
	:aldi_italian_salad => [0.17, 0.004, 0.024, 0.005, 0.02],
	:aldi_oat_drink => [0.48, 0.76, 0.4, 0.077, 0.007],
	:aldi_sunflower_spread => [6.3, 0.69, 0, 0, 0.002],
	:aldi_kidney_beans => [0.98, 0.006, 0.077, 0.13, 0.057],
	:aldi_kidney_beans_with_ring => [0.93, 0.004, 0.068, 0.12, 0.097],
	:aldi_plant_menu_chicken => [2.02 , 0.047, 0.18, 0.19, 0.059],
	:almond => [5.85, 0.52, 0.205, 0.205, 0.118],
	:apple => [0.52, 0.0017, 0.0026, 0.1381, 0.024],
	:avocado => [1.67, 0.15, 0.0206, 0.0882, 0.0625],
	:babycorn => [0.269, 0, 0.015, 0.046, 0.02],
	:baby_plum_tomatoes => [0.18, 0.003, 0.007, 0.031, 0.012],
	:banana => [1, 0, 0.01, 0.25, 0.026],
	:bbq_sauce => [1, 0.003, 0, 0.363, 0.012],
	:beetroot => [0.53, 0.004, 0.013, 0.11, 0.011],
	:blueberries => [0.5, 0.007, 0, 0.121, 0.024],
	:chia_seeds => [4.42, 0.31, 0.17, 0.077, 0.34],
	:chickpeas => [1.09, 0.02, 0.062, 0.14, 0.08],
	:raw_brown_rice => [3.49, 0.009, 0.026, 0.23, 0.015],
	:brocolli => [0.32, 0.004, 0.028, 0.066, 0.026],
	:brown_spag => [3.35, 0.0375, 0.00175, 0.63, 0.084],
	:carrots => [0.41, 0.002, 0.009, 0.096, 0.028],
	:courgettes => [0.17, 0.003, 0.012, 0.031, 0.011],
	:chestnut_mushroom => [0.08, 0.005, 0.01, 0.005, 0.01],
	:crunchy_PB => [6.34, 0.5, 0.26, 0.14, 0.063],
	:cashew_nuts => [0.5, 0.5, 0.17, 0.16, 0.032],	
	:cherry_tom => [0.186, 0.002, 0.009, 0.04, 0.012],
	:cucumber => [0.15, 0.001, 0.01, 0.036, 0.005],
	:dark_soy_sauce => [0.83, 0.004, 0.015, 0, 0.002],
	:dried_prunes => [1.68, 0.004, 0.023, 0.37, 0.057],
	:falafel => [2.38, 0.12, 0.064, 0.28, 0.064],
	:garlic => [1.49, 0.005, 0.0636, 0.33, 0.021],
	:grapefruit => [0.42, 0.0014, 0.0077, 0.1066, 0.011],
	:grapes => [0.68, 0.002, 0.007, 0.178, 0.009],
	:green_beans => [0.35, 0.003, 0.019, 0.079, 0.085],
	:honeydew_melon => [0.36, 0.0014, 0.0054, 0.0909, 0.008],
	:houmous => [3.02, 0.24, 0.07, 0.12, 0.033],
	:huel_protein => [3.62, 0.034, 0.69, 0.103, 0.054],
	:kale => [0.45, 0.005, 0.032, 0.096, 0.02],
	:kiwi => [0.61, 0.0052, 0.0114, 0.1466, 0.03],
	:dried_figs => [2.74, 0.022, 0.029, 0.57, 0.078],
	:dried_kidney_beans => [3.31, 0.01, 0.24, 0.61, 0.07],  # => not sure about this fibre
	:margarine => [7.2, 0, 0, 0, 0.001],
	:mushrooms => [0.28, 0, 0.02, 0.05, 0.005],
	:nectarine => [0.44, 0.003, 0.036, 0.106, 0.017],
	:nutritional_yeast => [0.344, 0.04, 0.51, 0.37, 0.2],
	:oatcakes=> [4.47, 0.174, 0.103, 0.58, 0.076],
	:oats => [4.14, 0.081, 0.11, 0.71, 0.106],
	:olive_oil => [8.33, 1, 0, 0, 0],
	:orange => [0.47, 0.0012, 0.0094, 0.1175, 0.024],
	:ale => [0.32, 0, 0, 0.023, 0],
	:passata => [0.25, 0.004, 0.012, 0.043, 0.018],
	:pear => [0.58, 0.0012, 0.0038, 0.1546, 0.031],
	:peppers => [0.26, 0.003, 0.0099, 0.0603, 0.02],
	:pickled_gherkins => [0.12, 0.003, 0.0048, 0.0238, 0.008],
	:pomegranite_seeds => [0.61, 0.005, 0.013, 0.094, 0.04],
	:rocket => [0.257, 0.003, 0.029, 0.019, 0.016],
	:rye_bread => [2.29, 0.009, 0.049, 0.446, 0.106],
	:rye_crispbread_with_sesame_seeds => [3.85, 0.078, 0.13, 0.58, 0.15],
	:seed_mix => [5.76, 0.46, 0.23, 0.13, 0.087],
	:spring_onions => [0.28, 0.005, 0.02, 0.03, 0.014],
	:stella_beer => [0.39, 0, 0.004, 0.032, 0],
	:swede => [0.36, 0.002, 0.012, 0.0813, 0.025],
	:sweet_potato => [0.9, 0.0003, 0.02, 0.206, 0.03],
	:potato => [0.58, 0.0012, 0.0243, 0.124, 0.017],
	:red_grapes => [0.69, 0.002, 0.007, 0.18, 0.009],
	:red_onion => [0.42, 0.0008, 0.0092, 0.1011, 0.014],
	:satsuma => [0.5, 0, 0, 0.05, 0.015],
	:string_beans => [0.23, 0.004, 0.016, 0.032, 0.034],
	:spinach => [0.23, 0.003, 0.03, 0.038, 0.022],
	:sundried_tomatoes => [2.112, 0.139, 0.05, 0.231, 0.027],
	:vegan_beef_burgers => [2.28, 0.15, 0.15, 0.062, 0.027],
	:vegan_coleslaw => [1.99, 0.18, 0.009, 0.072, 0.012],
	:vegan_gainz_protein => [3.8313, 0.0416, 0.2431, 0.621, 0.0367],
	:veggie_stock_cubes => [3.1, 0.18, 0, 0.09, 0.002],
	:white_onion => [0.38, 0.0005, 0.0083, 0.0861, 0.014],
	:cake => [1.449, 0.064, 0.023, 0.241, 0.013]
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

wednesday_cook_macros = calories_calculator( wednesday_cook, calories_fat_protein_carbs_fibre)
thursday_cook_macros = calories_calculator( thursday_cook, calories_fat_protein_carbs_fibre)

wednesday_cook_grams = wednesday_cook_macros.map do |num|
	(num.to_f/wednesday_weight).round(3)
end

thursday_cook_grams = thursday_cook_macros.map do |num|
	(num.to_f/thursday_weight).round(3)
end

calories_fat_protein_carbs_fibre [:wednesday_cook_grams] = wednesday_cook_grams
calories_fat_protein_carbs_fibre [:thursday_cook_grams] = thursday_cook_grams
 # puts "Each gram in thursday's cook has #{thursday_cook_grams[0]} calories, #{thursday_cook_grams[1]}g fat #{thursday_cook_grams[2]}g protein, #{thursday_cook_grams[3]}g carbs and  #{thursday_cook_grams[4]}g fibre" 

thursday_input = {
	:kiwi => 52 + 103,
	:apple => 101,
	:vegan_gainz_protein => THREE_LEVEL_SCOOPS_VEGAN_GAINZ,
	:orange => 155,
	:wednesday_cook_grams => 913 + 771,
	:grapes => 86,
	:thursday_cook_grams => 963 + 755,
	:blueberries => 154,
	:houmous => 100,
	:nectarine => 77
}


thursday_macros = calories_calculator(thursday_input, calories_fat_protein_carbs_fibre)

puts "today: (Thursday 13th) 
#{thursday_macros[0]}/3,207 calories, 
#{thursday_macros[1]}/91g fat, 
#{thursday_macros[2]}/120g protein, 
#{thursday_macros[3]}/428g carbs  
#{thursday_macros[4]}g fibre"
