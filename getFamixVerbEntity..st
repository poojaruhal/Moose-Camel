Nlp
getFamixVerbEntity: aVerb
	"get famix property for query using verb"
	
	self getFamixDictionary
		valuesDo: [ :value | 
			(value hasLiteral: #Deprecated)
				ifTrue: [ self setPropertyType: (self getFamixDictionary keyAtValue: value) ]
				 ]