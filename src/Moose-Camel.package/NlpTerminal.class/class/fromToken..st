instance creation
fromToken: aCoreToken
	<return: #NlpTerminal>
	| aNode |

	aNode := self labelled: aCoreToken label.
	aNode start: aCoreToken characterOffsetBegin asInteger + 1.
	aNode end: aCoreToken characterOffsetEnd asInteger.
	aNode word: aCoreToken word.
	aNode index: aCoreToken index asInteger.

	^ aNode