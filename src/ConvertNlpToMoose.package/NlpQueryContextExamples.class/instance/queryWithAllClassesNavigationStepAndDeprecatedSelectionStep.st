examples - queries
queryWithAllClassesNavigationStepAndDeprecatedSelectionStep
	<gtExample>
	| aQuery aNavigationStep aSelectionStep aModel aResult |
	
	aQuery := self emptyQuery.
	aNavigationStep := self allModelClassesNavigationStep.
	aSelectionStep := self deprecatedClassesSelectionStep.
	
	aQuery addAll: { aNavigationStep . aSelectionStep }.
	
	aModel := self argoUmlModel.
	
	aResult := aQuery performOn: aModel.
	
	self
		assert: aResult asArray
		equals: (aModel allModelClasses select: [:each | each isAnnotatedWith: 'Deprecated']) asArray.
	
	^ aQuery