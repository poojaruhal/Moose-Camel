visiting
visitDobj: anNlpDependencyDobj
	| aTargetWord aSourceWord aReturnEntity aNavigationStep aSelectionStep |
	
	aTargetWord := anNlpDependencyDobj targetNode word.
	aReturnEntity := {
		'classes' -> (NlpNamedEntityKind named: #allModelClasses).
		'methods' -> (NlpNamedEntityKind named: #allModelMethods) } asDictionary at: aTargetWord.

	aNavigationStep := NlpQueryNavigationStep  entityKind: aReturnEntity.
	query add: aNavigationStep.
	
	aSourceWord := anNlpDependencyDobj sourceNode word.
	aSelectionStep := {
		'deprecated' -> (NlpQuerySelectionStep deprecated)
	} asDictionary at: aSourceWord.
	
	query add: aSelectionStep.
	
	question := question , 'return ', anNlpDependencyDobj targetNode word, ' that ', anNlpDependencyDobj sourceNode word, String cr