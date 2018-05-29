Nlp
searchFamixEntityValue: aWord
	"get famix property for query using verb"
	Transcript show:'searchFamixEntity - '.
	Transcript show:aWord asSymbol;cr.
	self getFamixDictionary
		valuesDo: [ :value |
			(value includesAny: aWord)
				ifTrue: [ 
					"self setPropertyType: (self getFamixDictionary keyAtValue: value)"
					Transcript show:'set selection step';cr.
					Transcript show:aWord;cr.
					self setSelectionStep: aWord.
					]]