examples - context
deprecatedAnnotationQueryStep
	<gtExample>
	| aModelEntityContext |

	aModelEntityContext := NlpAnnotationNameContext deprecated.
	self assert: aModelEntityContext annotationName equals: 'Deprecated'.

	^ aModelEntityContext