examples - steps
performDeprecatedClassesSelectionStepOnAllClassModelsInArgoUml
	<gtExample>
	| aModel aStep aStepResult |

	aModel := self argoUmlModel.
	aStep := self deprecatedClassesSelectionStep.
	
	aStepResult := aStep performOn: aModel allModelClasses.

	self
		assert: aStepResult asArray
		equals: (aModel allModelClasses select: [:each | each isAnnotatedWith: 'Deprecated']) asArray.

	^ aStepResult