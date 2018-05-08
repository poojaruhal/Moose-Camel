smalltalkNLP
identifyFamixEntity: aNoun
	"check whether the word is famix entity or not"
	| isFamixNoun |
	NLPentities initializeEntities.
	isFamixNoun := NLPentities entities: aNoun.
	isFamixNoun ifNotNil: [ queryContext:= famixDictionary at: aNoun  ] 
	
	