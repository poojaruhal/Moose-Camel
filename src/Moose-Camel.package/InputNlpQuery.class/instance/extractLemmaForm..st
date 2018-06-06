Nlp
extractLemmaForm: theTokens
	"extract lemma form, only noun and verbs"
	^ self
		extractForm: [ :aToken | self findLemmaFormOfaword: aToken ]
		from: theTokens