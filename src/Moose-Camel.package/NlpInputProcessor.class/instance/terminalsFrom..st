private
terminalsFrom: aJsonOutput
	<return: #Collection of: #NlpTerminal>

	^ (self tokensFrom: aJsonOutput)
		collect: [ :aTokenDictionary | NlpTerminal fromDictionary: aTokenDictionary ]