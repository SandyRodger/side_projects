=begin

P: Take Arvo Part's  1978 masterpiece and write a method which takes no argument, but outputs the ns as strings, in time with the music. 

E:

D:
A hash of the ns on my harp where the keys are numbers and the values strings of n and octave ie. 14 => [Bb, 2], where the 15th strings from the lowest string is Bb, and the 2nd Bb since the lowest string.

The sleep method
92 BPM 

A:

1. Establish harp hash
2. break piece down into left_hand, right_hand	+ left_hand_high
3. Figure out right hand
	- starts with standard chord for 3 bars, and plays this between each abberation
	- variants alternate between going up and down
	- variants alternate from coming low to middle and high to middle
4. Figure out Left hand.


RIGHT HAND ALGORITHM:

 	- starts with standard chord for 3 bars, and plays this between each variant
	- variants alternate between going up and down
	- variants alternate from coming low to middle and high to middle

	Mental model:

	standard * 3 bars
	variant(below, depth 1, direction out)
	standard * 3 bars
	variant(above, depth 1, direction in)
	standard * 3 bars
	variant(depth 2, direction in)
	standard * 3 bars
	variant(depth 2, direction in)


C:

Right hand patterns: where array nums are hash indexes. ie [22, 25, 27] = [harp[22], harp[25], harp[27]]

1 = [22, 25, 27]     (first occurance: bar 1)
2 = [21, 25, 26]     (first occurance: bar 4)
3 = [23, 27, 28]	   (first occurance: bar 8)
4 = [20, 22, 25]     (first occurance: bar 12
5 = [24, 27, 29]     (first occurance: bar 18)
6 = [19, 22, 24]     (first occurance: bar 24)
7 = [23, 27, 28]     (first occurance: bar 30)

Mental model:

output:
bar 1 - 3:

"             C(4)"
"             F(4)"
"             A(4)"
"             C(4)"
"             F(4)"
"             A(4)"
"F(2),F(3)    C(4)"
"             F(4)"
"             A(4)"
"             C(4)"
"             F(4)"
"             A(4)"

Bar 14 - 16:

"A(3)         C(4)"
"             F(4)"
"             A(4)"
"             C(4)"
"             F(4)"
"             A(4)"
"             C(4)        C(5)"
"             F(4)"
"             A(4)"
"             C(4)"
"             F(4)"
"             A(4)"

=end

# HARP = harp_generator
# SPACE = ['below', 'above']
F_MAJ = ['C', 'D', 'E', 'F', 'G', 'A', 'Bb']
# CHORDS = {
# 	1 => [F_MAJ[0], F_MAJ[3], F_MAJ[6]],
# 	2 => [F_MAJ[], F_MAJ[3], F_MAJ[6]],
# }

def harp_generator
	strings_total = 34
	idx2 = 0
	octave = 1
	(1..strings_total).each_with_object({}) do |idx, hsh|
		hsh [idx] = "#{F_MAJ[idx2]}(#{octave})"
		idx2 += 1
		if idx2 >= f_maj.size
			idx2 = 0
			octave += 1
		end
	end
end

p harp = harp_generator

# def play_note(space_idx, name)
# 	p HARP[bar]
# 	sleep 0.65
# 	p HARP[bar]
# 	sleep 0.65
# 	p HARP[bar]
# 	sleep 0.65
# end

# def play_bar(bar, space_idx, name)
# 	if name == 'middle_chord'
# 		p "bar: #{bar}: #{name}"
# 	else
# 		p "bar: #{bar}: #{SPACE[space_idx]}, #{name}"
# 	end
# 	bar += 1
# end

# def right_hand
# 	bar = 1
# 	space_idx = 1
# 	going_outwards = false
# 	depth_start = 0
#  loop do
# 	3.times { bar = play_bar(bar, space_idx, 'middle_chord') }
# 	if space_idx == 1
# 		space_idx = 0 
# 		depth_start += 1
# 		going_outwards ? going_outwards = false : going_outwards = true
# 	else
# 		space_idx = 1
# 	end
# 	depth_idx = depth_start
# 	anti_depth_idx = 1
# 	return 'END' if depth_start > 8
# 	loop do
# 		if going_outwards 
# 			bar = play_bar(bar, space_idx, anti_depth_idx)
# 			break if depth_idx == anti_depth_idx
# 			anti_depth_idx += 1
# 		else
# 			bar = play_bar(bar, space_idx, depth_idx)
# 			depth_idx -= 1
# 			break if depth_idx == 0
# 		end
# 	end
#  end
# end

#p right_hand


# HARP HASH = 

 {1=>"C(1)", 2=>"D(1)", 3=>"E(1)", 4=>"F(1)", 5=>"G(1)", 6=>"A(1)", 7=>"Bb(1)", 8=>"C(2)", 9=>"D(2)", 10=>"E(2)", 11=>"F(2)", 12=>"G(2)", 13=>"A(2)", 14=>"Bb(2)", 15=>"C(3)", 16=>"D(3)", 17=>"E(3)", 18=>"F(3)", 19=>"G(3)", 20=>"A(3)", 21=>"Bb(3)", 22=>"C(4)", 23=>"D(4)", 24=>"E(4)", 25=>"F(4)", 26=>"G(4)", 27=>"A(4)", 28=>"Bb(4)", 29=>"C(5)", 30=>"D(5)", 31=>"E(5)", 32=>"F(5)", 33=>"G(5)", 34=>"A(5)"}



