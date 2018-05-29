famix-dependent
argoUmlModel
	"comment stating purpose of message"
	 ^ MooseModel root allModels detect: [ :aModel | aModel name beginsWith: 'ArgoUML' ]