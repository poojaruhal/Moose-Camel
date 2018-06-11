instance creation
nodeClassLabelled: aString
	"Return a node class that corresponds to the given label"
	<return: #'NlpNode class'>
	
	^ (self allSubclasses
		reject: [ :aNodeClass | aNodeClass isAbstract ])
		detect: [ :aNodeClass | aNodeClass label = aString ]
			ifNone: [ self error: 'Can not find a node for ', aString ]