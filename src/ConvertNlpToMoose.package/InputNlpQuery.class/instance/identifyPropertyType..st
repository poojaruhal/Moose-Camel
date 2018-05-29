smalltalkNLP
identifyPropertyType: aVerb 
	"idenitify verb "
	|values propertyType |
	propertyType := #isAnnotatedWith.
	values := famixNlpDictionary keyAtValue:  aVerb.
	(values contains: aVerb)
		ifTrue: [ ^aVerb ]   