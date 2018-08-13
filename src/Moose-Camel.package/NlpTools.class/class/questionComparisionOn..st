as yet unclassified
questionComparisionOn: aString

	| browser grammarFormQuestion1 grammarFormQuestion2 question1 question2  |
	browser := GLMTabulator new.
	browser
		column: #one span: 1;
		column: #two span: 1;
		column: #third;
		column: #fourth.
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
			question1 := aQuestion.
			ast := NlpInputProcessor new process: aQuestion asString.
			grammarFormQuestion1 := NlpGrammarForm fromAst: ast.
			grammarFormQuestion1 gtInspectorGrammarForm: composite.
"			composite text
				title: 'Question 1';
				display: question1."
			 ].
		(browser transmit)
		to: #third;
		from: #two;
		andShow: [ :composite :aQuestion |
			| ast |
			question2 := aQuestion.
			ast := NlpInputProcessor new process: aQuestion asString.
			grammarFormQuestion2 := NlpGrammarForm fromAst: ast.
			grammarFormQuestion2 gtInspectorGrammarForm: composite.
"				composite text
				title: 'Question 2';
				display: question2."
			 ].
		(browser transmit)
		to: #third;
		from: #two;
		andShow: [ :composite |
			grammarFormQuestion1 gtInspectorGrammarFormComparision: composite  withGrammarForm: grammarFormQuestion2
			 ].
		(browser transmit)
		from: #two;
		to: #fourth;
		andShow: [ :composite |
			|distance|
			distance:= NlpQuestionSimilarity new distanceOf: question1  from: question2.
			composite text
				title: 'Semantic Distance';
				display: distance.
			 ].
	 browser openOn: aString lines.