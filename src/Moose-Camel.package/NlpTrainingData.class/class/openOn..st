instance creation
openOn: aString

	| browser |
	browser := GLMTabulator new.
	browser
		column: #one span: 0.5;
		column: #two.
	(browser transmit)
		to: #one;
		andShow: [ :a | a list display: [ :questions | questions ] ].
	(browser transmit)
		to: #two;
		from: #one;
		andShow: [ :composite :aText |
			| ast |
			ast := NlpInputProcessor new process: aText asString.
			ast gtInspectorNodesGraphIn: composite
		].
	 browser openOn: aString lines.