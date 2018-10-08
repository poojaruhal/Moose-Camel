accessing
lemmaForm: aQuestion
	<return: #Collection of: #String>
	| aResponse |

	aResponse := McInputProcessor new serviceResponse: aQuestion.
	^ aResponse tokens withoutStopwords lemmas