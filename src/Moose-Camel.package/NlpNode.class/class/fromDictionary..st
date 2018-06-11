instance creation
fromDictionary: aDictionary
	<return: #NlpNode>
	| aNode |

	aNode := self labelled: (aDictionary at: 'pos').
	aNode start: (aDictionary at: 'characterOffsetBegin') asInteger + 1.
	aNode end: (aDictionary at: 'characterOffsetEnd') asInteger.
	aNode word: (aDictionary at: 'word').

	^ aNode