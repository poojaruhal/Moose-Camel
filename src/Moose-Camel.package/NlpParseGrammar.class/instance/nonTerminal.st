accessing
nonTerminal
	^ $( asParser, name, (space, node) plus, $) asParser ==> [ :aToken |
		{ aToken second }, ((aToken third collect: [ :each |
			each isString
				ifTrue: [ each ]
				ifFalse: [ each select: #isNotEmpty ] ])
					in: [ :anArray | (anArray allSatisfy: [ :each | each isArray ])
						ifTrue: [  (anArray inject: #() into: [ :tmp :items | tmp, items ]) ]
						ifFalse: [ anArray ] ]) ]