initialization
connectEdgeBetween: aSourceNode and: aTargetNode
	sourceNode := aSourceNode.
	targetNode := aTargetNode.
	
	sourceNode addDependency: self.
	targetNode addDependency: self
	