copying
withoutStopwords
	"I return a new copy of response tokens without stopwords"
	<return: #NlpCoreResponseTokens>

	^ self reject: [ :aToken | self stopwordsList includes: aToken word asLowercase ]