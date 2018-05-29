NonInteractiveTranscript stdout show: '.' asFileReference absolutePath; cr.
NonInteractiveTranscript stdout show: Smalltalk image imageFile absolutePath; cr.

file := 'pharo-local/iceberg/poojaruhal65/Moose-Camel/models/ArgoUML-0.34.mse' asFileReference.

model := MooseModel new.
file readStreamDo: [ :aStream |
	model name: (aStream localName copyUpToLast: Path extensionDelimiter).	"name without extension"
	model importFromMSEStream: aStream.
	model install ]
