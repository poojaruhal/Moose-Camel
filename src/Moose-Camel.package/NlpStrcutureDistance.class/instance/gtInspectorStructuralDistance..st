Accessing
gtInspectorStructuralDistance: aComposite
	<gtInspectorPresentationOrder: 5>
	^ aComposite text
		title: 'Structure Distance';
		display: [ self distance].