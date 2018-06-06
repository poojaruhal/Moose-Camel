examples - context
applyAllModelClassesQueryContextOnArgoUml
	<gtExample>
	| aModel anEntityKind aResult |

	aModel := self argoUmlModel.
	anEntityKind := self allModelClassesEntityKind.
	
	aResult := anEntityKind executeOn: aModel.

	^ aResult