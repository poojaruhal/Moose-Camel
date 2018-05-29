smalltalkNLP
extractNounVerb
	"extract noun and verb from POS tagging using smalltalknlp library"

	| noun verb splitText temp taggedText|
	taggedText := self tagInputQuery.
	splitText := taggedText splitOn: Character space.
	
	splitText do: [ :each | 
		"split by /"
		 temp := each splitOn: '/'.
			temp do: [ :entityType | 
				(entityType = 'VBN') ifTrue: [ verb := (temp at:1) ].
				(entityType = 'NNS') ifTrue: [ noun := (temp at:1) ].
				].
			].
	self identifyFamixEntity: noun.
	self identifyTypeofClassProperty: verb.
	
	
	
	