aSentence-Analysis
aQuestionTreeGraphRepresentationOn: aString
	| browser |
	browser := GLMTabulator new.
	browser
		row: #input span:0.2;
		row: [ :r | r column: #astTree; column: #tree  ].
	(browser transmit)
		to: #input;
		andShow: [ :a | a text ].
	(browser transmit)
		to: #astTree;
		from: #input port: #text;
		andShow: [ :composite :aText |
			| ast |
			ast := McInputProcessor new process: aText asString.
			ast gtInspectorNodesIn: composite
		].
	(browser transmit)
		to: #tree;
		from: #input port: #text;
		andShow: [ :composite :aText |
			| ast |
			ast := McInputProcessor new process: aText asString.
			ast gtInspectorNodesGraphIn: composite
		].
	browser openOn: aString