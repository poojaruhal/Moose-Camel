*Moose-Camel
moCaModelComponentsDiffSince: aModel
	^ {(#added
		->
			((self moCaModelComponentsAddedSince: aModel)
				sorted: [ :a :b | 
					(a value sum: [ :e | e classes size ])
						> (b value sum: [ :e | e classes size ]) ]) asOrderedDictionary).
	(#removed
		->
			((self moCaModelComponentsRemovedSince: aModel)
				sorted: [ :a :b | 
					(a value sum: [ :e | e classes size ])
						> (b value sum: [ :e | e classes size ]) ]) asOrderedDictionary).
	(#same
		->
			((self moCaModelComponentsSameSince: aModel)
				sorted: [ :a :b | 
					(a value sum: [ :e | e classes size ])
						> (b value sum: [ :e | e classes size ]) ]) asOrderedDictionary)}
		asDictionary