api - processing
process: aQuestion
	"Return an ast for a given question"
	<return: #NlpRoot>

	^ (self serviceResponse: aQuestion) ast