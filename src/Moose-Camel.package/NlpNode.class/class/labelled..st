instance creation
labelled: aString
	"Return a new node instance that corresponds to the given label"
	<return:  #NlpNode>
	
	^ (self nodeClassLabelled: aString) new