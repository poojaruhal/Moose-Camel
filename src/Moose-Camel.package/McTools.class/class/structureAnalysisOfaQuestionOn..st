sentence - structure
structureAnalysisOfaQuestionOn: aString

	| browser |
	browser := GLMTabulator new.
	browser
		column: #one span: 0.6;
		column: #two span: 1;
		column: #third span: 0.4;
		column: #fourth span: 0.4.
	(browser transmit)
		to: #one;
		andShow: [ :a | a list display: [ :questions | questions ] ].
	(browser transmit)
		to: #two;
		from: #one;
		andShow: [ :composite :aQuestion |
			| ast |
			ast := McInputProcessor new process: aQuestion asString.
			ast gtInspectorNodesGraphIn: composite
		].
		(browser transmit)
		to: #third;
		from: #one;
		andShow: [ :composite :aQuestion |
			| grammarForm ast |
			ast := McInputProcessor new process: aQuestion asString.
			grammarForm := McGrammarForm fromAst: ast.
			grammarForm gtInspectorGrammarForm: composite ].
		(browser transmit)
		to: #fourth;
		from: #one;
		andShow: [ :composite :aQuestion |
			| lemmaForm  |
			 lemmaForm := McLemmaForm fromQuestion: aQuestion asString.
			lemmaForm gtInspectorLemmaForm: composite ].
	 browser openOn: aString lines.