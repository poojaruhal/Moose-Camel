instance creation
openOn: aString

	| browser grammarFormQuestion1 grammarFormQuestion2  |
	browser := GLMTabulator new.
	browser
		column: #one span: 0.6;
		column: #two span: 1;
		column: #third span: 0.2;
		column: #fourth span: 0.2;
		column: #fifth span: 0.2.
	(browser transmit)
		to: #one;
		andShow: [ :a | a list display: [ :questions | questions ] ].
	(browser transmit)
		to: #two;
		andShow: [ :a | a list display: [ :questions | questions ] ].
		(browser transmit)
		to: #third;
		from: #one;
		andShow: [ :composite :aQuestion |
			| ast |
			ast := NlpInputProcessor new process: aQuestion asString.
			grammarFormQuestion1 := NlpGrammarForm fromAst: ast.
			grammarFormQuestion1 gtInspectorGrammarForm: composite ].
		(browser transmit)
		to: #fourth;
		from: #two;
		andShow: [ :composite :aQuestion |
				| ast |
			ast := NlpInputProcessor new process: aQuestion asString.
			grammarFormQuestion2 := NlpGrammarForm fromAst: ast.
			grammarFormQuestion2 gtInspectorGrammarForm: composite ].
		(browser transmit)
		from: #fourth;
		to: #fifth;
		andShow: [ :composite |
			grammarFormQuestion1 gtInspectorGrammarFormComparision: composite  withGrammarForm: grammarFormQuestion2
			 ].
	 browser openOn: aString lines.