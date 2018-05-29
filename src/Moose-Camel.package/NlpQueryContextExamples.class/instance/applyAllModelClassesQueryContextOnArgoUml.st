examples - context
applyAllModelClassesQueryContextOnArgoUml
	<gtExample>
	| aModel aQueryContext aResult |

	aModel := self argoUmlModel.
	aQueryContext := self allModelClassesQueryContext.
	
	aResult := aQueryContext executeOn: aModel.

	^ aResult