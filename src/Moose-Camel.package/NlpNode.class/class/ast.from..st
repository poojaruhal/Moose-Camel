instance creation
ast: aTerminalCollection from: aParseString
	"get an ast from parse string"
	| parseTree aTerminalStack root|
	
	aTerminalStack := aTerminalCollection as: Stack.

	parseTree := Compiler class evaluate: '#' , aParseString.
	parseTree ifNotNil: [
		root := NlpNode labelled: parseTree first.
		parseTree allButFirstDo: [ :aSubTree |
			self buildTreeOf: root and: aTerminalStack from: aSubTree ] ].

	^ root