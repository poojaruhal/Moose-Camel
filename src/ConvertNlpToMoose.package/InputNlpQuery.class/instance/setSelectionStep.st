queries-steps
setSelectionStep
	"comment stating purpose of message"

	| aModelEntityValue |
	aModelEntityValue := NlpAnnotationNameContext deprecated.
	aSelectionStep := NlpQuerySelectionStep entityContext: aModelEntityValue.
	Transcript
		show: aSelectionStep;
		cr