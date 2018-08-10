sentence - preprocessing
wordBelongsToStopwordsList: aWord
	"check word belongs to predefined wordlist"
	^ (self stopwordsList includes:  aWord).