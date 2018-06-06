examples - steps
allModelClassesNavigationStep
	<gtExample>
	| aContext aStep |

	aContext := self allModelClassesEntityKind.
	aStep := NlpQueryNavigationStep  entityKind: aContext.
	
	^ aStep