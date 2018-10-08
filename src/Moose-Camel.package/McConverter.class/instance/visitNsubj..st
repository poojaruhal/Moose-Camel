visiting
visitNsubj: anNlpDependencyNsubj
	| aTargetWord aReturnEntity aNavigationStep |
	
	aTargetWord := anNlpDependencyNsubj targetNode word.
	aReturnEntity := {
		'classes' -> (McNamedEntityKind named: #allModelClasses).
		'methods' -> (McNamedEntityKind named: #allModelMethods) } asDictionary at: aTargetWord.

	aNavigationStep := McQueryNavigationStep  entityKind: aReturnEntity.
	query add: aNavigationStep.

	question := question , 'return ', anNlpDependencyNsubj targetNode word, ' that ', anNlpDependencyNsubj sourceNode word, String cr