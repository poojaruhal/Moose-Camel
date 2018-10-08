examples - steps
allModelClassesNavigationStep
	<gtExample>
	| aContext aStep |

	aContext := self allModelClassesEntityKind.
	aStep := McQueryNavigationStep  entityKind: aContext.
	
	^ aStep