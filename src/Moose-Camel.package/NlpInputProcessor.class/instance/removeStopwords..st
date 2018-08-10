sentence - preprocessing
removeStopwords: theTokens
	<return: #Collection of: #tokensDictionary>

	^ theTokens 
		reject: [:aTokenDictionary | self stopwordsList includes: (aTokenDictionary at: 'word')]