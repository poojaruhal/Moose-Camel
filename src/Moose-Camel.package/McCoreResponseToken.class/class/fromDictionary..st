instance creation
fromDictionary: aDictionary
	| aToken |

	aToken := self new.
	aToken word: (aDictionary at: 'word').
	aToken index: (aDictionary at: 'index').
	aToken originalText: (aDictionary at: 'originalText').
	aToken after: (aDictionary at: 'after').
	aToken lemma: (aDictionary at: 'lemma').
	aToken pos: (aDictionary at: 'pos').
	aToken before: (aDictionary at: 'before').
	aToken characterOffsetBegin: (aDictionary at: 'characterOffsetBegin').
	aToken truecaseText: (aDictionary at: 'truecaseText').
	aToken characterOffsetEnd: (aDictionary at: 'characterOffsetEnd').
	aToken truecase: (aDictionary at: 'truecase').
	
	^ aToken