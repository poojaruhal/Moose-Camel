Nlp
searchEntityContexts: aLemmaWord
	"get context of entity like annotation, method call. "
	<return: #Collection of: #Symbol>

	"check whether there is a relation between word and entity kind"	
	^ self famixDictionary
		valuesDo: [ :aValue |
			(aValue includesAnyOf: aLemmaWord)
				ifTrue: [ self famixDictionary keyAtValue: aLemmaWord ]
				ifFalse: [ #() ] ]