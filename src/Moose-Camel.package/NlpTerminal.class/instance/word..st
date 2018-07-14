api - accessing
word: aString
	"Assign a word that is represented by this terminal"

	self
		assert: [ aString isNotNil ]
		description: [ 'Word must not be nil' ].
		
	word := aString