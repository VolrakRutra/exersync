Red [
	description: {"Raindrops" exercise solution for exercism platform}
	author: "" ; you can write your name here, in quotes
]

convert: function [
	number
] [
	result: ""
	d3: number % 3 == 0
	d5: number % 5 == 0
	d7: number % 7 == 0

	if d3 [append result "Pling"]
	if d5 [append result "Plang"]
	if d7 [append result "Plong"]

	if result == "" [
		append result number
		]
	return result

]

