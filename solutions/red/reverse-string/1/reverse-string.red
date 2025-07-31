Red [
	description: {"Reverse string" exercise solution for exercism platform}
	author: "" ; you can write your name here, in quotes
]

reverse: function [
	"Reverses a string"
	input [string!] "String to reverse"
	return: [string!]
] [
	l: length? input
	either l = 0 [return ""][
	arr:[]
	foreach c input [insert arr c]
	rejoin arr
	]
]