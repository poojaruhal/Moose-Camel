gt-inspector-extension
gtInspectorGrammarForm: aComposite
	<gtInspectorPresentationOrder: 3>
	^ aComposite text
			title: 'Grammar Form';
			display: [ self contents];
			when: [ self contents notEmpty]