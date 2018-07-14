api - accessing
start: aNumber
	"Assign an index of the first character of this terminal's word within the original sentence"

	self
		assert: [ aNumber isNotNil ]
		description: [ 'Start text index must not be nil' ].

	start := aNumber