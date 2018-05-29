smalltalkNLP
tagInputQuery
	"Part of speech tagging of input query"
	| taggedQuery |
	NLPtagger initializeLexicon.
	taggedQuery := NLPtagger pptag: nlpQuery.
	^ taggedQuery
	
	
	
	