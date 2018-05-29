matching
performOn: anObject
	^ self steps
		inject: anObject
		into: [ :aPreviousStepResult : aStep | aStep performOn: aPreviousStepResult ]