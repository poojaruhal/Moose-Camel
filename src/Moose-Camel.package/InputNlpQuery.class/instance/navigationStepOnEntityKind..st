queries-steps
navigationStepOnEntityKind: aSymbol
	"comment stating purpose of message"

	|aStep entityKind|
	"queryContext := context."
	entityKind := NlpNamedEntityKind named: aSymbol .
	aStep := NlpQueryNavigationStep  entityKind: entityKind.
	^aStep.