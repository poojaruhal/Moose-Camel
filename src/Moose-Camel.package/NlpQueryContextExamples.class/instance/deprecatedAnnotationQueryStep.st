examples - context
deprecatedAnnotationQueryStep
	<gtExample>
	| aModelEntityValue |

	aModelEntityValue := NlpAnnotationNameContext deprecated.
	self assert: aModelEntityValue annotationName equals: 'Deprecated'.

	^ aModelEntityValue