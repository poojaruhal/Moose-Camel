comparing
distanceBetweenTwoQuestions
	<gtExample>
	
	|question1 question2 distance|
	question1 := 'The hunter killed the lion'.
	question2 := 'The lion was killed by the hunter'.
	
	distance:=  self distanceOf: question1 from: question2 .
	
	self
	assert: [ distance allSatisfy: [ :each | each isDigit or: [ each = $. ] ] ]
	description: [ 'Distance must only contain digits' ].
	
	^ distance