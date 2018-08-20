instance creation
createDependencies: basicDependenciesArray from: aRootNode

	^ basicDependenciesArray collect: [:eachDependency |
		|dependencyEdge sourceIndex targetIndex sourceNode targetNode|
		
		dependencyEdge := self labelled: eachDependency label.

		sourceIndex := eachDependency sourceIndex.
		targetIndex := eachDependency targetIndex.
		
		aRootNode 
			terminalAt: sourceIndex 
			ifFound: [:aTerminalNode | sourceNode := aTerminalNode ]
			ifNone: [ self error:'can not find terminal' ].  	
		 
		aRootNode 
			terminalAt: targetIndex 
			ifFound: [:aTerminalNode | targetNode := aTerminalNode ]
			ifNone: [ self error:'can not find terminal' ].
			
			dependencyEdge connectEdgeBetween: sourceNode  and: targetNode ]