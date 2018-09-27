examples - steps
performAllModelClassesNavigationStepOnArgoUml
	<gtExample>
	| aModel aStep aStepResult |

	aModel := self argoUmlModel.
	aStep := self allModelClassesNavigationStep.
	
	aStepResult := aStep performOn: aModel.
	
	self assert: aStepResult equals: aModel allModelClasses.

	^ aStepResult