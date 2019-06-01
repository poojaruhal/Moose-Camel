*Moose-Camel
moCaModelComponentsAddedSince: aModel
	^ ((self allModelPackages asSet
		collect: [ :e | ('-' split: e name) first ])
		difference:
			(aModel allModelPackages asSet
				collect: [ :e | ('-' split: e name) first ]))
		collect: [ :e | 
			e
				-> (self allModelPackages select: [ :f | ('-' split: f name) first = e ]) ]