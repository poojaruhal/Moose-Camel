private
astFrom: aJsonOutput
	| anAST |
	
	anAST := NlpNode
		ast: (self terminalsFrom: aJsonOutput)
		from: (self parseFrom: aJsonOutput).
		
	NlpDependency
		createDependencies: (self dependenciesFrom: aJsonOutput)
		from: anAST.
		
	^ anAST