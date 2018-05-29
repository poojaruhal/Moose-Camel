smalltalkNLP
extractNounVerb: taggedText
	"extract noun and verb from POS tagging"

	| noun verb splitText temp|
	splitText := taggedText splitOn: Character space.
	splitText do: [ :each | 
		
		"split by /"
		 temp := each splitOn: '/'.
			temp do: [ :entityType | 
				(entityType = 'VBN') ifTrue: [ verb := (temp at:1) ].
				(entityType = 'NNS') ifTrue: [ noun := (temp at:1) ].
				 ].
				Transcript show: (verb); cr.
				Transcript show: (noun); cr.
			]
	
	
	
	