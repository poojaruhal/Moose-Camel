printing
printOn: aStream
	aStream
		nextPutAll: 'Select all that are ';
		nextPutAll: self entityContext asString uncapitalized