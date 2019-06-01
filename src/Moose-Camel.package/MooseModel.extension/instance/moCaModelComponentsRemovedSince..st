*Moose-Camel
moCaModelComponentsRemovedSince: aModel
	^ ((aModel allModelPackages asSet
		collect: [ :e | ('-' split: e name) first ])
		difference:
			(self allModelPackages asSet
				collect: [ :e | ('-' split: e name) first ]))
		collect: [ :e | 
			e
				->
					(aModel allModelPackages
						select: [ :f | ('-' split: f name) first = e ]) ]