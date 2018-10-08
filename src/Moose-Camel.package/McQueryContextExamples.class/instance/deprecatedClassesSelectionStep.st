examples - steps
deprecatedClassesSelectionStep
	<gtExample>
	| anEntityContext aStep |

	anEntityContext := self deprecatedAnnotationQueryStep.
	aStep := McQuerySelectionStep entityContext: anEntityContext.

	^ aStep