printing
printOn: aStream
	aStream
		nextPutAll: 'Annotated with ';
		nextPutAll: self annotationName asString