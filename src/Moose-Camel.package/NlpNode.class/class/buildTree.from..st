instance creation
buildTree:parseTreeCollection from: aTerminalStack
	"create parse tree"
|node leafCollection index|
index :=2.
 ((parseTreeCollection isNotNil and: parseTreeCollection isCollection) and: aTerminalStack notEmpty)
		ifTrue: [
			node:=NlpNode labelled:(parseTreeCollection at: 1).
			parseTreeCollection do: [:each |
				 "check how to correctly access by index"
				leafCollection := self buildTree:( parseTreeCollection at: index) from: aTerminalStack.
				node addAll: leafCollection.
				index:= index+1].
			self halt.
			^node]
		ifFalse:[
			(NlpNode labelled: (parseTreeCollection at:1) = aTerminalStack top class label)
			ifTrue:[
				node:= NlpNode labelled: (parseTreeCollection at:1).
				aTerminalStack pop.
				node addAll: (parseTreeCollection at:2).
				^node. 
				]
			].
			
			
			" a recursive algorithim to construct multinode tree from a collection parseTree.
			untill depth reaches to terminal, call build tree function.Once reaches the depth, return to previous level and add other node. "