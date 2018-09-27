as yet unclassified
similarity: aString and: aQuery
	"Return a distance between questions, the lower the better"
	<return: #Number>

	^ NlpQuestionsDistance new questionOne: aString; questionTwo: aQuery; calculateDistance.