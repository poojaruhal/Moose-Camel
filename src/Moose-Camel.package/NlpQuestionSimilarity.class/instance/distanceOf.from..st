comparing
distanceOf: aQuestion from: anotherQuestion
	
	|aQuestionStream questions distance|
	aQuestionStream :=  '' writeStream.
	
	questions :=
		aQuestionStream 
			nextPutAll: aQuestion;
			nextPutAll: Character cr asString;
			nextPutAll: anotherQuestion;
			contents.
		
	distance := Atlas getValue: questions.
	
	^ distance	