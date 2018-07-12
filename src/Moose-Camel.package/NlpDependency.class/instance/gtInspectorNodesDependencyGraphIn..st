accessing
gtInspectorNodesDependencyGraphIn: aComposite
	<gtInspectorPresentationOrder: 3>

	^ aComposite roassal2
			title: 'Graph';
			initializeView: [ RTMondrian new ];
			painting: [ :aBuilder :aNode |
				aBuilder shape label
				color: Color gray.
				aBuilder interaction popupText: aNode color: Color white . 
				aBuilder nodes: aNode withAllNodes.
				aBuilder edges connectToAll: #nodes.
				aBuilder layout tree.
				aBuilder build ]