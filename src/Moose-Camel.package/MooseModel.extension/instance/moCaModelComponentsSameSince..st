*Moose-Camel
moCaModelComponentsSameSince: aModel
	^ ((self allModelPackages asSet
		collect: [ :e | ('-' split: e name) first ])
		intersection:
			(aModel allModelPackages asSet
				collect: [ :e | ('-' split: e name) first ]))
		collect: [ :e | 
			e
				-> (self allModelPackages select: [ :f | ('-' split: f name) first = e ]) ]