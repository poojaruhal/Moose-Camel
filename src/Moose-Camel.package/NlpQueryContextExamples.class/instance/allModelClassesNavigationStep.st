examples - steps
allModelClassesNavigationStep
	<gtExample>
	| aContext aStep |

	aContext := self allModelClassesQueryContext.
	aStep := NlpQueryNavigationStep  entityKind: aContext.
	
	^ aStep