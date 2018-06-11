instance creation
ast: aTerminalCollection from: aParseString
	"get an ast from parse string"

	| parseTree aTerminalStack ast |
	aTerminalStack := aTerminalCollection as: Stack.
	parseTree := Compiler class evaluate: '#' , aParseString.
	self halt.
	parseTree notNil ifTrue: [ NlpNode BuildTree:parseTree from:aTerminalStack ].
