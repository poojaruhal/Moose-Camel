instance creation
annotationInstance: aSymbol
	"create annotation instance based on aSymbol"
	(aSymbol matchesRegexIgnoringCase: 'deprecate*' )
	ifTrue: [self deprecated]
	
	