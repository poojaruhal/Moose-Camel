accessing
distance
	<gtExample>
	<description:'deprecated classes'>
	|questionOne questionTwo|
	
	questionOne := McCoreResponseExamples new developerQuestion.
	questionTwo := McCoreResponseExamples new otherDeveloperQuestion.
	
 	^ McStrcutureDistance new from: questionOne  to: questionTwo.
	

	
	