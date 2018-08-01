api - accessing
parent
	self
		assert: [ self hasParent ]
		description: [ 'Can not access a parent if I don''t have one' ].

	^ parent