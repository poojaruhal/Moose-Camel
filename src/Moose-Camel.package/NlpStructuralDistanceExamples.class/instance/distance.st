accessing
distance
	<gtExample>
	<description:'deprecated classes'>
	|questionOne questionTwo|
	
	questionOne := NlpCoreResponseExamples new developerQuestion.
	questionTwo := NlpCoreResponseExamples new otherDeveloperQuestion.
	
 	^ NlpStrcutureDistance new from: questionOne  to: questionTwo.
	

	
	