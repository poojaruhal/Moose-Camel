comparing
distanceBetweenTwoQuestions
	<gtExample>
	
	|question1 question2 distance nlpQuestionsDistance|
	question1 := 'The hunter killed the lion'.
	question2 := 'The lion was killed by the hunter'.
	
	nlpQuestionsDistance := NlpQuestionsDistance new between: question1  and: question2.
	
	distance:=  nlpQuestionsDistance calculateDistance.
	
	self
	assert: [ distance allSatisfy: [ :each | each isDigit or: [ each = $. ] ] ]
	description: [ 'Distance must only contain digits' ].
	
	^ distance