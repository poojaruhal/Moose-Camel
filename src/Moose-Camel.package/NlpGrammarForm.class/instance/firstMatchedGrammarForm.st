accessing
firstMatchedGrammarForm
	
	NlpTrainingData trainingQuestions lines detect:[ :aQuestion |
		|aQuestionGrammarForm|
		aQuestionGrammarForm := self grammarFormOf: aQuestion.
		((self pairsSimilarityWith: aQuestionGrammarForm)= 1)
		ifTrue: [ ^aQuestion ]
		]
	