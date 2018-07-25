instance creation
ast: aTerminalCollection from: aParseString
	"get an ast from parse string"
	<return: #NlpRoot>

	^ aParseString trim
		ifEmpty: [ NlpRoot new ]
		ifNotEmpty: [ :aTrimmedParseString |
			| parseTree aRoot  aTerminalStack |
			
			[ parseTree := NlpParseGrammar new parse: aTrimmedParseString ]
				on: Exception do: [ :e | parseTree := #() ].

			aRoot := NlpNonTerminal labelled: parseTree first.
			aTerminalStack := aTerminalCollection as: Stack.

			parseTree allButFirstDo: [ :aSubTree |
				self buildTreeOf: aRoot and: aTerminalStack from: aSubTree ].

			aRoot ]