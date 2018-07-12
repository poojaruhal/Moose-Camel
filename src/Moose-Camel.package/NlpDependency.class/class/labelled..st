instance creation
labelled: aString
	"Return a new dependency instance that corresponds to the given label"
	<return:  #NlpDependency>
	
	^ (self dependencyClassLabelled: aString) new