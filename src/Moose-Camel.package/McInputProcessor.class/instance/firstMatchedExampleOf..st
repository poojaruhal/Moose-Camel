accessing
firstMatchedExampleOf: aQuestion
	
		| grammarFormOfQuestion |
		
		grammarFormOfQuestion := McGrammarForm fromAst: (self process: aQuestion).
		
		McTrainingData trainingQuestions lines do:
		[ :anExampleQuestion |
				|anExampleQuestionGrammarForm|
				
				anExampleQuestionGrammarForm := McGrammarForm fromAst: (self process: anExampleQuestion).
				
				(grammarFormOfQuestion  = anExampleQuestionGrammarForm)
						ifTrue: [ 
							^anExampleQuestion]
		]

	