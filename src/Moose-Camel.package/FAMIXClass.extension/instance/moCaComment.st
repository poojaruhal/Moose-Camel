*Moose-Camel
moCaComment
	^ self comments ifEmpty: '' ifNotEmpty: [ :f | f first content ]