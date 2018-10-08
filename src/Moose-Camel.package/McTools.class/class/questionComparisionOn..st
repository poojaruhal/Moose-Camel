as yet unclassified
questionComparisionOn: aString

	| browser grammarFormQuestion1 grammarFormQuestion2 question1 question2  |
	browser := GLMTabulator new.
	browser
		column: #one span: 1;
		column: #two span: 1;
		column: #third;
		column: #fourth;
		column: #fifth.
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
			ast := McInputProcessor new process: aQuestion asString.
			grammarFormQuestion1 := McGrammarForm fromAst: ast.
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
			ast := McInputProcessor new process: aQuestion asString.
			grammarFormQuestion2 := McGrammarForm fromAst: ast.
			grammarFormQuestion2 gtInspectorGrammarForm: composite.
"				composite text
				title: 'Question 2';
				display: question2."
			 ].
		(browser transmit)
		to: #third;
		from: #two;
		andShow: [ :composite |
			|distance|
			distance := (McStrcutureDistance new from: question1  to: question2).
				composite text
				title: 'Structural Distance';
				display: distance.
			 ].
		(browser transmit)
		from: #two;
		to: #fourth;
		andShow: [ :composite |
			|distance  |
			distance := (McSemanticDistance new from: question1  to: question2).
			composite text
				title: 'Semantic Distance';
				display: distance.
			 ].
		(browser transmit)
			from: #two;
			to: #fifth;
			andShow: [ :composite |
				|distance nlpQuestionsDistance |
				nlpQuestionsDistance := McQuestionsDistance new between:question1 and: question2.
				distance:= nlpQuestionsDistance calculateDistance.
				composite text
					title: 'Total Distance';
					display: distance.
			 ].
	 browser openOn: aString lines.