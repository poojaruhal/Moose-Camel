printing
printOn: aStream
	aStream
		nextPutAll: 'Navigate based on ';
		nextPutAll: self entityKind asString uncapitalized