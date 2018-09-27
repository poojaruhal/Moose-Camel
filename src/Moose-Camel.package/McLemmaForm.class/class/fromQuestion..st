instance creation
fromQuestion: aQuestion

	^ (NlpNodeLemmaFormVisitor new) lemmaFormOf: aQuestion.
	