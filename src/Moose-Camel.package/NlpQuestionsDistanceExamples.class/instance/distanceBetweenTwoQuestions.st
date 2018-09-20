comparing
distanceBetweenTwoQuestions
	<gtExample>
	<description: 'This calculates the distance between two questions'>
	
	|question1 question2 nlpQuestions nlpQuestionsDistance|
	question1 := 'The hunter killed the lion'.
	question2 := 'The lion was killed by the hunter'.
	
	nlpQuestions := NlpQuestionsDistance new questionOne: question1; questionTwo:question2.
	
	nlpQuestionsDistance := nlpQuestions calculateDistance.

	self
	assert: [ nlpQuestionsDistance isNumber ]
	description: [ 'Distance must only contain digits' ].
	
	^ nlpQuestionsDistance