evaluating
from: questionOne to: questionTwo
	
	|aQuestionStream questions semanticDistance|
		
	aQuestionStream :=  '' writeStream.
	
	questions :=
		aQuestionStream 
			nextPutAll: questionOne;
			nextPutAll: Character cr asString;
			nextPutAll: questionTwo;
			contents.
		
	semanticDistance := Atlas getValue: questions.
	
	^ semanticDistance asNumber