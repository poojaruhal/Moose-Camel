examples - instance creation
argoUmlModel
	<gtExample>

	^ MooseModel root allModels detect: [ :aModel | aModel name beginsWith: 'ArgoUML' ]