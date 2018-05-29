smalltalkNLP
identifyFamixEntity: aNoun
	"check whether the word is famix entity or not"
	| isFamixNoun  queryContext |
	NLPentities initializeEntities.
	isFamixNoun := NLPentities entities: aNoun.
	isFamixNoun ifNotNil: [ queryContext:= famixNlpDictionary at: aNoun  ] 
	
	