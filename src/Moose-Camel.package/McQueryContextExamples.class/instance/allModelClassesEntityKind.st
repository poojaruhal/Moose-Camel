examples - context
allModelClassesEntityKind
	<gtExample>
	| anEntityKind |

	anEntityKind := NlpNamedEntityKind named: #allModelClasses.
	self assert: anEntityKind name equals: #allModelClasses.

	^ anEntityKind