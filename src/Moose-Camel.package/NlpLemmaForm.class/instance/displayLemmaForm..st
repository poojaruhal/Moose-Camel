as yet unclassified
displayLemmaForm: aQuestion
	
	| sentenceAfterStopwordsRemoval |
	
	sentenceAfterStopwordsRemoval := NlpInputProcessor new removeStopwordsFrom: aQuestion .
	
	^ self lemmaForm: sentenceAfterStopwordsRemoval