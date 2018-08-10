gt-examples
removeStopwordsFromSentence
	<gtExample>
	| tokens jsonOutput sentenceAfterStopwordsRemoval |
	jsonOutput := self coreNlpResponse.
	tokens := self tokensFrom: jsonOutput.
	sentenceAfterStopwordsRemoval := self removeStopwords: tokens.
	^ sentenceAfterStopwordsRemoval