queries-steps
setNavigationStep: aSymbol
	"set navigation step to symbol"
	
	aNavigationStep := self navigationStepOnEntityKind: aSymbol.
	Transcript
		show: aNavigationStep;
		cr.