comparing
distanceBetweenTwoQuestions
	<gtExample>
	
	|question1 question2 distance|
	question1 := 'What are the deprecated classes'.
	question2 := 'Which classes are the deprecated'.
	
	distance:=  self distanceOf: question1 from: question2 .
	
	self
	assert: [ distance allSatisfy: [ :each | each isDigit or: [ each = $. ] ] ]
	description: [ 'Distance must only contain digits' ].
	
	^ distance