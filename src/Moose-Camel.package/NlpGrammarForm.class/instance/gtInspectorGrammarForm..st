gt-inspector-extension
gtInspectorGrammarForm: aComposite
	<gtInspectorPresentationOrder: 3>
	^ aComposite fastList
		title: 'Grammar Form';
		display: [ self nodes];
		beMultiple;
		format: [ :each | GTObjectPrinter asTruncatedTextFrom: each label  ].