copying
withoutStopwords
	"I return a new copy of response tokens without stopwords"
	<return: #McCoreResponseTokens>

	^ self reject: [ :aToken | self stopwordsList includes: aToken word asLowercase ]