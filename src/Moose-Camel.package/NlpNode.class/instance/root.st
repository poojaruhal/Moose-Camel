api - accessing
root
	<return:#NlpNode>
	
	^ self hasParent 
		ifTrue:[self parent root]
		ifFalse:[self]
		
	