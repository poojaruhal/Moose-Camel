famix-dependent
famixQueryDictionary
	"get corresponding query structure to famix element"
	
	|famixClasses famixParameter famixNameSpaces  famixAnnotaton famixMethodOperations  famixModules famixVariables famixBookMarks famixModel |
	famixNlpDictionary := Dictionary new.
	famixClasses :=  #(allModelClasses allClasses allParameterizableClasses allTestClasses   ). 
	famixParameter :=  #(allParameterizedTypes allParameters allAccesses allTypes  ).
	famixNameSpaces := #(allNamespaces allFolders allModelNamespaces allPackages allModelPackages ).
	famixAnnotaton :=  #(allAnnotationInstances allAnnotationTypes  ).
	famixMethodOperations := #(allInvocations allFunctions allModelMethods allTestMethods allMethods).
	famixModules :=  #(allModules ).
	famixVariables := #(allUnknownVariables allLocalVariables allGlobalVariables allAttributes allImplicitVariables).
	famixBookMarks := #(allBookmarks allBookmarkedGroups ).
	famixModel := #(allModelTypes allModels  allTraces ).
	
	
	famixNlpDictionary at: 'classes' put: famixClasses.
	famixNlpDictionary at: 'methods' put: famixMethodOperations.
	famixNlpDictionary at: 'variables' put: famixVariables.
	famixNlpDictionary at: 'propertyType' put: #(isAnnotatedWith).
	famixNlpDictionary at: 'isAnnotatedWith' put: #(Deprecated Clustered Remote Stateless).
	
	