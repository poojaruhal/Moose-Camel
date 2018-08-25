comparing
distanceBetweenTwoQuestions
	<gtExample>
	
	|question1 question2 distance nlpQuestionSimilarity|
	question1 := 'The hunter killed the lion'.
	question2 := 'The lion was killed by the hunter'.
	
	nlpQuestionSimilarity := NlpQuestionSimilarity new between: question1  and: question2.
	
	distance:=  nlpQuestionSimilarity semanticDistance.
	
	self
	assert: [ distance allSatisfy: [ :each | each isDigit or: [ each = $. ] ] ]
	description: [ 'Distance must only contain digits' ].
	
	^ distance