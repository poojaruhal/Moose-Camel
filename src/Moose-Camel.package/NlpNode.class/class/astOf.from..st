instance creation
astOf: aCollectionOfNodeTerminals from: aString
	| aStack aStream aTerminalStack aCompositionStack |
	"
	
	aString should be given in the following form:
	
(ROOT
  (SBARQ
    (WHNP (WP What))
    (SQ (VBP are)
      (NP (DT the))
      (VP (VBN deprecated)
        (NP (NN class))))))
	"
	
	aTerminalStack := aCollectionOfNodeTerminals as: Stack.
	aCompositionStack := Stack new.
	aStack := Stack new.

	aStream := aString readStream.
	[ aStream atEnd ] whileFalse: [
		aStream skipSeparators.
		
		( aStream next = $( )
			ifTrue: [
				| aLabel |
				aStream skipSeparators.
				aLabel := aStream upToAny: {
					Character cr.
					Character lf.
					$(.
					$).
					Character space
				}.
				aStack push: aLabel ].

		( aStream peek = $) )
			ifTrue: [
				| aLabel |

				aLabel := aStack pop.
				(aTerminalStack isNotEmpty and: [ aLabel = aTerminalStack top class label ])
					ifTrue: [
						| aNode |
						aNode := aTerminalStack pop.
						aCompositionStack push: aNode
					]
					ifFalse: [ 
						| aNonTerminalNode |
						aNonTerminalNode := self labelled: aLabel.
						aNonTerminalNode addAll: aCompositionStack.
						aCompositionStack removeAll.
						aCompositionStack push: aNonTerminalNode
					
					]
			].
	].
	aStream close.
	self halt