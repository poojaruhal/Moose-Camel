Nlp
gtInspectorGrammarForm: aComposite
	<gtInspectorPresentationOrder: 3>
	self halt.
	^ aComposite text
			title: 'Grammar Form';
			display: [ self contents ];
			when: [ self contents notEmpty]