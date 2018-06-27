as yet unclassified
gtInspectorNodesGraphIn: aComposite
	<gtInspectorPresentationOrder: 2>

	^ aComposite roassal2
			title: 'Graph';
			initializeView: [ RTMondrian new ];
			painting: [ :aBuilder :aNode |
				aBuilder nodes: aNode withAllNodes.
				aBuilder edges connectToAll: #nodes.
				aBuilder layout tree.
				aBuilder build ]