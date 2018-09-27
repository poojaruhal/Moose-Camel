accessing
distance
	<gtExample>
	<description:'calculate semantic distance between two examples'>
	|questionOne questionTwo|
	
	questionOne := NlpCoreResponseExamples new developerQuestion.
	questionTwo := NlpCoreResponseExamples new otherDeveloperQuestion.
	
	^ NlpSemanticDistance new from:questionOne to:questionTwo.
	