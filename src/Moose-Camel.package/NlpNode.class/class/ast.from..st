instance creation
ast: aTerminalCollection from: aParseString
	"get an ast from parse string"

	| parseTree aTerminalStack |
	aTerminalStack := aTerminalCollection as: Stack.
	parseTree := Compiler class evaluate: '#' , aParseString.
	parseTree notNil ifTrue: [ NlpNode buildTree:parseTree from:aTerminalStack ].
