examples - context
deprecatedAnnotationQueryStep
	<gtExample>
	| aModelEntityContext |

	aModelEntityContext := McAnnotationNameContext deprecated.
	self assert: aModelEntityContext annotationName equals: 'Deprecated'.

	^ aModelEntityContext