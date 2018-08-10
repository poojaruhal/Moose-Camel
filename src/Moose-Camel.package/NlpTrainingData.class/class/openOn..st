instance creation
openOn: aString

	| browser |
	browser := GLMTabulator new.
	browser
		column: #one span: 0.6;
		column: #two span: 1;
		column: #third span: 0.2;
		column: #fourth span: 0.2.
	(browser transmit)
		to: #one;
		andShow: [ :a | a list display: [ :questions | questions ] ].
	(browser transmit)
		to: #two;
		from: #one;
		andShow: [ :composite :aQuestion |
			| ast |
			ast := NlpInputProcessor new process: aQuestion asString.
			ast gtInspectorNodesGraphIn: composite
		].
		(browser transmit)
		to: #third;
		from: #one;
		andShow: [ :composite :aQuestion |
			| grammarForm ast |
			ast := NlpInputProcessor new process: aQuestion asString.
			grammarForm := NlpGrammarForm fromAst: ast.
			grammarForm gtInspectorGrammarForm: composite ].
		(browser transmit)
		to: #fourth;
		from: #one;
		andShow: [ :composite :aQuestion |
			| lemmaForm  |
			 lemmaForm := NlpLemmaForm fromQuestion: aQuestion asString.
			lemmaForm gtInspectorLemmaForm: composite ].
	 browser openOn: aString lines.