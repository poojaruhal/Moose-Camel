Nlp
searchEntityKinds: aWord
	"check whether the word is famix entity or not"
	<return: #Collection of: #Symbol>

	^ self famixDictionary
		at: aWord
		ifPresent: [ (self famixDictionary at: aWord) at: 'model'  ]
		ifAbsent: [ #() ]