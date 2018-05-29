Nlp
getFamixEntity: aWord
	"check whether the word is famix entity or not"

	| temp|
	temp := ''.
	self getFamixDictionary
		at: aWord
		ifPresent: [ temp := (self getFamixDictionary at: aWord) at: 1.
			"entityKindCandidates add: temp."
			self setNavigationStep: temp ]
		ifAbsent: [ Transcript
				show: 'Word not found in dicitionary';
				cr ]