examples - context
allModelClassesQueryContext
	<gtExample>
	| aContext |

	aContext := NlpNamedQueryContext named: #allModelClasses.
	self assert: aContext name equals: #allModelClasses.

	^ aContext