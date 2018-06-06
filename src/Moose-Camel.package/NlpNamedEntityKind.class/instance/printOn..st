executing
printOn: aStream
	aStream
		nextPutAll: 'Query (self ';
		nextPutAll: self name asString;
		nextPutAll: ')'