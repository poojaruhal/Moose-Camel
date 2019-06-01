*Moose-Camel
moCaModelPackagesDiffSince: aModel
	^ {(#addedPackages
		->
			(((self moCaModelPackagesAddedSince: aModel)
				groupedBy: [ :e | ('-' split: e name) first ]) associations
				sorted: [ :a :b | 
					(a value sum: [ :e | e classes size ])
						> (b value sum: [ :e | e classes size ]) ]) asOrderedDictionary).
	(#removedPackages
		->
			(((self moCaModelPackagesRemovedSince: aModel)
				groupedBy: [ :e | ('-' split: e name) first ]) associations
				sorted: [ :a :b | 
					(a value sum: [ :e | e classes size ])
						> (b value sum: [ :e | e classes size ]) ]) asOrderedDictionary).
	(#samePackages
		->
			(((self moCaModelPackagesSameSince: aModel)
				groupedBy: [ :e | ('-' split: e name) first ]) associations
				sorted: [ :a :b | 
					(a value sum: [ :e | e classes size ])
						> (b value sum: [ :e | e classes size ]) ]) asOrderedDictionary)}
		asDictionary