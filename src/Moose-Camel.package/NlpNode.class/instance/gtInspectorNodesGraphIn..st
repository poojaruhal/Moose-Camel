gt-inspector-extension
gtInspectorNodesGraphIn: aComposite
	<gtInspectorPresentationOrder: 2>

	^ aComposite roassal2
			title: 'Graph';
			initializeView: [ RTMondrian new ];
			painting: [ :aBuilder |
				aBuilder shape label
					color: Color gray.
				aBuilder nodes: self withAllNodes.
				aBuilder edges
					connectToAll: #nodes.
				aBuilder shape
					arrowedBezier;
					color: (Color blue alpha: 0.3).
				aBuilder edges
					notUseInLayout;
					moveBehind;
					label: [ :sourceNode :targetNode |
						(sourceNode outgoingDependencies detect: [ :aDependency | aDependency targetNode = targetNode  ]) label ]
					fontSize: 7;
					connectToAll: #outgoingDependencyNodes.
				aBuilder layout tree horizontalGap: 50; verticalGap: 50.
				aBuilder build ]