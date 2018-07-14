api - accessing
index: aNumber
	"Assign an index of this terminal within a sentence"

	self
		assert: [ aNumber isNotNil ]
		description: [ 'Index must not be nil' ].

	index := aNumber