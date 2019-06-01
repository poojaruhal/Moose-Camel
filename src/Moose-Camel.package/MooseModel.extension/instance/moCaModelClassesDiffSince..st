*Moose-Camel
moCaModelClassesDiffSince: aModel
	^ {(#addedClasses
		->
			(((self moCaModelClassesAddedSince: aModel)
				groupedBy: [ :e | ('-' split: e parentPackage name) first ])
				associations sorted: [ :a :b | a value size > b value size ])
				asOrderedDictionary).
	(#removedClasses
		->
			(((self moCaModelClassesRemovedSince: aModel)
				groupedBy: [ :e | ('-' split: e parentPackage name) first ])
				associations sorted: [ :a :b | a value size > b value size ])
				asOrderedDictionary).
	(#sameClasses
		->
			(((self moCaModelClassesSameSince: aModel)
				groupedBy: [ :e | ('-' split: e parentPackage name) first ])
				associations sorted: [ :a :b | a value size > b value size ])
				asOrderedDictionary)} asDictionary