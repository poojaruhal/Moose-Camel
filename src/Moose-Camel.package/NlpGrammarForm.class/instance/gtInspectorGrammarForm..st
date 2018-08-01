gt-inspector-extension
gtInspectorGrammarForm: aComposite
	<gtInspectorPresentationOrder: 3>
	^ aComposite fastTable
		title: 'Grammar Form';
		display: [ self nodes ];
		enableElementIndex;
		column: 'Index' evaluated: [ :value :idex | idex asString ] width: 50;
		column: 'Item' evaluated: [ :value | GTObjectPrinter asTruncatedTextFrom: value ].