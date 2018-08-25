Accessing
from: questionOne to: questionTwo
	"I am resposnible for calculating the structural distance between two questions.
	Structural distance is defined as distance between grammar form of two questions.
	We first create the grammar form of each question and then calculate pairsSimiliarity distance between tow form."
	
	| list1 list2 grammarFormOne grammarFormTwo|
	
	grammarFormOne:= NlpGrammarForm fromAst: (NlpInputProcessor new process: questionOne).
	grammarFormTwo:= NlpGrammarForm fromAst: (NlpInputProcessor new process: questionTwo).

	list1 := grammarFormOne nodes collect: #class.
	list2 := grammarFormTwo nodes collect: #class.
	
	distance:=  (list1 pairsSimilarityWith: list2) asFloat.
	
	^ distance.