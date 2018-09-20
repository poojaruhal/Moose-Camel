accessing
grammarForm
	<gtExample>
	<description:'grammar form of a developers question'>

  ^	NlpGrammarForm fromAst: (NlpInputProcessor new process: (NlpCoreResponseExamples new developerQuestion))