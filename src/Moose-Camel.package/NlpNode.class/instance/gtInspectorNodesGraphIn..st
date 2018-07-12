as yet unclassified
gtInspectorNodesGraphIn: aComposite
	<gtInspectorPresentationOrder: 2>

	^ aComposite roassal2
			title: 'Graph';
			initializeView: [ RTMondrian new ];
			painting: [ :aBuilder :aNode |
				aBuilder shape label
					color: Color gray.
				aBuilder nodes: aNode withAllNodes.
				aBuilder edges
					connectToAll: #nodes.
				aBuilder shape
					arrowedBezier;
					color: (Color blue alpha: 0.3).
				aBuilder edges
					notUseInLayout;
					label: [ :sourceNode :targetNode |
						(sourceNode outgoingDependencies detect: [ :aDependency | aDependency targetNode = targetNode  ]) label ]
					fontSize: 3;
					connectToAll: #outgoingDependencyNodes.
				aBuilder layout tree horizontalGap: 100; verticalGap: 100.
				aBuilder build ]