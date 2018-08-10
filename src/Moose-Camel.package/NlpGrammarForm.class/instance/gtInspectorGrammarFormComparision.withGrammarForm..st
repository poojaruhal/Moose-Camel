gt-inspector-extension
gtInspectorGrammarFormComparision: aComposite withGrammarForm: aGrammarForm
	<gtInspectorPresentationOrder: 5>
	^ aComposite text
		title: 'Structure Similiarity';
		display: [ self = aGrammarForm ].