visiting
lemmaFormOf: aQuestion
	
	|aLemmaForm |
	aLemmaForm := lemmaForm displayLemmaForm: aQuestion.
	aLemmaForm do: [ :eachWord | self addNode: eachWord  ].
	
	^ self lemmaForm.
	
	