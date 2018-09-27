gt-inspector-extension
gtInspectorLemmaForm: aComposite
	<gtInspectorPresentationOrder: 4>
	^ aComposite fastList
		title: 'Lemma Form';
		display: [ self nodes];
		beMultiple;
		format: [ :each | GTObjectPrinter asTruncatedTextFrom: each ].