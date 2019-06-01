*Moose-Camel
moCaModelPackagesRemovedSince: aModel
	^ ((aModel allModelPackages asSet collect: #name)
		difference: (self allModelPackages asSet collect: #name))
		collect: [ :e | aModel allModelPackages detect: [ :f | f name = e ] ]