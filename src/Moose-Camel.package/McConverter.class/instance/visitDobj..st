visiting
visitDobj: anNlpDependencyDobj
	| aTargetWord aSourceWord aReturnEntity aNavigationStep aSelectionStep |
	
	aTargetWord := anNlpDependencyDobj targetNode word.
	aReturnEntity := {
		'classes' -> (McNamedEntityKind named: #allModelClasses).
		'methods' -> (McNamedEntityKind named: #allModelMethods) } asDictionary at: aTargetWord.

	aNavigationStep := McQueryNavigationStep  entityKind: aReturnEntity.
	query add: aNavigationStep.
	
	aSourceWord := anNlpDependencyDobj sourceNode word.
	aSelectionStep := {
		'deprecated' -> (McQuerySelectionStep deprecated)
	} asDictionary at: aSourceWord.
	
	query add: aSelectionStep.
	
	question := question , 'return ', anNlpDependencyDobj targetNode word, ' that ', anNlpDependencyDobj sourceNode word, String cr