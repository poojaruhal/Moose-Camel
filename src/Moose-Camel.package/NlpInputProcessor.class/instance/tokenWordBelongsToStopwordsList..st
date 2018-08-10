sentence - preprocessing
tokenWordBelongsToStopwordsList: aToken
	^ self wordBelongsToStopwordsList: (aToken at: 'word')