dictionaries
famixEntitiesDictionary
	"get corresponding query structure to famix element"
	
	|famixClass famixNamespace  famixAnnotaton  famixModules famixBookmarks famixMethod famixPackage famixVariable famixException famixFunction famixType famixEnum famixAssociation |
	
	famixNlpDictionary := Dictionary new.
	
	famixClass := Dictionary new.
	famixVariable := Dictionary new.
	famixMethod := Dictionary new.
	famixNamespace  := Dictionary new.
	famixPackage := Dictionary new.
	famixException := Dictionary new.
	famixFunction := Dictionary new.
	famixType := Dictionary new.
	famixException  := Dictionary new.
	famixAssociation  := Dictionary new.
	famixEnum   := Dictionary new.
	famixBookmarks   := Dictionary new.
	famixAnnotaton  := Dictionary new.
	famixModules := Dictionary new.
	
	famixClass at:'test' put: #(allTestClasses).
	famixClass at:'parameter' put: #(allParameterizableClasses).
	famixClass at:'model' put: #(allModelClasses).
	famixClass at:'default' put: #(allClasses).

	famixVariable  at:'local' put: #(allLocalVariables).
	famixVariable at:'global' put: #(allGlobalVariables).
	famixVariable at:'unknown' put: #(allUnknownVariables).
	famixVariable at:'implicit' put: #(allImplicitVariables).
	famixVariable at:'default' put: #(allLocalVariables).
	
	famixMethod at:'test' put: #(allTestMethods).
	famixMethod at:'model' put: #(allModelMethods).
	famixMethod at:'default' put: #(allMethods).
	
	famixNamespace at:'model' put: #(allModelNamespaces).
	famixNamespace  at:'default' put: #(allNamespaces).
	
	famixPackage at:'model' put: #(allModelPackages).
	famixPackage  at:'default' put: #(allPackages).
	
	famixType at:'annotation' put: #(allAnnotationTypes).
	famixType at:'generic' put: #(allParameterizedTypes).
	famixType at:'model' put: #(allModelTypes).
	famixType at:'alias' put: #(allTypeAliases).
	famixType at:'primitive' put: #(allPrimitiveTypes).
	famixType at:'parameter' put: #(allParameterTypes).
	famixType at:'default' put: #(allTypes).
	
	famixEnum at:'enum' put: #(allEnums).
	famixEnum at:'value' put: #(allEnumValues).
	
	famixException at:'declare' put: #(allDeclaredExceptions).
	famixException at:'caught' put: #(allCaughtExceptions).
	famixException at:'throw' put: #(allThrownExceptions).
	
	famixAnnotaton at:'instance' put: #(allAnnotationInstances).
	famixAnnotaton at:'attribute' put: #(allAnnotationTypes).
	famixAnnotaton at:'value' put: #(Deprecated Clustered Remote Stateless).

	famixFunction at:'function' put:#(allFuntions).
	
	famixModules at:'module' put:  #(allModules ).
	famixModules at:'default' put:  #(allModules ).
	
	famixAssociation at:'folder' put: #(allFolder).
	famixAssociation at:'invocation' put: #(allInvocations).
	famixAssociation at:'reference' put: #(allReferences).
	famixAssociation at:'inheritance' put: #(allInheritanceDefinitions).
	famixAssociation at:'default' put: #(allAccesses).
	
	famixBookmarks at:'group' put: #(allBookmarkedGroups).
	famixBookmarks at:'default' put: #(allBookmarks).
	
	famixNlpDictionary at: 'class' put: famixClass.
	famixNlpDictionary at: 'method' put: famixMethod .
	famixNlpDictionary at: 'variable' put: famixVariable.
	famixNlpDictionary at: 'package' put: famixPackage.
	famixNlpDictionary at: 'namespace' put: famixNamespace.
	famixNlpDictionary at: 'exception' put: famixException.
	famixNlpDictionary at: 'associate' put: famixAssociation.
	famixNlpDictionary at: 'annotation' put: famixAnnotaton.
	famixNlpDictionary at: 'type' put: famixType.
	famixNlpDictionary at: 'module' put: famixModules.
	famixNlpDictionary at: 'function' put: famixFunction.
	famixNlpDictionary at: 'bookmark' put: famixBookmarks.
	famixNlpDictionary at: 'enum' put: famixEnum.
	
	^famixNlpDictionary.
	
	