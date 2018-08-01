api - visiting
accept: aNodeVisitor
	aNodeVisitor visitNonTerminal: self.
	
	self nodes do: [ :aNode | aNode accept: aNodeVisitor ]