visiting
visitNsubj: anNlpDependencyNsubj
	| aTargetWord aReturnEntity aNavigationStep |
	
	aTargetWord := anNlpDependencyNsubj targetNode word.
	aReturnEntity := {
		'classes' -> (NlpNamedEntityKind named: #allModelClasses).
		'methods' -> (NlpNamedEntityKind named: #allModelMethods) } asDictionary at: aTargetWord.

	aNavigationStep := NlpQueryNavigationStep  entityKind: aReturnEntity.
	query add: aNavigationStep.

	question := question , 'return ', anNlpDependencyNsubj targetNode word, ' that ', anNlpDependencyNsubj sourceNode word, String cr