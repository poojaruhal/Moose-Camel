instance creation
openOn: aString

	| browser |
	browser := GLMTabulator new.
	browser
		column: #one span: 0.5;
		column: #two span: 0.7;
		column: #third.
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
		from: #two;
		andShow: [ :composite :aQuestion :ast |
			| grammarForm |
			grammarForm := NlpGrammarForm fromAst: ast.
			grammarForm gtInspectorGrammarForm: composite.		].
	 browser openOn: aString lines.