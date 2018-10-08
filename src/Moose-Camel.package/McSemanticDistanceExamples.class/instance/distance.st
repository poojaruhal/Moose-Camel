accessing
distance
	<gtExample>
	<description:'calculate semantic distance between two examples'>
	|questionOne questionTwo|
	
	questionOne := McCoreResponseExamples new developerQuestion.
	questionTwo := McCoreResponseExamples new otherDeveloperQuestion.
	
	^ McSemanticDistance new from:questionOne to:questionTwo.
	