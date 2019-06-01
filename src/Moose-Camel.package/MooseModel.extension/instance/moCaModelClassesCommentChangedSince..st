*Moose-Camel
moCaModelClassesCommentChangedSince: aModel
	^ (((((self allModelClasses asSet collect: #name)
		intersection: (aModel allModelClasses asSet collect: #name))
		select: [ :e | 
			| a b |
			a := aModel allModelClasses detect: [ :f | f name = e ].
			b := self allModelClasses detect: [ :f | f name = e ].
			a moCaComment ~= b moCaComment ])
		collect: [ :e | 
			| a b |
			a := aModel allModelClasses detect: [ :f | f name = e ].
			b := self allModelClasses detect: [ :f | f name = e ].
			(a moCaComment
				ifEmpty: [ #commentAdded ]
				ifNotEmpty: [ b moCaComment
						ifEmpty: [ #commentRemoved ]
						ifNotEmpty: [ #commentChanged ] ]) -> b ]) groupedBy: #key)
		collect: [ :e | 
			(((e collect: #value)
				groupedBy: [ :f | ('-' split: f parentPackage name) first ])
				associations sorted: [ :a :b | a value size > b value size ])
				asOrderedDictionary ]