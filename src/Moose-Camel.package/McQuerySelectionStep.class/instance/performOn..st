matching
performOn: anObject
	^ anObject select: [ :each | self entityContext executeOn: each ]