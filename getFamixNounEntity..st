Nlp
getFamixNounEntity: aNoun
	"check whether the word is famix entity or not"

	self getFamixDictionary
		at: aNoun
		ifPresent: [ self setQueryContext: ((self getFamixDictionary at: aNoun) at: 1) ]