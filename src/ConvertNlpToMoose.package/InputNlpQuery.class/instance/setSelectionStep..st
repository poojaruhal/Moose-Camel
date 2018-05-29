queries-steps
setSelectionStep: aSymbol
	"comment stating purpose of message"
	
	| aModelEntityValue |
	aModelEntityValue := NlpAnnotationNameContext annotationInstance:aSymbol.
	aSelectionStep := NlpQuerySelectionStep entityContext: aModelEntityValue.
	Transcript
		show: aSelectionStep;
		cr