converting
uniqueTokens
	^ (self collect:[:eachToken | eachToken word]) asSet.