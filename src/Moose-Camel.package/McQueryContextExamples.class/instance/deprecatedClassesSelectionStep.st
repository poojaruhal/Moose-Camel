examples - steps
deprecatedClassesSelectionStep
	<gtExample>
	| anEntityContext aStep |

	anEntityContext := self deprecatedAnnotationQueryStep.
	aStep := NlpQuerySelectionStep entityContext: anEntityContext.

	^ aStep