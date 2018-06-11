instance creation
buildTree:aParseTree from: aTerminalStack
	"create parse tree"

 ((aParseTree isNotNil and: aTerminalStack notEmpty) and: ((aParseTree at: 2) isArray))
		whileTrue: [
			
			" a recursive algorithim to construct multinode tree from a collection parseTree.
			untill depth reaches to terminal, call build tree function.Once reaches the depth, return to previous level and add other node. "
			 aParseTree
				do: [ :element :anArray |
					"write condition DFS traversal"
					(NlpNode labelled: element = aTerminalStack top class label)
						ifTrue: [ " ast addNode: (NlpNode labelled: element)" ]
						ifFalse:[].
						 ] ]