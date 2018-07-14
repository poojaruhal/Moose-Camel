api - accessing
end: aNumber
	"Assign an index of the last character of this terminal's word within the original sentence"

	self
		assert: [ aNumber isNotNil ]
		description: [ 'End text index must not be nil' ].

	end := aNumber