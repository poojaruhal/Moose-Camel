accessing
firstMatchedExampleOf: aQuestion
	
		| grammarFormOfQuestion |
		
		grammarFormOfQuestion := NlpGrammarForm fromAst: (self process: aQuestion).
		
		NlpTrainingData trainingQuestions lines do:
		[ :anExampleQuestion |
				|anExampleQuestionGrammarForm|
				
				anExampleQuestionGrammarForm := NlpGrammarForm fromAst: (self process: anExampleQuestion).
				
				(grammarFormOfQuestion  = anExampleQuestionGrammarForm)
						ifTrue: [ 
							^anExampleQuestion]
		]

	