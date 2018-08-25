accessing
distance
	<gtExample>
	<description:'calculate structural distance between two examples'>
	|questionOne questionTwo|
	
	questionOne := NlpCoreResponseExamples new developerQuestion.
	questionTwo := NlpCoreResponseExamples new otherDeveloperQuestion.
	
 	^ NlpStrcutureDistance new from: questionOne  to: questionTwo.
	

	
	