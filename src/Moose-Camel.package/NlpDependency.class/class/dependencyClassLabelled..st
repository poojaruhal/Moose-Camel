instance creation
dependencyClassLabelled: aString
	"Return a depedency class that corresponds to the given label"
	<return: #'NlpDependency class'>
	
	^ self allSubclasses
		detect: [ :aDependencyClass | aDependencyClass label = aString ]
		ifNone: [ self generateSubclassLabelled: aString ]