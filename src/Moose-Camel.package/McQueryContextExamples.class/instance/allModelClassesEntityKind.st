examples - context
allModelClassesEntityKind
	<gtExample>
	| anEntityKind |

	anEntityKind := McNamedEntityKind named: #allModelClasses.
	self assert: anEntityKind name equals: #allModelClasses.

	^ anEntityKind