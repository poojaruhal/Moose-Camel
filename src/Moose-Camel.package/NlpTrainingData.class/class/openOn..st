instance creation
openOn: aString

	| browser |
	browser := GLMTabulator new.
	browser
		column: #one span: 0.5;
		column: #two;
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
		from: #one;
		andShow: [ :composite :aQuestion |
			| grammarForm |
			grammarForm := NlpInputProcessor new grammarFormOf:  aQuestion asString.
			"grammarForm gtInspectorGrammarForm: composite."
		].
	 browser openOn: aString lines.