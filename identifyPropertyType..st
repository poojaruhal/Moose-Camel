smalltalkNLP
identifyPropertyType: aVerb 
	"idenitify verb "
	|values|
	propertyType := #isAnnotatedWith.
	values := famixDictionary keyAtValue:  aVerb.
	(values contains: aVerb)
		ifTrue: [ ^aVerb ]   