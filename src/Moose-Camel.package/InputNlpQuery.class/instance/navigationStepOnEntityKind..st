queries-steps
navigationStepOnEntityKind: aSymbol
	"comment stating purpose of message"

	|aStep entityKind|
	"queryContext := context."
	entityKind := NlpNamedQueryContext named: aSymbol .
	aStep := NlpQueryNavigationStep  entityKind: entityKind.
	^aStep.