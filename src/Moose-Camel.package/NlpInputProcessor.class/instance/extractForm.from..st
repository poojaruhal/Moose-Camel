private
extractForm: aBlock from: theTokens
	"extract grammer form, only noun and verbs"
	| theWordTokens theNonStopwordTokens |

	theWordTokens := theTokens
		select: [ :aToken | self isVerbOrNoun: (aToken at: 'pos')  ].
	theNonStopwordTokens := theWordTokens
		reject: [ :aToken | self tokenWordBelongsToStopwordsList: aToken ].

	^ theNonStopwordTokens collect: aBlock as: LinkedList