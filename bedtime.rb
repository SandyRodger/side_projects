require 'time'
require 'date'

# METHODS

def time_formatter(time)
	Time.at(time).utc.strftime("%M:%S")
end

def minutes_extractor(time)
	time[3..4].to_i
end

def hours_extractor(time)
	time[0..1].to_i
end

def hours_to_min(hours)
	hours.to_i * 60
end

def sports_parser(sport)
	duration_name_time_place = []

	case 
		when sport == 1
			duration_name_time_place << 100
			duration_name_time_place << "squats"
			duration_name_time_place << 530
			duration_name_time_place << "the Gym"
		when sport == 2
			duration_name_time_place << 100
			duration_name_time_place << "bench"
			duration_name_time_place << 530
			duration_name_time_place << "the Gym"
		when sport == 3
			puts "Is your route 1) 3H  2) Devil's Dyke"
			answer = gets.chomp.to_i
			if answer == 1
				duration_name_time_place << 50
				duration_name_time_place << "run"
				duration_name_time_place << 570
				duration_name_time_place << "3H route"
			elsif answer == 2 
				duration_name_time_place << 180
				duration_name_time_place << "run"
				duration_name_time_place << 570
				duration_name_time_place << "Devil's Dyke"
			end
		when sport == 4
			duration_name_time_place << 100
			duration_name_time_place << "deadlift"
			duration_name_time_place << 530
			duration_name_time_place << "the Gym"
		when sport == 5
			puts "are you doing it 1) in Preston Park or  2) in your room?"
			answer = gets.chomp
				if answer == 1
					duration_name_time_place << 100
					duration_name_time_place << "yoga X" 
					duration_name_time_place << 530
					duration_name_time_place << "Preston Park"
				else
					duration_name_time_place << 90
					duration_name_time_place << "yoga X" 
					duration_name_time_place << 520
					duration_name_time_place << "my room"
				end
		when sport == 6
			duration_name_time_place << 100
			duration_name_time_place << "strict press"
			duration_name_time_place << 530
			duration_name_time_place << "the Gym"
		else
			duration_name_time_place << 0
			duration_name_time_place << "none"
			duration_name_time_place << 520
			duration_name_time_place << "nowhere"
		end
	duration_name_time_place
end


def bed_time_calculator(sleep_length_h, sport, cook, food)
# SPORTS VARIABLES
	sport_duration = sport[0] 
	sport_name = sport[1] 
	sport_start_time = sport[2] 
	sport_place = sport[3] 
# TIME VARIABLES
	alarm_at_7 = 420
	midnight = 1440
	time_now = Time.now.strftime("%k:%M")	 
	minutes_now = minutes_extractor(time_now)
	hours_now = hours_extractor(time_now)
# SCHEDULE VARIABLES
	sleep_length_mins = hours_to_min(sleep_length_h)
	mins_bef_mid = sleep_length_mins - alarm_at_7
	asleep_at = midnight - mins_bef_mid
	no_coffee = asleep_at - 600
	no_water = asleep_at - 80
	dinner = no_water - 75
	in_bed = asleep_at - 20
	time_left_awake = midnight - (hours_to_min(hours_now) + minutes_now.to_i + mins_bef_mid)
	hours_awake = time_left_awake / 60
	minutes_awake = time_left_awake % 60
	sport_end = sport_start_time + sport_duration
		if food == "y"
			cycle_home_plus_aldi = 25
		else
			cycle_home_plus_aldi = 10
		end
	shower_and_breakfast = 25
	# OUTPUT
	puts "     [STATUS]"
	puts "#{time_now}: time now."
	puts "#{hours_awake} hours and #{minutes_awake} minutes left until bed"
	puts "   [SCHEDULE]"
	puts "     [WAKE]"
	puts "07:00 - 07:30: wake, hoist bed, shave, make coffee, set alarms, Flipd 1 hour. " 
		if sport_name == "squats" || sport_name == "bench" || sport_name == "deadlift" ||sport_name == "strict press"
			puts "07:30 - 8:30: Code or harp. (1 hour)"
			puts "     [SPORT]"
			puts "8:40: Leave the house, cycle to the gym"
			puts "8:50 do #{sport_name} training (#{sport_duration} minutes)"
			puts "#{time_formatter(sport_end)} go to Aldi, cycle home."
				get_home = sport_end + cycle_home_plus_aldi
			puts "#{time_formatter(get_home)}: shower + breakfast (25 mins)"
				start_work = get_home + shower_and_breakfast
			puts "#{time_formatter(start_work)}: Start work"
		elsif sport_name == "run"
			puts "7:30 - 9:30: code or harp"
			puts "     [SPORT]"
			puts "#{time_formatter(sport_start_time)}: Leave the house for #{sport_place} run."
			puts "#{time_formatter(sport_end)}: Shower and breakfast (25 mins)."
			start_work = sport_end + shower_and_breakfast
			puts "#{time_formatter(start_work)}: Start work"
		elsif sport_name == "yoga X"
			puts "7:30 - 8:30: Code or harp."
			puts "     [SPORT]"
			puts "#{time_formatter(sport_start_time)}: Yoga @ #{sport_place}. #{sport_duration} mins"
			puts "#{time_formatter(sport_end)}: shower and breakfast (25 mins)"
			start_work = sport_end + shower_and_breakfast
			puts "#{time_formatter(start_work)}: Start work"
		else 
			puts "7:30 - 9:30: Code or harp."
			puts "9:30: Shower and breakfast (25 mins)"
			start_work = 595
			puts "#{time_formatter(start_work)}: Start work"
		end
	lunch_time = start_work + 150
	puts "      [WORK 5 HOURS]"
	puts "#{time_formatter(lunch_time)}: Lunch time"
	puts "#{time_formatter(no_coffee)}: No more coffee"
	finish_work =	start_work + 300
	puts "#{time_formatter(finish_work)}: Finish coding"
	free_time = in_bed - finish_work
		if cook == 'y'
			puts "#{time_formatter(finish_work)}: Cook for tomorrow and eat 3rd meal(50 minutes)"
			free_time -= 50
			after_dinner = finish_work + 50
			puts "#{time_formatter(finish_work + 50)}: Prep for tomorrow (15 mins)"
			after_prep = after_dinner + 15
		else puts "#{time_formatter(finish_work)}: Eat 3rd meal(20 minutes)"
			free_time -= 20
			after_dinner = finish_work + 20
			after_prep = after_dinner + 15
			puts "#{time_formatter(finish_work + 20)}: Prep for tomorrow (15 mins)"
		end
	free_time -= 15
	puts "#{time_formatter(after_prep)}:[FREE TIME] = #{hours_extractor(time_formatter(free_time))} hours and #{minutes_extractor(time_formatter(free_time))} minutes. (soft lock?)"			
	puts "#{time_formatter(dinner)}: 4th and last meal + Big lock."  
	puts "#{time_formatter(no_water)}: stop drinking water. Bed-time prep"
	puts "#{time_formatter(in_bed)}: Get in bed."
	puts "#{time_formatter(asleep_at)}: Fall asleep"
end

# INPUT:

puts "How many hours of sleep do you want tonight?"
answer = gets.chomp
target_hours = answer.to_i

puts "what sport are you doing today?"
puts "Options: "
puts "1 = squats"
puts "2 = bench"
puts "3 = run"
puts "4 = deadlift"
puts "5 = yoga X"
puts "6 = strict press"
puts "7 = rest"
answer = gets.chomp
sport = sports_parser(answer.to_i)

puts "Do you need to cook? (y/n)"
answer = gets.chomp
cook = answer

puts "Do you need to buy food? (y/n)"
answer = gets.chomp
food = answer

bed_time_calculator(target_hours, sport, cook, food)

# SCHEDULE:

# wake: 07:00
# hoist bed/shave/make coffee/ set alarms / Flipd 1 hour
# code or harp
# sport
# Cycle home
# shower / dress/ eat
# study coding (Flipd n hours)
# lunch
# coding
# stop coding
# free time (Flipd 2 till dinner)
# tea
# dinner
# tech-lock-up (Flipd + laptop lock)
# Tomorrow prep *
# bed prep *
# Bed time.

# TOMORROW PREP:

# Plan sport/ work in detail
# Lay out clothes + pack bags
# Write a sentence in your journal.
# 3 gratitude items
# Cook if necessary
# Choose reading. 
# tidy room

# BED PREP:

# Lower desk
# Put on Pyjamas.
# Tech lock iof not already done. 
# Hibiscus tea
# Daily drawing if not done already
# read a novel