accessing
nouns
	| aVisitor |
	aVisitor := NlpNodeNounVisitor new.
	self accept: aVisitor.
	^ aVisitor nouns