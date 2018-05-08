Nlp
collectNouns: tokens
	" collect nouns from all tokens"

	| postag |
	tokens
		do: [ :each | 
			each
				keysDo: [ :key | 
					(key = 'pos')
						ifTrue: [ postag := each at: key. 
							(postag = 'NNS')
								ifTrue: [ noun := (each at: 'word'). 
									self getFamixNounEntity:noun.
									]
								ifFalse: [ (postag = 'VBN')
										ifTrue: [ verb := (each at: 'word'). 
											 self getFamixVerbEntity: verb.
											] ] ] ] ]