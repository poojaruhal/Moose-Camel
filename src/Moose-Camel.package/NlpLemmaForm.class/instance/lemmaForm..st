accessing
lemmaForm: aQuestion
	<return: #Collection of: #String>
	| aResponse |

	aResponse := NlpInputProcessor new serviceResponse: aQuestion.
	^ aResponse tokens withoutStopwords lemmas