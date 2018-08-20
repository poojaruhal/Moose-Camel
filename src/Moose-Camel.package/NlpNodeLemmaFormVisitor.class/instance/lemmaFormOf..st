visiting
lemmaFormOf: aQuestion
	
	|aLemmaForm |
	aLemmaForm := lemmaForm lemmaForm: aQuestion.
	aLemmaForm do: [ :eachWord | self addNode: eachWord  ].
	
	^ self lemmaForm.
	
	