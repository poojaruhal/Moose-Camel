inspecting
gtInspectorStepsIn: aComposite
	<gtInspectorPresentationOrder: 1>

	^ aComposite fastList
		title: 'Steps';
		display: [ self steps ]