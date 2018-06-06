dictionaries
famixEntitiesDictionary
	"get corresponding query structure to famix element"
	
	famixNlpDictionary := Dictionary new.
	famixNlpDictionary := { 

	#class -> { 	
		'test' -> #(allTestClasses).
		'parameter' -> #(allParameterizableClasses).
		'model' -> #(allModelClasses).
		'default' -> #(allClasses). } asDictionary.

	#method -> { 
		'test' -> #(allTestMethods).
		'model' -> #(allModelMethods).
		'default' -> #(allMethods).} asDictionary. 

	#variable -> { 	
		'local' -> #(allLocalVariables).
		'global' -> #(allGlobalVariables).
		'unknown' -> #(allUnknownVariables).
		'implicit' -> #(allImplicitVariables).
		'default' -> #(allLocalVariables). } asDictionary.

	#package -> { 
		'model'  -> #(allModelPackages).
		'default'-> #(allPackages).} asDictionary.
		
	#namespace -> {
		'model'   -> #(allModelNamespaces).
		'default' ->  #(allNamespaces).  }asDictionary.
		
	#exception -> { 
		'declare'-> #(allDeclaredExceptions).
		'caught' -> #(allCaughtExceptions).
		'throw' ->  #(allThrownExceptions). }asDictionary.
		
	#associate -> { 
		'folder' 	-> #(allFolder).
		'invocation' -> #(allInvocations).
		'reference' -> #(allReferences).
		'inheritance' -> #(allInheritanceDefinitions).
		'default' 	-> #(allAccesses). }asDictionary .

	#annotation -> { 
		'instance' 	-> #(allAnnotationInstances).
		'attribute' -> #(allAnnotationTypes).
		'value' 	-> #(Deprecated Clustered Remote Stateless). }asDictionary .
		
	#type -> {
		'annotation'-> #(allAnnotationTypes).
		'generic' 	-> #(allParameterizedTypes).
		'model' 	-> #(allModelTypes).
		'alias' 	-> #(allTypeAliases).
		'primitive' -> #(allPrimitiveTypes).
		'parameter' -> #(allParameterTypes).
		'default' 	-> #(allTypes).} asDictionary.
			
	#module -> { 
		'module'  -> #(allModules ).
		'default' -> #(allModules ). }asDictionary.
	
	#function -> {  
		'function' -> #(allFuntions) }asDictionary.
	
	#bookmark -> {
		'group'   -> #(allBookmarkedGroups).
		'default' -> #(allBookmarks).}asDictionary.
	
	#enum -> { 
		'enum'  -> #(allEnums).
		'value' -> #(allEnumValues). }asDictionary.
	 }asDictionary.
	
	^famixNlpDictionary.
	